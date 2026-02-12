# Weekly Review
## Purpose
Review the week's accomplishments, capture learnings, and generate a comprehensive report.
## Trigger
Friday evenings at 5:00 PM (via weekly-review.sh hook)
## Primary Agent
Weekly Reviewer skill + Personal Organizer Agent
## Supporting Agents
Content Creator Agent, Finance Manager Agent
## Required Skills
Weekly Reviewer, Task Prioritizer, Finance Monitor
## Required MCP Integrations
Google Drive, Notion, Gmail
## Preconditions
- Week has ended (Friday evening)
- All daily workflows completed for the week
- User preferences loaded
## Step-by-Step Execution Flow
1. Compile week's accomplishments from completed tasks (Weekly Reviewer skill)
2. Review goals vs. actuals from this-week-goals.json
3. Identify key learnings and insights from the week
4. Analyze productivity patterns and time usage
5. Celebrate wins and milestones achieved
6. Prepare insights and recommendations for next week
7. Review weekly expenses and budget performance (Finance Monitor skill)
8. Generate comprehensive weekly review report
9. Save report to Google Drive with proper naming convention
10. Send review to user via email with key highlights
11. Archive week's data and prepare for next week
## Outputs
- Weekly review report document
- Accomplishments summary
- Learnings and insights
- Productivity analysis
- Budget performance review
- Next week's recommendations
## State Updates
- weekly-review.json: saved with detailed review
- this-week-goals.json: archived and reset
- completed-items.json: archived for the week
- weekly-metrics.json: updated with performance data
- agent-messages.json: log of review communications
## Failure Handling
- If report generation fails: create basic summary
- If data archiving fails: retry with exponential backoff
- If budget analysis fails: flag for manual review
- Send error notification if critical review failures occur
## Success Criteria
- Weekly review completed by 6:00 PM
- Report generated and saved by 6:30 PM
- User receives review before 7:00 PM
- All data properly archived for the week
- Next week's context prepared