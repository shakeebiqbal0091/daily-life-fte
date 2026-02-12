# Morning Routine
## Purpose
Prepare the user for the day with a comprehensive morning briefing including weather, schedule, priorities, and news.
## Trigger
Daily at 7:00 AM (via morning-briefing.sh hook)
## Primary Agent
Personal Organizer Agent
## Supporting Agents
Content Creator Agent, Health Coach Agent
## Required Skills
Task Prioritizer, News Aggregator, Email Manager
## Required MCP Integrations
Weather API, Google Calendar, Gmail, News API
## Preconditions
- User preferences loaded from state/today-tasks.json
- MCP servers connected and authenticated
## Step-by-Step Execution Flow
1. Fetch current weather and forecast (Weather API MCP)
2. Review today's calendar events (Google Calendar MCP)
3. Identify top 3 priority tasks using Task Prioritizer skill
4. Check for important emails requiring attention (Gmail MCP)
5. Aggregate relevant industry news (News Aggregator skill + News API MCP)
6. Compile health metrics from previous day (Health Coach Agent)
7. Generate morning briefing combining all elements
8. Send briefing to user via Slack and email
## Outputs
- Morning briefing message (text format)
- Updated today-tasks.json with priorities
- Weather data cached for day
## State Updates
- today-tasks.json: updated with top 3 priorities
- daily-metrics.json: updated with weather and health data
## Failure Handling
- If weather API fails: use cached weather or skip
- If calendar fails: proceed with available information
- If news aggregator fails: include generic news sources
- Send error notification to user if critical failures occur
## Success Criteria
- Briefing generated and delivered within 5 minutes
- All 5 data sources successfully integrated
- User receives briefing before 7:30 AM
- Priority tasks clearly identified and actionable