# Shared State Files

## Purpose of the State Layer
The state layer provides persistent, structured data storage for agent coordination, workflow tracking, and system memory. It enables multiple agents to work together seamlessly by maintaining shared context, tracking progress, and preserving important information across sessions.

## State vs Memory

### State Files
- **Transient Data**: Current day's tasks, weekly goals, recent messages
- **Agent Coordination**: Shared workspace for multiple agents
- **Workflow Tracking**: Progress monitoring and completion tracking
- **Append-Heavy**: Designed for frequent updates and additions

### Memory Files
- **Persistent Data**: User preferences, recurring patterns, long-term context
- **System Knowledge**: Core preferences and behavioral patterns
- **Configuration**: Settings that rarely change
- **Reference Data**: Information used across multiple sessions

## How Agents Read/Write Safely

### Read Operations
1. **Atomic Reads**: Agents read entire files to ensure consistency
2. **Version Checking**: Compare timestamps to detect changes
3. **Error Handling**: Graceful handling of missing or corrupted files
4. **Caching**: Temporary caching for frequently accessed data

### Write Operations
1. **Locking Mechanism**: Use file locks to prevent concurrent writes
2. **Atomic Updates**: Write to temp file, then rename for atomicity
3. **Timestamp Updates**: Always update timestamp on modifications
4. **Validation**: Validate data before writing to prevent corruption

### Safe Access Pattern
```bash
# Reading state safely
if [ -f ".claude/state/today-tasks.json" ]; then
    TASKS=$(cat .claude/state/today-tasks.json)
    # Process tasks
fi

# Writing state safely
temp_file=$(mktemp)
# Create updated content in temp file
mv "$temp_file" ".claude/state/today-tasks.json"
```

## State Schema Design Principles

### 1. Explicit Fields
- No ambiguous "data" or "blob" fields
- Clear, descriptive field names
- Consistent data types across files
- Self-documenting structure

### 2. Timestamped Updates
- Every update includes timestamp
- Agent attribution for changes
- Version tracking for recovery
- Change history for auditing

### 3. Agent Attribution
- Track which agent made changes
- Enable accountability and debugging
- Support agent-specific workflows
- Facilitate agent communication

### 4. Easy Reset and Inspection
- Simple JSON structure for manual editing
- Clear defaults for reset operations
- Human-readable format
- Consistent indentation and formatting

### 5. Append-Safe Where Possible
- New items added to arrays
- No destructive updates to existing data
- Historical data preserved
- Easy recovery from partial failures

## File-Specific Guidelines

### today-tasks.json
- **Daily Reset**: Clear and reinitialize each day
- **Priority Tracking**: Maintain task priorities throughout day
- **Agent Assignment**: Track which agent owns each task
- **Status Updates**: Update status as tasks progress

### this-week-goals.json
- **Weekly Reset**: Clear and reinitialize each week
- **Progress Tracking**: Update progress percentages regularly
- **Category Organization**: Group goals by type
- **Owner Assignment**: Track responsible agents

### completed-items.json
- **Archive Only**: Never delete completed items
- **Historical Data**: Maintain complete completion history
- **Outcome Tracking**: Record results and notes
- **Time Stamping**: Precise completion timestamps

### agent-messages.json
- **Communication Log**: Complete inter-agent communication history
- **Message Types**: Support different message categories
- **Status Tracking**: Track message delivery and resolution
- **Payload Structure**: Flexible payload for different message types

### context-memory.json
- **Persistent Storage**: Rarely changes, survives resets
- **User Preferences**: Core user settings and preferences
- **Pattern Recognition**: System-learned behavioral patterns
- **Context Preservation**: Important context across sessions

## When to Reset or Archive State

### Daily Resets
- **today-tasks.json**: Clear at end of each day
- **agent-messages.json**: Archive and clear daily
- **completed-items.json**: Archive weekly, clear daily

### Weekly Resets
- **this-week-goals.json**: Clear and reinitialize each week
- **context-memory.json**: Never reset (persistent)
- **agent-messages.json**: Archive and clear weekly

### Monthly Maintenance
- **Archive Old Data**: Move old completed items to long-term storage
- **Pattern Analysis**: Analyze recurring patterns for optimization
- **Preference Updates**: Review and update user preferences
- **System Cleanup**: Remove obsolete data structures

## Best Practices for Extending State Schemas

### 1. Backward Compatibility
- Never remove existing fields
- Add new fields with sensible defaults
- Maintain field order for readability
- Document breaking changes

### 2. Validation Rules
- Implement JSON schema validation
- Check required fields on load
- Validate data types and formats
- Handle missing or malformed data gracefully

### 3. Performance Considerations
- Keep files reasonably sized
- Consider pagination for large arrays
- Use efficient data structures
- Monitor file I/O performance

### 4. Error Recovery
- Implement file corruption detection
- Maintain backup copies
- Support manual recovery procedures
- Log state-related errors

### 5. Documentation
- Document each field's purpose
- Include example values
- Track schema evolution
- Maintain change logs

## State Security Considerations

### Data Protection
- No sensitive personal data in defaults
- Encrypt sensitive information in production
- Implement access controls for state files
- Regular security audits

### Integrity Protection
- Validate data before writing
- Implement checksums for critical files
- Monitor for unauthorized modifications
- Regular integrity checks

### Privacy Compliance
- Follow data protection regulations
- Implement data retention policies
- Support user data deletion requests
- Maintain audit trails

## Monitoring and Maintenance

### Health Checks
- Validate file existence and accessibility
- Check JSON syntax validity
- Monitor file sizes for anomalies
- Track update frequencies

### Performance Monitoring
- Measure read/write operation times
- Monitor concurrent access patterns
- Track file I/O bottlenecks
- Optimize frequently accessed files

### Backup Strategy
- Regular automated backups
- Version control for state files
- Off-site backup storage
- Recovery procedure testing

This state system provides a robust foundation for agent coordination, workflow tracking, and system memory management, enabling the Digital FTE to operate autonomously while maintaining data integrity and consistency across all operations.