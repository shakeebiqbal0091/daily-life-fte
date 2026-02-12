# Weekly Planning
## Purpose
Plan the upcoming week with priorities, goals, and scheduled tasks.
## Trigger
Sunday evenings at 7:00 PM (automated)
## Primary Agent
Personal Organizer Agent
## Supporting Agents
Content Creator Agent, Learning Assistant Agent, Finance Manager Agent
## Required Skills
Task Prioritizer, Weekly Reviewer, Learning Curator
## Required MCP Integrations
Google Calendar, Google Drive, Notion
## Preconditions
- Previous week's review completed
- User preferences loaded
- MCP servers connected and authenticated
## Step-by-Step Execution Flow
1. Review last week's goals and accomplishments (Weekly Reviewer skill)
2. Analyze time spent and productivity patterns (from daily logs)
3. Plan next week's priorities using Task Prioritizer skill
4. Schedule important tasks and meetings in Google Calendar (Google Calendar MCP)
5. Set weekly goals and objectives in Notion (Notion MCP)
6. Plan content calendar for the week (Content Creator Agent)
7. Schedule learning activities and resources (Learning Curator skill)
8. Review budget and financial goals for the week (Finance Manager Agent)
9. Generate weekly plan report and save to Google Drive
10. Send weekly plan to user via email and Slack
## Outputs
- Weekly plan document with priorities and goals
- Updated Google Calendar with scheduled events
- Notion goals and objectives updated
- Content calendar for the week
- Learning schedule created
- Financial budget review
## State Updates
- this-week-goals.json: updated with new goals
- weekly-plan.json: saved with detailed plan
- agent-messages.json: log of planning communications
- content-calendar.json: updated with weekly content
## Failure Handling
- If calendar scheduling fails: queue for manual scheduling
- If goal setting fails: use default templates
- If content planning fails: proceed with minimal content
- Send error notification if critical planning failures occur
## Success Criteria
- Weekly plan completed and saved by 8:00 PM
- All major priorities scheduled by 8:30 PM
- User receives plan before 9:00 PM
- All supporting agents updated with weekly context