# Event-Driven Hooks

## What Are Hooks?
Hooks are lightweight shell scripts that trigger workflows based on specific events or schedules. They serve as the bridge between external events (time-based triggers, system events) and the automated workflows that orchestrate the Digital FTE's operations.

## Difference Between Hooks and Workflows

### Hooks
- **Event Triggers**: Respond to specific events or schedules
- **Lightweight**: Minimal logic, just trigger workflows
- **External Interface**: Connect external systems to workflows
- **No Business Logic**: Pure orchestration, no decision-making
- **Shell Scripts**: Simple, executable scripts

### Workflows
- **Business Logic**: Contain the actual orchestration logic
- **Agent Coordination**: Manage multiple agents and skills
- **Complex Operations**: Handle multi-step processes
- **Decision Making**: Contain the actual automation logic
- **Markdown Files**: Structured documentation of processes

## Time-Based vs Event-Based Hooks

### Time-Based Hooks
- **Scheduled Execution**: Run at specific times/dates
- **Predictable**: Same time every day/week/month
- **Examples**:
  - `morning-briefing.sh` - Daily at 7:00 AM
  - `evening-summary.sh` - Daily at 6:00 PM
  - `weekly-review.sh` - Friday at 5:00 PM
- **Implementation**: Typically triggered by cron jobs or schedulers

### Event-Based Hooks
- **Reactive Execution**: Run when specific events occur
- **Unpredictable**: Triggered by external events
- **Examples**:
  - `on-email-received.sh` - Incoming email
  - `on-task-completed.sh` - Task completion
  - `auto-save-content.sh` - Content creation
- **Implementation**: Triggered by webhooks, MCP events, or system callbacks

## How Hooks Trigger Workflows Safely

### Hook Workflow Pattern
1. **Event Detection**: Hook detects trigger condition (time/event)
2. **Logging**: Hook logs the trigger event
3. **Workflow Invocation**: Hook triggers the appropriate workflow
4. **Status Checking**: Hook checks workflow execution status
5. **Error Handling**: Hook handles failures gracefully
6. **Exit Status**: Hook returns appropriate exit code

### Safety Mechanisms
- **Idempotency**: Hooks should be safe to run multiple times
- **Error Handling**: Graceful failure with proper logging
- **State Management**: Workflows handle state updates, not hooks
- **Minimal Logic**: Hooks contain only triggering logic
- **Validation**: Input validation before workflow invocation

## Hook Execution Flow

### Time-Based Hook Execution
```
Scheduler/Cron → Hook Script → Workflow Invocation → Agent Coordination → Task Completion
     ↓              ↓                ↓                 ↓                 ↓
 7:00 AM → morning-briefing.sh → morning-routine.md → Agents + Skills → Briefing Generated
```

### Event-Based Hook Execution
```
External Event → Hook Script → Workflow Invocation → Agent Coordination → State Update
     ↓              ↓                ↓                 ↓                 ↓
Email Received → on-email-received.sh → Email Processing → Content Creator → Response Drafted
```

## Hook Implementation Best Practices

### 1. Keep Hooks Minimal
- Only trigger workflows, no business logic
- Minimal error handling (just logging)
- Simple parameter validation
- Clear, readable code

### 2. Proper Logging
- Log trigger events with timestamps
- Log workflow invocation
- Log success/failure status
- Include relevant identifiers (email IDs, task IDs)

### 3. Error Handling
- Check workflow execution status
- Log failures with context
- Return appropriate exit codes
- Avoid cascading failures

### 4. Security Considerations
- No credentials in hook files
- Validate inputs before processing
- Use secure workflow invocation methods
- Monitor for unusual activity

### 5. Testing and Validation
- Test hooks in staging environment
- Validate workflow triggers work correctly
- Monitor hook execution logs
- Test error scenarios

## Hook Configuration Examples

### Cron Configuration for Time-Based Hooks
```cron
# Daily hooks
0 7 * * * /path/to/claude/hooks/morning-briefing.sh
0 18 * * * /path/to/claude/hooks/evening-summary.sh

# Weekly hook
0 17 * * 5 /path/to/claude/hooks/weekly-review.sh
```

### Event Configuration for Event-Based Hooks
```
# Gmail MCP webhook configuration
POST /webhooks/gmail-event
  → on-email-received.sh "$EMAIL_ID"

# Notion MCP webhook configuration
POST /webhooks/notion-task-complete
  → on-task-completed.sh "$TASK_ID"

# Content Creator callback
POST /webhooks/content-created
  → auto-save-content.sh "$CONTENT_TYPE" "$CONTENT_ID"
```

## Hook Development Guidelines

### File Naming
- Use descriptive names with hyphens
- Include trigger type in name when helpful
- Keep names under 30 characters
- Use lowercase only

### Script Structure
```bash
#!/bin/bash

# Header comment with purpose and trigger
# Trigger: [Time/Event] - [Frequency/Condition]
# Workflow: [Workflow file]
# Purpose: [Brief description]

# Log execution
echo "$(date): [Hook name] triggered"

# Validate inputs
if [ -z "$PARAM" ]; then
    echo "$(date): Missing required parameter"
    exit 1
fi

# Trigger workflow
claude run workflow [workflow-name] --param "$PARAM"

# Check status
if [ $? -eq 0 ]; then
    echo "$(date): [Hook name] completed successfully"
else
    echo "$(date): [Hook name] failed"
    exit 1
fi

exit 0
```

## Monitoring and Maintenance

### Hook Monitoring
- Monitor execution logs for failures
- Track workflow success rates
- Alert on repeated failures
- Monitor execution times

### Maintenance Tasks
- Regular log review
- Workflow updates validation
- Error pattern analysis
- Performance optimization

## Troubleshooting Common Issues

### Hook Not Executing
- Check cron/scheduler configuration
- Verify file permissions (executable)
- Check log files for errors
- Validate environment variables

### Workflow Not Triggered
- Verify workflow file exists
- Check workflow syntax
- Validate workflow parameters
- Monitor workflow logs

### Hook Execution Failures
- Check error logs for details
- Validate input parameters
- Test with sample data
- Review workflow dependencies

This hook system provides a robust, secure foundation for triggering automated workflows based on both scheduled events and real-time system events, enabling the Digital FTE to operate autonomously while maintaining proper control and monitoring.