# Daily Life Productivity Digital FTE

## Project Overview

This project builds a **Daily Life Productivity Digital FTE** - an autonomous AI-powered assistant that handles your everyday tasks across work, learning, health, finance, and personal organization. This Digital FTE operates as your personal chief of staff, managing routine workflows so you can focus on high-value activities.

**Primary Objective:** Create an AI agent that autonomously manages daily life tasks with 85%+ independence, saving 10-15 hours weekly while maintaining high quality and consistency.

**Target User:** Professional preparing for international opportunities (Saudi Arabia focus), needing efficient daily operations, strong personal brand, continuous learning habits, and well-organized life management.

**Why This Matters:**
- Demonstrates advanced AI engineering and automation skills
- Provides measurable productivity gains (10-15 hours saved weekly)
- Creates portfolio evidence of autonomous system development
- Builds foundation for scalable personal AI workforce
- Showcases skills highly valued in GCC/Saudi Arabia job market

## Technology Stack

### Core Platform
- **Claude Code**: Agentic AI development environment with terminal interface
- **Claude Agent SDK**: Underlying agent orchestration framework
- **Model**: claude-sonnet-4-5-20250929

### Key Components
- **Skills System**: 15+ modular, reusable daily life capabilities
- **Subagent Orchestration**: 5 specialized agents (Content Creator, Learning Assistant, Health Coach, Finance Manager, Personal Organizer)
- **MCP (Model Context Protocol)**: Connections to Gmail, Google Drive, Calendar, Notion, Slack, Web Search
- **Event-Driven Hooks**: Daily morning briefing, weekly review, auto-save, notifications
- **Settings Hierarchy**: User preferences, project config, runtime overrides

### External Integrations (MCP Servers)
- **Gmail**: Email management, drafting, sending, organizing
- **Google Drive**: Document storage, content calendars, reports
- **Google Calendar**: Schedule management, meeting coordination
- **Notion**: Knowledge base, task management, notes organization
- **Slack**: Team communication, notifications
- **Brave Search**: Web research, trend monitoring, fact-checking
- **Weather API**: Daily weather for planning
- **News API**: Industry news aggregation

## Directory Structure

```
daily-life-fte/
├── CLAUDE.md                    # This file - persistent context
├── AGENTS.md                    # Universal AI agent instructions
├── README.md                    # Project documentation
│
├── .claude/                     # Claude Code configuration
│   ├── config.json             # Main configuration
│   │
│   ├── skills/                 # 15+ daily life skills
│   │   ├── email-manager/
│   │   │   └── SKILL.md       # Draft, organize, send emails
│   │   ├── content-creator/
│   │   │   └── SKILL.md       # Social media posts (LinkedIn, Twitter)
│   │   ├── meeting-scheduler/
│   │   │   └── SKILL.md       # Coordinate meetings, send invites
│   │   ├── task-prioritizer/
│   │   │   └── SKILL.md       # Prioritize daily tasks
│   │   ├── learning-curator/
│   │   │   └── SKILL.md       # Find learning resources
│   │   ├── note-organizer/
│   │   │   └── SKILL.md       # Structure and organize notes
│   │   ├── health-tracker/
│   │   │   └── SKILL.md       # Track workouts, meals, sleep
│   │   ├── finance-monitor/
│   │   │   └── SKILL.md       # Track expenses, budget alerts
│   │   ├── news-aggregator/
│   │   │   └── SKILL.md       # Compile industry news
│   │   ├── research-assistant/
│   │   │   └── SKILL.md       # Deep research on topics
│   │   ├── travel-planner/
│   │   │   └── SKILL.md       # Plan trips, itineraries
│   │   ├── gift-recommender/
│   │   │   └── SKILL.md       # Gift ideas for occasions
│   │   ├── recipe-finder/
│   │   │   └── SKILL.md       # Meal planning, recipes
│   │   ├── habit-tracker/
│   │   │   └── SKILL.md       # Monitor daily habits
│   │   └── weekly-reviewer/
│   │       └── SKILL.md       # Weekly reflection and planning
│   │
│   ├── subagents/              # 5 specialized agents
│   │   ├── content-creator-agent.md    # Social media, emails, documents
│   │   ├── learning-assistant-agent.md # Courses, notes, research
│   │   ├── health-coach-agent.md       # Fitness, nutrition, wellness
│   │   ├── finance-manager-agent.md    # Budget, expenses, investments
│   │   ├── personal-organizer-agent.md # Tasks, calendar, planning
│   │   └── README.md
│   │
│   ├── workflows/              # Daily/weekly workflows
│   │   ├── morning-routine.md          # 6-8 AM daily
│   │   ├── work-preparation.md         # Pre-work setup
│   │   ├── lunch-break-check.md        # Midday review
│   │   ├── evening-wrap-up.md          # End of day
│   │   ├── weekly-planning.md          # Sunday evening
│   │   ├── weekly-review.md            # Friday evening
│   │   ├── monthly-reflection.md       # Last day of month
│   │   └── README.md
│   │
│   ├── mcp-servers/            # External integrations
│   │   ├── gmail.json                  # Email access
│   │   ├── google-drive.json           # Document storage
│   │   ├── google-calendar.json        # Schedule management
│   │   ├── notion.json                 # Knowledge base
│   │   ├── slack.json                  # Team communication
│   │   ├── brave-search.json           # Web research
│   │   ├── weather.json                # Weather data
│   │   ├── news-api.json               # News aggregation
│   │   └── README.md
│   │
│   ├── hooks/                  # Event-driven automation
│   │   ├── morning-briefing.sh         # 7 AM daily
│   │   ├── evening-summary.sh          # 6 PM daily
│   │   ├── weekly-review.sh            # Friday 5 PM
│   │   ├── on-email-received.sh        # Email triggers
│   │   ├── on-task-completed.sh        # Task completion
│   │   ├── auto-save-content.sh        # After content creation
│   │   └── README.md
│   │
│   ├── state/                  # Agent coordination
│   │   ├── today-tasks.json
│   │   ├── this-week-goals.json
│   │   ├── completed-items.json
│   │   ├── agent-messages.json
│   │   └── context-memory.json
│   │
│   └── monitoring/             # Performance tracking
│       ├── daily-metrics.json
│       ├── skill-usage.json
│       ├── time-saved.json
│       └── quality-scores.json
│
├── docs/
│   ├── ARCHITECTURE.md
│   ├── SKILLS-REFERENCE.md
│   ├── WORKFLOWS.md
│   ├── MCP-INTEGRATIONS.md
│   └── TROUBLESHOOTING.md
│
├── content/                    # Generated content
│   ├── social-media/
│   ├── emails/
│   └── reports/
│
├── data/                       # Personal data (git-ignored)
│   ├── health-logs/
│   ├── finance-tracking/
│   └── learning-progress/
│
└── examples/                   # Portfolio examples
    └── [output samples]
```

## Core Skills (15 Daily Life Capabilities)

### 1. Email Manager
**Purpose**: Draft, organize, prioritize, and send emails efficiently
**Persona**: Executive assistant with 10+ years email management experience
**Key Capabilities**:
- Draft professional emails for any situation
- Organize inbox with smart folders
- Prioritize emails by urgency and importance
- Schedule email sending
- Auto-respond to routine inquiries

### 2. Content Creator
**Purpose**: Generate social media posts (LinkedIn, Twitter, Instagram)
**Persona**: Social media strategist with expertise in professional branding
**Key Capabilities**:
- LinkedIn posts (professional insights, achievements, learning)
- Twitter threads (engaging, informative)
- Instagram captions (visual storytelling)
- Content calendar planning
- Engagement optimization

### 3. Meeting Scheduler
**Purpose**: Coordinate meetings, send invites, manage calendar
**Persona**: Calendar coordination specialist
**Key Capabilities**:
- Find optimal meeting times
- Send calendar invites
- Prepare meeting agendas
- Send reminders
- Reschedule conflicts

### 4. Task Prioritizer
**Purpose**: Organize and prioritize daily tasks using Eisenhower Matrix
**Persona**: Productivity coach with GTD methodology expertise
**Key Capabilities**:
- Categorize tasks (Urgent/Important matrix)
- Estimate time requirements
- Suggest daily schedule
- Flag dependencies
- Track completion

### 5. Learning Curator
**Purpose**: Find and organize learning resources
**Persona**: Learning and development advisor
**Key Capabilities**:
- Find courses, articles, videos on topics
- Create learning paths
- Schedule learning time
- Track progress
- Recommend next steps

### 6. Note Organizer
**Purpose**: Structure and organize notes from meetings, lectures, reading
**Persona**: Knowledge management specialist
**Key Capabilities**:
- Extract key points from notes
- Organize by topic/project
- Create summaries
- Link related notes
- Generate actionable items

### 7. Health Tracker
**Purpose**: Monitor workouts, meals, sleep, and wellness
**Persona**: Health and wellness coach
**Key Capabilities**:
- Log workouts and activities
- Track meals and nutrition
- Monitor sleep patterns
- Suggest improvements
- Weekly health reports

### 8. Finance Monitor
**Purpose**: Track expenses, monitor budget, alert on overspending
**Persona**: Personal finance advisor
**Key Capabilities**:
- Categorize expenses
- Track against budget
- Alert on unusual spending
- Generate financial reports
- Savings recommendations

### 9. News Aggregator
**Purpose**: Compile relevant industry news and trends
**Persona**: Research analyst specializing in trend monitoring
**Key Capabilities**:
- Monitor industry news sources
- Filter relevant articles
- Summarize key developments
- Identify trends
- Daily/weekly briefings

### 10. Research Assistant
**Purpose**: Conduct deep research on any topic
**Persona**: Senior research analyst
**Key Capabilities**:
- Gather information from multiple sources
- Analyze and synthesize findings
- Create structured reports
- Fact-check information
- Cite sources properly

### 11. Travel Planner
**Purpose**: Plan trips, create itineraries, book recommendations
**Persona**: Travel planning specialist
**Key Capabilities**:
- Research destinations
- Create day-by-day itineraries
- Find accommodations
- Suggest activities
- Budget estimation

### 12. Gift Recommender
**Purpose**: Suggest thoughtful gifts for occasions
**Persona**: Gift consultant with cultural awareness
**Key Capabilities**:
- Understand recipient preferences
- Suggest gift ideas by occasion
- Consider budget constraints
- Find purchase links
- Reminder for important dates

### 13. Recipe Finder
**Purpose**: Meal planning and recipe recommendations
**Persona**: Nutritionist and meal planning expert
**Key Capabilities**:
- Suggest recipes based on preferences
- Plan weekly meals
- Generate shopping lists
- Consider dietary restrictions
- Time and budget optimization

### 14. Habit Tracker
**Purpose**: Monitor and reinforce daily habits
**Persona**: Behavioral psychology coach
**Key Capabilities**:
- Track habit completion
- Identify patterns
- Suggest improvements
- Celebrate streaks
- Accountability reminders

### 15. Weekly Reviewer
**Purpose**: Reflect on week, plan ahead
**Persona**: Life coach and strategic planner
**Key Capabilities**:
- Review accomplishments
- Identify lessons learned
- Plan next week
- Set goals
- Adjust priorities

## Subagent System (5 Specialized Agents)

### 1. Content Creator Agent
**Domain**: Communication and content production
**Manages Skills**: Email Manager, Content Creator, Meeting Scheduler
**Responsibilities**:
- All written communication (emails, posts, messages)
- Content calendar management
- Social media presence
- Professional correspondence
**When Invoked**: Any communication or content creation task

### 2. Learning Assistant Agent
**Domain**: Education and knowledge acquisition
**Manages Skills**: Learning Curator, Note Organizer, Research Assistant
**Responsibilities**:
- Finding learning resources
- Organizing knowledge
- Research and analysis
- Study planning
**When Invoked**: Learning, research, or knowledge management tasks

### 3. Health Coach Agent
**Domain**: Physical and mental wellness
**Manages Skills**: Health Tracker, Recipe Finder, Habit Tracker
**Responsibilities**:
- Fitness tracking
- Nutrition planning
- Wellness monitoring
- Habit reinforcement
**When Invoked**: Health, fitness, nutrition, or habit-related tasks

### 4. Finance Manager Agent
**Domain**: Money and resource management
**Manages Skills**: Finance Monitor, Travel Planner, Gift Recommender
**Responsibilities**:
- Budget tracking
- Expense monitoring
- Financial planning
- Purchase decisions
**When Invoked**: Financial, budgeting, or spending tasks

### 5. Personal Organizer Agent
**Domain**: Time and task management
**Manages Skills**: Task Prioritizer, Weekly Reviewer, News Aggregator
**Responsibilities**:
- Daily planning
- Task prioritization
- Calendar management
- Weekly reviews
**When Invoked**: Planning, organization, or time management tasks

## MCP Server Integrations

### Gmail MCP Server
**Purpose**: Email access and management
**Capabilities**:
- Read emails
- Draft and send emails
- Organize into folders
- Search email history
**Used By**: Email Manager skill, Content Creator agent

### Google Drive MCP Server
**Purpose**: Document storage and access
**Capabilities**:
- Store content calendars
- Save reports and documents
- Organize files by project
- Share documents
**Used By**: Content Creator, Learning Assistant, Personal Organizer agents

### Google Calendar MCP Server
**Purpose**: Schedule management
**Capabilities**:
- View calendar
- Create events
- Send invites
- Check availability
**Used By**: Meeting Scheduler skill, Personal Organizer agent

### Notion MCP Server
**Purpose**: Knowledge base and task management
**Capabilities**:
- Store notes
- Manage tasks
- Track projects
- Link information
**Used By**: Note Organizer, Task Prioritizer, Learning Curator skills

### Slack MCP Server
**Purpose**: Team communication and notifications
**Capabilities**:
- Send messages
- Post updates
- Receive notifications
- Team coordination
**Used By**: All agents for notifications

### Brave Search MCP Server
**Purpose**: Web research and information gathering
**Capabilities**:
- Search web
- Find articles
- Research topics
- Fact-checking
**Used By**: Research Assistant, News Aggregator, Learning Curator skills

### Weather API MCP Server
**Purpose**: Weather information for planning
**Capabilities**:
- Current weather
- Forecast
- Weather alerts
**Used By**: Morning briefing workflow, Travel Planner skill

### News API MCP Server
**Purpose**: Industry news aggregation
**Capabilities**:
- Monitor news sources
- Filter by topics
- Retrieve articles
**Used By**: News Aggregator skill

## Daily Workflows

### Morning Routine (7:00 AM - Automated via Hook)
**Triggered**: Daily at 7:00 AM
**Agent**: Personal Organizer Agent
**Steps**:
1. Fetch weather for the day (Weather API MCP)
2. Review today's calendar (Google Calendar MCP)
3. Compile top 3 priority tasks (Task Prioritizer skill)
4. Check important emails (Gmail MCP)
5. Aggregate relevant news (News Aggregator skill + News API MCP)
6. Generate morning briefing
7. Send to Slack/Email

### Work Preparation (8:30 AM - Automated)
**Triggered**: Weekdays at 8:30 AM
**Agent**: Content Creator Agent
**Steps**:
1. Review scheduled posts for today
2. Check for pending email drafts
3. Prepare meeting agendas
4. Update content calendar in Google Drive

### Lunch Break Check (12:30 PM - Automated)
**Triggered**: Daily at 12:30 PM
**Agent**: Health Coach Agent
**Steps**:
1. Log morning activities
2. Remind about hydration
3. Suggest healthy lunch options (Recipe Finder skill)
4. Check step count / movement

### Evening Wrap-Up (6:00 PM - Automated via Hook)
**Triggered**: Daily at 6:00 PM
**Agent**: Personal Organizer Agent
**Steps**:
1. Review completed tasks
2. Update task status in Notion (Notion MCP)
3. Prepare tomorrow's priority list
4. Send end-of-day summary
5. Archive day's work in Google Drive

### Weekly Planning (Sunday 7:00 PM - Automated)
**Triggered**: Sunday evenings
**Agent**: Personal Organizer Agent
**Steps**:
1. Review last week's goals
2. Analyze time spent (from daily logs)
3. Plan next week's priorities
4. Schedule important tasks
5. Set weekly goals
6. Generate weekly plan report

### Weekly Review (Friday 5:00 PM - Automated via Hook)
**Triggered**: Friday evenings
**Agent**: Weekly Reviewer skill + Personal Organizer Agent
**Steps**:
1. Compile week's accomplishments
2. Review goals vs. actuals
3. Identify learnings
4. Celebrate wins
5. Prepare insights for next week
6. Generate weekly review report
7. Save to Google Drive, send to email

## Event-Driven Hooks

### morning-briefing.sh (Daily 7:00 AM)
Triggers morning routine workflow, generates briefing

### evening-summary.sh (Daily 6:00 PM)
Triggers evening wrap-up workflow, daily summary

### weekly-review.sh (Friday 5:00 PM)
Triggers weekly review workflow, comprehensive report

### on-email-received.sh
When important email arrives, trigger Email Manager skill for draft response

### on-task-completed.sh
When task marked complete, update state, trigger celebration if milestone

### auto-save-content.sh
After any content creation, auto-save to Google Drive

## Development Approach

### Specification-First
1. Define exact problem/need
2. Specify required skill with Persona, Questions, Principles
3. Design integration points (which MCP servers needed)
4. Implement skill
5. Test with real scenarios
6. Document and iterate

### Quality Standards
- **Reliability**: 95%+ successful execution
- **Autonomy**: 85%+ tasks without human intervention
- **Quality**: 90%+ outputs approved without edits
- **Speed**: 70% faster than manual completion
- **User Satisfaction**: 4.5/5 average rating

### Security & Privacy
- All API keys in ~/.claude/config.json (never committed)
- Personal data in /data/ folder (git-ignored)
- Review all external communications before sending
- Regular security audits of MCP connections

## Success Metrics

### Time Saved (Target: 10-15 hours weekly)
- Email management: 3-4 hours
- Social media: 2-3 hours
- Planning/organization: 2-3 hours
- Research/learning: 2-3 hours
- Health/finance tracking: 1-2 hours

### Automation Rate
- 85%+ tasks completed autonomously
- <15% require human intervention
- 95%+ consistency in quality

### Business/Career Value
- Strong personal brand (consistent social media)
- Organized knowledge base
- Well-maintained habits
- Financial clarity
- Time for high-value work

### Portfolio Demonstration
- 15+ production skills deployed
- 5 specialized subagents orchestrated
- 8 external systems integrated via MCP
- Fully autonomous daily/weekly workflows
- Measurable ROI and time savings

## Current Phase

**Status**: Foundation - Week 1
**Completed**: CLAUDE.md created
**Next Steps**:
1. Create AGENTS.md (universal standard)
2. Set up directory structure
3. Configure first MCP server (Gmail)
4. Build first skill (Email Manager)
5. Test with real emails

## Session Guidelines

### Claude's Behavior
- Read this CLAUDE.md on every session start
- Suggest next logical steps based on current phase
- Follow specification-first approach
- Document all decisions
- Maintain quality standards

### User Commands
Start sessions with context-aware requests:
- "Build the [skill-name] skill"
- "Set up [MCP-server] integration"
- "Test [workflow-name] workflow"
- "Generate daily briefing"

### File Organization
- Skills in .claude/skills/[name]/SKILL.md
- Subagents in .claude/subagents/[name].md
- MCP configs in .claude/mcp-servers/[name].json
- Workflows in .claude/workflows/[name].md
- Generated content in content/
- Personal data in data/ (git-ignored)

## Quick Reference

### Common Commands
```bash
# Start Claude Code
claude

# Example requests:
"Create Email Manager skill with Persona, Questions, Principles"
"Set up Gmail MCP integration"
"Test morning briefing workflow"
"Generate today's priority list"
"Draft LinkedIn post about [topic]"

# Exit
exit
```

### Project Structure Commands
```bash
# Create all directories
mkdir -p .claude/{skills,subagents,workflows,mcp-servers,hooks,state,monitoring}
mkdir -p docs content/{social-media,emails,reports} data examples

# List all skills
ls .claude/skills/

# View skill
cat .claude/skills/email-manager/SKILL.md
```

## Version History

- **v1.0** - CLAUDE.md created with complete daily life FTE design
- Next: AGENTS.md creation and first skill implementation

---

**Project Started**: February 11, 2026
**Target Completion**: 8 weeks (April 6, 2026)
**Purpose**: Build autonomous Daily Life Productivity Digital FTE
**Focus**: Save 10-15 hours weekly, demonstrate AI engineering skills, prepare for Saudi Arabia career opportunities

---

## Ready to Start

This CLAUDE.md provides complete context for building a production Daily Life Productivity Digital FTE. Every component is specified: 15 skills, 5 subagents, 8 MCP integrations, and 6 automated workflows.

