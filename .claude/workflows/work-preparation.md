# Work Preparation
## Purpose
Prepare communication, meetings, and content for the workday to ensure smooth operations.
## Trigger
Weekdays at 8:30 AM (automated)
## Primary Agent
Content Creator Agent
## Supporting Agents
Personal Organizer Agent, Learning Assistant Agent
## Required Skills
Email Manager, Content Creator, Meeting Scheduler
## Required MCP Integrations
Google Drive, Google Calendar, Gmail, Notion
## Preconditions
- Morning briefing completed successfully
- User is available for work (weekday)
- Content calendar exists in Google Drive
## Step-by-Step Execution Flow
1. Review scheduled social media posts for today (Content Creator Agent)
2. Check for pending email drafts requiring finalization (Email Manager skill)
3. Prepare meeting agendas for today's scheduled meetings (Meeting Scheduler skill)
4. Update content calendar with any new items from yesterday (Google Drive MCP)
5. Check learning progress and suggest quick review materials (Learning Assistant Agent)
6. Prepare any documents needed for today's meetings (Google Drive MCP)
7. Send out any pending communications (Email Manager skill)
8. Update Notion with today's work priorities (Notion MCP)
## Outputs
- Prepared social media posts queued for publishing
- Finalized email drafts ready to send
- Meeting agendas created and shared
- Updated content calendar
- Learning materials suggested
## State Updates
- today-tasks.json: updated with work preparation status
- agent-messages.json: log of communications prepared
- content-calendar.json: updated with today's content
## Failure Handling
- If social media API fails: queue posts for manual publishing
- If email drafts incomplete: notify user to review
- If meeting materials missing: flag for urgent attention
- If learning materials unavailable: suggest alternative resources
## Success Criteria
- All scheduled content prepared by 9:00 AM
- All pending emails ready for review by 9:30 AM
- Meeting agendas prepared 30 minutes before meetings
- User notified of any preparation issues by 8:45 AM