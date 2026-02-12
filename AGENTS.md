# Daily Life Productivity Digital FTE - Universal Agent Instructions

## Project Overview

AI-powered Digital Full-Time Employee for autonomous daily life management across work, learning, health, finance, and personal organization. Handles 15+ common daily tasks with 85%+ autonomy, saving 10-15 hours weekly.

**Domain**: Personal productivity and life management
**Target**: Professionals preparing for international career opportunities
**Approach**: Modular skills, specialized subagents, external integrations via MCP

## Technology Stack

### Core
- **AI Agent Platform**: Claude Code (compatible with any AI coding assistant)
- **Agent Framework**: Modular skill system with Persona + Questions + Principles pattern
- **Integrations**: Model Context Protocol (MCP) for external system access
- **Automation**: Event-driven hooks and scheduled workflows

### External Systems (via MCP)
- Gmail (email management)
- Google Drive (document storage)
- Google Calendar (schedule management)
- Notion (knowledge base and tasks)
- Slack (notifications and communication)
- Brave Search (web research)
- Weather API (daily planning)
- News API (industry monitoring)

## Directory Structure

```
daily-life-fte/
├── AGENTS.md                    # This file - universal instructions
├── CLAUDE.md                    # Claude Code specific context
├── README.md                    # Project documentation
│
├── .claude/                     # Agent configuration
│   ├── skills/                 # 15 modular capabilities
│   ├── subagents/              # 5 specialized agents
│   ├── workflows/              # 6 daily/weekly workflows
│   ├── mcp-servers/            # 8 external integrations
│   ├── hooks/                  # Event-driven triggers
│   ├── state/                  # Agent coordination
│   └── monitoring/             # Performance tracking
│
├── docs/                       # Documentation
├── content/                    # Generated outputs
├── data/                       # Personal data (git-ignored)
└── examples/                   # Portfolio samples
```

## Core Capabilities (15 Skills)

### Communication & Content
1. **Email Manager**: Draft, organize, prioritize emails
2. **Content Creator**: Generate social media posts (LinkedIn, Twitter, Instagram)
3. **Meeting Scheduler**: Coordinate meetings, send invites

### Learning & Knowledge
4. **Learning Curator**: Find courses, articles, videos
5. **Note Organizer**: Structure notes from meetings/lectures
6. **Research Assistant**: Deep research on any topic

### Health & Wellness
7. **Health Tracker**: Monitor workouts, meals, sleep
8. **Recipe Finder**: Meal planning and recipes
9. **Habit Tracker**: Monitor and reinforce daily habits

### Finance & Planning
10. **Finance Monitor**: Track expenses, budget alerts
11. **Travel Planner**: Trip planning and itineraries
12. **Gift Recommender**: Thoughtful gift suggestions

### Organization & Review
13. **Task Prioritizer**: Organize tasks using Eisenhower Matrix
14. **News Aggregator**: Compile industry news
15. **Weekly Reviewer**: Reflect on week, plan ahead

## Skill Development Pattern

Every skill follows this structure:

### PERSONA
Who is the AI when executing this skill?
- Role and expertise level
- Domain knowledge
- Communication style

### QUESTIONS
What information is needed?
- Required inputs (must have)
- Optional context (nice to have)
- Clarifying questions to ask

### PRINCIPLES
What rules guide execution?
- Quality standards
- Output format
- Edge case handling
- Constraints

## Subagent Architecture

### Specialization Domains
Skills are grouped under 5 specialized subagents:

1. **Content Creator Agent**
   - Email Manager
   - Content Creator
   - Meeting Scheduler

2. **Learning Assistant Agent**
   - Learning Curator
   - Note Organizer
   - Research Assistant

3. **Health Coach Agent**
   - Health Tracker
   - Recipe Finder
   - Habit Tracker

4. **Finance Manager Agent**
   - Finance Monitor
   - Travel Planner
   - Gift Recommender

5. **Personal Organizer Agent**
   - Task Prioritizer
   - News Aggregator
   - Weekly Reviewer

### When to Invoke Subagents
- **Content tasks**: Content Creator Agent
- **Learning/research tasks**: Learning Assistant Agent
- **Health/wellness tasks**: Health Coach Agent
- **Money/spending tasks**: Finance Manager Agent
- **Planning/organization tasks**: Personal Organizer Agent

## External Integration Strategy

### MCP Server Usage

**Gmail MCP**
- Purpose: Email access and management
- Skills: Email Manager
- Capabilities: Read, draft, send, organize emails

**Google Drive MCP**
- Purpose: Document storage
- Skills: Content Creator, Note Organizer
- Capabilities: Store calendars, reports, notes

**Google Calendar MCP**
- Purpose: Schedule management
- Skills: Meeting Scheduler, Task Prioritizer
- Capabilities: View calendar, create events, check availability

**Notion MCP**
- Purpose: Knowledge base and task management
- Skills: Note Organizer, Task Prioritizer, Learning Curator
- Capabilities: Store notes, manage tasks, track projects

**Slack MCP**
- Purpose: Notifications and communication
- Skills: All (for alerts)
- Capabilities: Send messages, post updates

**Brave Search MCP**
- Purpose: Web research
- Skills: Research Assistant, News Aggregator, Learning Curator
- Capabilities: Search web, find articles, fact-check

**Weather API MCP**
- Purpose: Daily planning
- Skills: Morning briefing workflow
- Capabilities: Current weather, forecasts

**News API MCP**
- Purpose: Industry monitoring
- Skills: News Aggregator
- Capabilities: Monitor sources, filter topics, retrieve articles

## Automated Workflows

### Daily Workflows

**Morning Routine (7:00 AM)**
1. Fetch weather
2. Review calendar
3. List top 3 priorities
4. Check important emails
5. Aggregate news
6. Generate briefing

**Work Preparation (8:30 AM)**
1. Review scheduled content
2. Check email drafts
3. Prepare meeting agendas
4. Update content calendar

**Lunch Check (12:30 PM)**
1. Log morning activities
2. Hydration reminder
3. Suggest healthy lunch
4. Movement check

**Evening Wrap-Up (6:00 PM)**
1. Review completed tasks
2. Update task status
3. Prepare tomorrow's list
4. Send summary
5. Archive work

### Weekly Workflows

**Weekly Planning (Sunday 7:00 PM)**
1. Review last week
2. Analyze time spent
3. Plan next week
4. Schedule tasks
5. Set goals

**Weekly Review (Friday 5:00 PM)**
1. Compile accomplishments
2. Review goals vs actuals
3. Identify learnings
4. Celebrate wins
5. Generate report

## Development Standards

### Quality Benchmarks
- **Reliability**: 95%+ successful execution
- **Autonomy**: 85%+ without human intervention
- **Quality**: 90%+ approved without edits
- **Speed**: 70% faster than manual
- **Satisfaction**: 4.5/5 average rating

### Specification-First Approach
1. Define problem/need clearly
2. Specify skill (Persona, Questions, Principles)
3. Identify required MCP integrations
4. Implement and test
5. Document and iterate

### Security & Privacy
- API keys never in version control
- Personal data in git-ignored directories
- Review external communications before sending
- Regular security audits

## File Organization

### Skill Files
Location: `.claude/skills/[skill-name]/SKILL.md`

Structure:
```markdown
# [Skill Name]

## PERSONA
[Who is the AI?]

## QUESTIONS
[What information is needed?]

## PRINCIPLES
[What rules guide execution?]
```

### Subagent Files
Location: `.claude/subagents/[agent-name].md`

Contains:
- Domain expertise
- Managed skills
- Invocation triggers
- Coordination rules

### Workflow Files
Location: `.claude/workflows/[workflow-name].md`

Defines:
- Trigger conditions
- Agent sequence
- Required inputs
- Expected outputs
- Success criteria

### MCP Configuration
Location: `.claude/mcp-servers/[server-name].json`

Specifies:
- Server endpoint
- Capabilities
- Used by which skills
- Error handling

## Success Metrics

### Efficiency Gains
- **Time Saved**: 10-15 hours weekly
  - Email: 3-4 hours
  - Social media: 2-3 hours
  - Planning: 2-3 hours
  - Research: 2-3 hours
  - Tracking: 1-2 hours

### Automation Rate
- 85%+ autonomous completion
- <15% human intervention needed
- 95%+ quality consistency

### Business Value
- Strong personal brand
- Organized knowledge
- Maintained habits
- Financial clarity
- Focus on high-value work

## Common Workflows

### Creating a New Skill
```
1. Identify repetitive task or problem
2. Define Persona (role, expertise, style)
3. List Questions (required inputs, optional context)
4. Establish Principles (quality, format, constraints)
5. Implement in .claude/skills/[name]/SKILL.md
6. Test with real scenarios
7. Document in README
```

### Setting Up MCP Integration
```
1. Identify external system needed
2. Install MCP server package
3. Configure credentials (in user config, not project)
4. Test connection
5. Create skill that uses integration
6. Document in .claude/mcp-servers/README.md
```

### Building a Workflow
```
1. Define trigger (time, event, condition)
2. Identify required agents/skills
3. Map step sequence
4. Specify inputs/outputs
5. Implement in .claude/workflows/[name].md
6. Create hook if automated
7. Test end-to-end
```

## Agent Coordination

### State Management
Agents coordinate via shared files in `.claude/state/`:

- **today-tasks.json**: Current day's task list
- **this-week-goals.json**: Weekly objectives
- **completed-items.json**: Finished work
- **agent-messages.json**: Inter-agent communication
- **context-memory.json**: Persistent context

### Communication Protocol
1. Check state before starting work
2. Update state during work
3. Notify other agents of changes
4. Mark work complete in state
5. Log important events

## Error Handling

### Graceful Degradation
- MCP server unavailable → Use cached data or skip
- Invalid input → Request clarification
- Subagent timeout → Fallback to main agent
- Hook failure → Log and continue
- API rate limit → Queue and retry

### Recovery Procedures
All documented in `docs/TROUBLESHOOTING.md`:
- Connection failures
- Authentication errors
- Data validation issues
- Performance problems
- State corruption

## Portfolio Documentation

### Project Summary
"Autonomous Daily Life Digital FTE managing 15+ tasks across work, learning, health, finance, and organization with 85% autonomy. Integrated 8 external systems via MCP, orchestrated 5 specialized subagents, and automated 6 daily/weekly workflows. Achieved 10-15 hours weekly time savings with 95% reliability."

### Technical Highlights
- Modular skill architecture (15 skills)
- Multi-agent orchestration (5 subagents)
- External system integration (8 MCP servers)
- Event-driven automation (6 hooks)
- Fully autonomous workflows

### Business Impact
- 10-15 hours saved weekly
- 85% autonomous operation
- 90% quality approval rate
- Measurable productivity gains
- Portfolio-ready demonstration

## Getting Started

### For Any AI Agent

1. **Read Context**
   - AGENTS.md (this file) for universal context
   - CLAUDE.md if using Claude Code (additional features)

2. **Understand Structure**
   - 15 skills grouped under 5 subagents
   - 8 MCP integrations for external access
   - 6 workflows for automated operation

3. **Follow Patterns**
   - Skills: Persona + Questions + Principles
   - Development: Specification-first
   - Quality: 95% reliability target

4. **Start Small**
   - Build one skill at a time
   - Test with real scenarios
   - Iterate based on usage

### First Steps Checklist
- [ ] Review all 15 skill descriptions
- [ ] Understand subagent domains
- [ ] Identify first MCP integration needed
- [ ] Choose first skill to build
- [ ] Read skill development pattern
- [ ] Create first SKILL.md file
- [ ] Test with real data

## Version Control

### What to Commit
- AGENTS.md, CLAUDE.md, README.md
- Skill files (.claude/skills/)
- Subagent configs (.claude/subagents/)
- Workflow definitions (.claude/workflows/)
- Documentation (docs/)
- Examples (examples/)

### What to Ignore (.gitignore)
- API keys and credentials
- Personal data (data/)
- Generated content (content/)
- State files (.claude/state/)
- Monitoring logs (.claude/monitoring/)

## Scaling Strategy

### Adding Skills
1. Identify need through real usage
2. Design following Persona + Questions + Principles
3. Implement and test
4. Assign to appropriate subagent
5. Update documentation

### Adding Subagents
When a domain gets >5 skills:
1. Create new subagent config
2. Transfer relevant skills
3. Define coordination rules
4. Test agent interactions

### Adding Workflows
For recurring multi-step processes:
1. Document manual process
2. Identify automation opportunities
3. Map to existing skills/agents
4. Implement with hooks
5. Monitor and optimize

---

## Philosophy

This Digital FTE system is built on:

1. **Modular Design**: Skills are independent, composable units
2. **Specialization**: Subagents provide domain expertise
3. **External Integration**: MCP connects to real-world systems
4. **Automation**: Hooks enable autonomous operation
5. **Continuous Improvement**: Iterate based on real usage

**The goal**: Free 10-15 hours weekly for high-value work by autonomously managing routine daily tasks with AI-powered excellence.

---

**Standard**: AAIF (Agentic AI Foundation)  
**Version**: 1.0  
**Updated**: February 11, 2026  
**Compatible**: Claude Code, Cursor, GitHub Copilot, Gemini CLI, and all AI coding agents