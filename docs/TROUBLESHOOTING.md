# Troubleshooting

This document provides comprehensive troubleshooting guidance for the Daily Life Productivity Digital FTE system. It covers common failure scenarios, recovery procedures, and operational reliability best practices.

## Table of Contents

1. [Common Failure Scenarios](#common-failure-scenarios)
2. [MCP Connection Issues](#mcp-connection-issues)
3. [Workflow Failures](#workflow-failures)
4. [State Corruption Recovery](#state-corruption-recovery)
5. [Performance Degradation](#performance-degradation)
6. [Safe Restart and Recovery](#safe-restart-and-recovery)
7. [Monitoring and Alerting](#monitoring-and-alerting)
8. [Preventive Maintenance](#preventive-maintenance)

---

## Common Failure Scenarios

### 1. MCP Server Unavailability
**Symptoms**:
- Skills fail to execute
- Workflows hang or timeout
- Error messages about external service connections

**Causes**:
- Network connectivity issues
- API rate limits exceeded
- Service outages or maintenance
- Authentication token expiration

**Resolution Steps**:
1. Check network connectivity to external services
2. Verify API rate limits and usage
3. Check service status pages for outages
4. Refresh authentication tokens
5. Review error logs for specific error codes

### 2. Agent Coordination Failures
**Symptoms**:
- Tasks not being assigned correctly
- Multiple agents working on same task
- Agent communication breakdowns

**Causes**:
- State file corruption
- Agent configuration conflicts
- Race conditions in task assignment
- Memory leaks or resource exhaustion

**Resolution Steps**:
1. Check state file integrity
2. Restart affected agents
3. Clear agent message queues
4. Verify agent configuration files
5. Monitor resource usage and restart if needed

### 3. Workflow Execution Failures
**Symptoms**:
- Scheduled workflows not running
- Workflows failing mid-execution
- Inconsistent workflow results

**Causes**:
- Cron job configuration issues
- Missing dependencies or resources
- External service failures
- Logic errors in workflow scripts

**Resolution Steps**:
1. Verify cron job configuration
2. Check workflow script dependencies
3. Review workflow execution logs
4. Test individual workflow components
5. Restore from backup if needed

---

## MCP Connection Issues

### Gmail MCP Issues
**Problem**: Unable to access Gmail
**Solutions**:
- Check OAuth token validity
- Verify Gmail API permissions
- Test network connectivity to Gmail services
- Review Gmail API quota usage

**Problem**: Gmail rate limits exceeded
**Solutions**:
- Implement request caching
- Reduce frequency of Gmail operations
- Use Gmail API batch operations
- Request quota increase if needed

### Google Drive MCP Issues
**Problem**: File access denied
**Solutions**:
- Verify file permissions
- Check sharing settings
- Confirm user authentication
- Review Drive API quota

**Problem**: File not found
**Solutions**:
- Verify file path and existence
- Check for file name changes
- Review recent file operations
- Restore from backup if needed

### Notion MCP Issues
**Problem**: Notion API rate limits
**Solutions**:
- Implement request throttling
- Use Notion API batch operations
- Cache frequently accessed data
- Review Notion API usage patterns

**Problem**: Notion workspace access denied
**Solutions**:
- Verify Notion token validity
- Check workspace permissions
- Confirm user authentication
- Review Notion API scopes

---

## Workflow Failures

### Morning Routine Failures
**Problem**: Morning briefing not generated
**Solutions**:
- Check weather API connectivity
- Verify calendar access
- Review task prioritizer execution
- Test email and news API connections

**Problem**: Incomplete morning briefing
**Solutions**:
- Identify failed components
- Implement partial data handling
- Add fallback mechanisms
- Review error handling logic

### Weekly Review Failures
**Problem**: Weekly report not generated
**Solutions**:
- Check data aggregation logic
- Verify goal tracking data
- Review performance metrics calculation
- Test report generation components

**Problem**: Incorrect weekly metrics
**Solutions**:
- Validate data sources
- Check calculation logic
- Review data aggregation
- Implement data validation

---

## State Corruption Recovery

### State File Corruption
**Problem**: State files corrupted or inaccessible
**Solutions**:
1. **Immediate Recovery**:
   - Restore from last known good backup
   - Use default state file templates
   - Clear corrupted state and restart

2. **Prevention**:
   - Implement regular state backups
   - Add state file validation
   - Use atomic file operations
   - Monitor state file integrity

### Agent Message Queue Issues
**Problem**: Agent message queue overflow
**Solutions**:
1. **Immediate Recovery**:
   - Clear message queue
   - Restart affected agents
   - Review message processing logic

2. **Prevention**:
   - Implement message queue limits
   - Add message processing timeouts
   - Monitor queue sizes
   - Use persistent message storage

### Task List Corruption
**Problem**: Task list inconsistencies
**Solutions**:
1. **Immediate Recovery**:
   - Restore from backup
   - Rebuild task list from logs
   - Clear and recreate task list

2. **Prevention**:
   - Implement task list validation
   - Add transaction support
   - Use consistent data structures
   - Regular integrity checks

---

## Performance Degradation

### Slow Response Times
**Problem**: System responses are slow
**Solutions**:
1. **Diagnosis**:
   - Monitor system resource usage
   - Check MCP server response times
   - Review workflow execution times
   - Analyze skill execution performance

2. **Optimization**:
   - Implement caching strategies
   - Optimize database queries
   - Reduce external API calls
   - Parallelize independent operations

### High Resource Usage
**Problem**: Excessive CPU, memory, or disk usage
**Solutions**:
1. **Diagnosis**:
   - Monitor system metrics
   - Identify resource-intensive operations
   - Check for memory leaks
   - Review disk I/O patterns

2. **Optimization**:
   - Optimize algorithms and data structures
   - Implement resource pooling
   - Add resource usage limits
   - Use efficient data formats

### Network Bottlenecks
**Problem**: Network-related performance issues
**Solutions**:
1. **Diagnosis**:
   - Monitor network traffic
   - Check connection pool usage
   - Review API response times
   - Analyze data transfer patterns

2. **Optimization**:
   - Implement connection pooling
   - Use efficient data serialization
   - Add request batching
   - Optimize data transfer sizes

---

## Safe Restart and Recovery

### System Restart Procedures
**Normal Restart**:
```bash
# Stop all agents gracefully
pkill -f claude-agent

# Clear temporary files
rm -rf /tmp/claude-*

# Restart agents
claude-agent start --all
```

**Emergency Restart**:
```bash
# Force stop all processes
pkill -9 -f claude-agent

# Clear all state files
rm -rf .claude/state/*.json

# Restart with clean state
claude-agent start --all --clean
```

### Recovery from Critical Failures
**Agent Failure Recovery**:
1. Identify failed agent
2. Check agent logs for errors
3. Restart agent with debug mode
4. Monitor recovery process
5. Verify functionality after restart

**MCP Integration Recovery**:
1. Check MCP server status
2. Verify authentication credentials
3. Test individual MCP operations
4. Restart MCP connections
5. Monitor for recurring issues

**State Recovery**:
1. Identify corrupted state files
2. Restore from backup
3. Validate restored state
4. Test system functionality
5. Implement preventive measures

---

## Monitoring and Alerting

### Key Metrics to Monitor
- **System Uptime**: Overall system availability
- **Agent Health**: Agent process status and performance
- **MCP Response Times**: External service performance
- **Error Rates**: Failure frequency and types
- **Resource Usage**: CPU, memory, disk, network
- **Task Completion**: Workflow and task success rates

### Alert Thresholds
- **Critical**: System downtime, agent failures
- **Warning**: Performance degradation, high error rates
- **Info**: Normal operations, maintenance activities

### Alerting Channels
- **Email**: Critical system alerts
- **Slack**: Operational notifications
- **Dashboard**: Real-time monitoring
- **Log Files**: Detailed troubleshooting information

---

## Preventive Maintenance

### Regular Maintenance Tasks
- **Daily**: Log rotation, temporary file cleanup
- **Weekly**: System updates, security patches
- **Monthly**: Performance tuning, capacity planning
- **Quarterly**: Security audits, compliance checks

### Backup Strategies
- **Daily Backups**: State files and configurations
- **Weekly Backups**: Complete system snapshots
- **Monthly Backups**: Off-site storage and archival
- **Automated Testing**: Backup restoration validation

### Security Updates
- **Patch Management**: Regular security updates
- **Vulnerability Scanning**: Regular security assessments
- **Access Reviews**: Periodic permission audits
- **Compliance Checks**: Regulatory compliance verification

---

## Troubleshooting Tools

### Diagnostic Commands
```bash
# Check system status
claude-agent status

# Monitor resource usage
top -p $(pgrep -d ',' -f claude-agent)

# Check MCP connections
claude-mcp status

# Review logs
tail -f .claude/logs/*.log
```

### Log Analysis
```bash
# Search for errors
grep "ERROR" .claude/logs/*.log

# Monitor agent activity
grep "agent" .claude/logs/*.log

# Check workflow execution
tail -f .claude/logs/workflow.log
```

### Performance Monitoring
```bash
# System resource usage
htop

# Network monitoring
iftop

# Disk usage
df -h

# Memory usage
free -h
```

---

## Emergency Contact Information

### Support Contacts
- **System Administrator**: admin@example.com
- **MCP Provider Support**: support@mcp.example.com
- **Security Team**: security@example.com
- **Development Team**: dev@example.com

### Documentation References
- [Architecture Documentation](./ARCHITECTURE.md)
- [MCP Integrations](./MCP-INTEGRATIONS.md)
- [Workflow Documentation](./WORKFLOWS.md)
- [Skills Reference](./SKILLS-REFERENCE.md)

---

## Post-Incident Review

### Incident Documentation
1. **Timeline**: Document incident timeline
2. **Impact**: Assess business and operational impact
3. **Root Cause**: Identify underlying causes
4. **Resolution**: Document steps taken to resolve
5. **Lessons Learned**: Identify improvements and preventive measures

### Improvement Actions
- Update documentation based on incidents
- Improve monitoring and alerting
- Enhance error handling and recovery
- Implement preventive measures

---

## Best Practices

### Operational Excellence
- Regular system monitoring and maintenance
- Comprehensive logging and monitoring
- Regular backup and recovery testing
- Continuous performance optimization

### Security Best Practices
- Regular security updates and patches
- Principle of least privilege
- Comprehensive audit logging
- Regular security assessments

### Reliability Engineering
- Design for failure and recovery
- Implement comprehensive error handling
- Use circuit breakers and fallbacks
- Regular load testing and capacity planning

---

**Troubleshooting Version**: 1.0
**Last Updated**: 2026-02-12
**Maintenance Schedule**: Weekly review and updates