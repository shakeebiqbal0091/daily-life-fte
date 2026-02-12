# Lunch Break Check
## Purpose
Health and activity check-in during lunch break with reminders and suggestions.
## Trigger
Daily at 12:30 PM (automated)
## Primary Agent
Health Coach Agent
## Supporting Agents
Personal Organizer Agent
## Required Skills
Health Tracker, Recipe Finder, Habit Tracker
## Required MCP Integrations
None (uses local state and optional recipe APIs)
## Preconditions
- User has started workday (morning routine completed)
- Health tracking enabled in user preferences
- Recipe database accessible
## Step-by-Step Execution Flow
1. Log morning activities and movement (Health Tracker skill)
2. Remind user about hydration status (Habit Tracker skill)
3. Suggest healthy lunch options based on preferences (Recipe Finder skill)
4. Check step count and movement goals (Health Tracker skill)
5. Review afternoon schedule and suggest timing for lunch (Personal Organizer Agent)
6. Provide quick wellness tip or stretch suggestion
7. Update health metrics for the day
8. Send lunch break summary and reminders
## Outputs
- Lunch suggestion with recipe links
- Hydration reminder
- Movement check
- Wellness tip
- Updated health metrics
## State Updates
- today-tasks.json: updated with lunch break completion
- health-logs/: updated with morning activity data
- daily-metrics.json: updated with hydration and movement data
## Failure Handling
- If recipe database unavailable: suggest simple alternatives
- If health data missing: use default recommendations
- If user preferences not found: use general wellness guidelines
- Send notification if critical health data missing
## Success Criteria
- Lunch suggestion provided within 2 minutes
- Hydration reminder sent before 1:00 PM
- Movement check completed
- User receives all recommendations before lunch break ends