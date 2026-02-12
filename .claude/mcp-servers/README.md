# MCP Server Configuration Files

## What Are MCP Servers?
MCP (Model Context Protocol) servers are external integrations that provide specific capabilities to agents and skills. They act as connectors to third-party services, allowing the Digital FTE to access real-time data and perform actions across different platforms.

## Difference Between MCP Servers and Skills

### MCP Servers
- **External Integrations**: Connect to third-party APIs and services
- **Passive Connectors**: Provide data and capabilities but no logic
- **Authentication Required**: Need API keys or OAuth tokens
- **Rate Limited**: Subject to provider API limits
- **Single Purpose**: Each server focuses on one external service

### Skills
- **Internal Logic**: Contain the actual business logic and decision-making
- **Persona-driven**: Each skill has a specific persona and principles
- **Autonomous**: Can operate independently using MCP servers
- **Multi-purpose**: Skills can use multiple MCP servers
- **Reusable**: Can be called by different agents

## How Authentication Is Handled Securely

### Security Principles
1. **No Credentials in Repository**: All authentication placeholders only
2. **User-Level Configuration**: Credentials stored in ~/.claude/config.json
3. **Least Privilege Access**: Minimal permissions required per server
4. **Environment Isolation**: Development vs production credentials separated
5. **Regular Rotation**: API keys should be rotated periodically

### Authentication Types
- **OAuth2**: For services requiring user consent (Gmail, Google Calendar)
- **API Keys**: For direct API access (Notion, Brave Search, Weather)
- **Bot Tokens**: For service-to-service communication (Slack)

## How Skills Consume MCP Capabilities

### Skill-MCP Interaction Pattern
1. **Capability Declaration**: Skills declare required MCP capabilities
2. **Server Connection**: MCP servers establish connections using credentials
3. **Data Request**: Skills make requests through MCP servers
4. **Response Handling**: Skills process responses and apply logic
5. **Error Management**: Skills handle errors using server-defined patterns

### Example Flow
```
Skill: Email Manager
├── Needs: list_emails, read_email, draft_email
└── Uses: gmail MCP server
    ├── Connects using OAuth2 credentials
    ├── Requests email list
    ├── Filters important emails
    └── Drafts responses using Email Manager logic
```

## Best Practices for Adding New Integrations

### 1. Security First
- Never commit real credentials
- Use environment variables for sensitive data
- Implement proper error handling for authentication failures
- Document permission scopes clearly

### 2. Rate Limit Awareness
- Respect provider rate limits
- Implement exponential backoff for retries
- Cache data when appropriate
- Monitor usage patterns

### 3. Error Handling
- Define clear error handling strategies
- Implement retry logic with appropriate delays
- Provide meaningful error messages
- Handle network failures gracefully

### 4. Data Privacy
- Only request necessary data
- Implement data retention policies
- Secure data transmission (HTTPS)
- Comply with relevant regulations (GDPR, etc.)

### 5. Testing Strategy
- Test with sandbox/development credentials
- Implement proper logging for debugging
- Validate data formats and structures
- Monitor performance and reliability

## MCP Server Categories

### Communication Servers
- **gmail.json**: Email management
- **slack.json**: Notifications and messaging

### Storage Servers
- **google-drive.json**: File storage and management
- **notion.json**: Knowledge base and task tracking

### Calendar & Scheduling
- **google-calendar.json**: Event management

### Research & Information
- **brave-search.json**: Web search and fact-checking
- **news-api.json**: News aggregation
- **weather.json**: Weather data

## Integration Dependencies

### Agent-MCP Relationships
- **Content Creator Agent**: Uses gmail, google-drive, slack
- **Learning Assistant Agent**: Uses google-drive, notion, brave-search
- **Health Coach Agent**: Uses weather, google-drive
- **Finance Manager Agent**: Uses google-drive, slack
- **Personal Organizer Agent**: Uses google-calendar, notion, slack

### Skill-MCP Relationships
- **Email Manager**: gmail, slack
- **Content Creator**: google-drive, slack
- **Meeting Scheduler**: google-calendar, slack
- **Task Prioritizer**: notion, google-calendar
- **Learning Curator**: brave-search, notion
- **Note Organizer**: notion, google-drive
- **Health Tracker**: weather, google-drive
- **Finance Monitor**: google-drive, slack
- **News Aggregator**: news-api, brave-search
- **Research Assistant**: brave-search, news-api
- **Travel Planner**: weather, google-drive
- **Gift Recommender**: google-drive, slack
- **Recipe Finder**: google-drive, slack
- **Habit Tracker**: google-drive, slack
- **Weekly Reviewer**: google-drive, notion, slack

## Configuration Management

### File Organization
- All MCP configurations in `.claude/mcp-servers/`
- Each server has its own JSON file
- Configuration follows standardized structure
- README.md documents system architecture

### Environment Variables
Credentials should be stored in environment variables:
- `CLAUDE_GMAIL_CREDENTIALS`
- `CLAUDE_DRIVE_CREDENTIALS`
- `CLAUDE_CALENDAR_CREDENTIALS`
- `CLAUDE_NOTION_TOKEN`
- `CLAUDE_SLACK_BOT_TOKEN`
- `CLAUDE_BRAVE_SEARCH_KEY`
- `CLAUDE_WEATHER_API_KEY`
- `CLAUDE_NEWS_API_KEY`

## Monitoring and Maintenance

### Health Checks
- Validate MCP server connectivity
- Monitor authentication token validity
- Track API usage against rate limits
- Log errors and performance metrics

### Update Procedures
- Test new API versions in staging
- Update authentication methods as needed
- Monitor for deprecation warnings
- Maintain backward compatibility

## Compliance and Governance

### Data Protection
- Implement data encryption where required
- Maintain audit logs for sensitive operations
- Ensure compliance with data protection regulations
- Regular security assessments

### Access Control
- Principle of least privilege
- Regular access reviews
- Secure credential storage
- Multi-factor authentication where available

This MCP server configuration system provides a secure, scalable foundation for the Digital FTE to integrate with external services while maintaining proper security and operational standards.