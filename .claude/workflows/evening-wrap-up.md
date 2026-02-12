# Evening Wrap-Up
## Purpose
Close out the workday, update task status, prepare for tomorrow, and archive outputs.
## Trigger
Daily at 6:00 PM (via evening-summary.sh hook)
## Primary Agent
Personal Organizer Agent
## Supporting Agents
Content Creator Agent, Finance Manager Agent
## Required Skills
Task Prioritizer, Weekly Reviewer, Finance Monitor
## Required MCP Integrations
Notion, Google Drive, Gmail
## Preconditions
- Workday has ended (after 6:00 PM)
- Morning routine completed today
- Work preparation completed
## Step-by-Step Execution Flow
1. Review completed tasks and mark as done in Notion (Notion MCP)
2. Update task status in today-tasks.json with completion rates
3. Prepare tomorrow's priority list using Task Prioritizer skill
4. Archive today's work outputs to Google Drive (Google Drive MCP)
5. Review any pending emails and draft responses (Email Manager skill)
6. Check daily expenses and categorize (Finance Monitor skill)
7. Generate end-of-day summary with accomplishments and pending items
8. Send summary to user via Slack and email
## Outputs
- End-of-day summary report
- Tomorrow's priority list
- Archived work documents
- Updated task completion status
- Expense tracking update
## State Updates
- today-tasks.json: updated with completion status
- this-week-goals.json: updated with progress
- completed-items.json: archived today's completed tasks
- daily-metrics.json: updated with expense data
- agent-messages.json: log of end-of-day communications
## Failure Handling
- If Notion connection fails: cache updates and retry later
- If Google Drive archiving fails: retry with exponential backoff
- If expense tracking fails: flag for manual review
- Send error notification if critical failures occur
## Success Criteria
- All tasks updated within 10 minutes
- Tomorrow's priorities clearly defined
- Work archived before 7:00 PM
- User receives summary before 7:30 PM
- Expense tracking completed