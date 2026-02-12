# Monthly Reflection
## Purpose
High-level reflection on the month, trend analysis, and strategic adjustments.
## Trigger
Last day of each month at 8:00 PM (automated)
## Primary Agent
Personal Organizer Agent
## Supporting Agents
Weekly Reviewer skill, Finance Manager Agent, Learning Assistant Agent
## Required Skills
Weekly Reviewer, Finance Monitor, Learning Curator
## Required MCP Integrations
Google Drive, Notion, Gmail
## Preconditions
- Month has ended
- All weekly reviews completed for the month
- User preferences loaded
- MCP servers connected and authenticated
## Step-by-Step Execution Flow
1. Aggregate all weekly reviews from the month
2. Analyze monthly trends in productivity and time usage
3. Review financial performance and budget trends (Finance Monitor skill)
4. Assess learning progress and knowledge acquisition
5. Identify patterns and recurring themes across the month
6. Evaluate goal achievement rates and completion percentages
7. Analyze habit formation and consistency patterns
8. Review content creation output and engagement metrics
9. Generate strategic insights and recommendations
10. Create monthly reflection document with comprehensive analysis
11. Save to Google Drive with proper naming convention
12. Send reflection summary to user with key insights
13. Update long-term strategic planning documents
## Outputs
- Monthly reflection document with comprehensive analysis
- Trend analysis charts and graphs
- Financial performance summary
- Learning progress assessment
- Productivity patterns analysis
- Strategic recommendations
- Goal achievement statistics
## State Updates
- monthly-reflection.json: saved with detailed analysis
- monthly-metrics.json: updated with performance data
- long-term-goals.json: updated with strategic adjustments
- agent-messages.json: log of reflection communications
- archived-data/: monthly data archived
## Failure Handling
- If trend analysis fails: use basic statistical summaries
- If financial analysis fails: flag for manual review
- If data aggregation fails: retry with partial data
- Send error notification if critical reflection failures occur
## Success Criteria
- Monthly reflection completed by 9:00 PM
- Comprehensive analysis saved by 9:30 PM
- User receives summary before 10:00 PM
- All monthly data properly archived
- Strategic adjustments documented