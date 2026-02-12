# Workflows Documentation

## What Are Workflows?
Workflows are automated sequences of coordinated actions that orchestrate multiple subagents and skills to accomplish complex daily, weekly, and monthly tasks. They serve as the backbone of the Daily Life Productivity Digital FTE, ensuring consistent execution of routine operations.

## How Workflows Orchestrate Subagents
Workflows follow a structured approach to coordinate specialized agents:

1. **Agent Assignment**: Each workflow specifies a Primary Agent responsible for overall coordination
2. **Supporting Agents**: Additional agents provide specialized capabilities as needed
3. **Skill Invocation**: Workflows call specific skills through the appropriate agents
4. **MCP Integration**: External data sources are accessed via Model Context Protocol servers
5. **State Management**: Workflow progress and results are tracked in the state directory
6. **Error Handling**: Each workflow includes failure handling for robust execution

## Difference Between Workflows and Skills

### Skills
- **Granular**: Single-purpose capabilities (e.g., "Draft email", "Find recipe")
- **Reusable**: Can be called independently by agents
- **Persona-driven**: Each skill has a specific persona and principles
- **Focused**: Handle one type of task with depth

### Workflows
- **Composite**: Coordinate multiple skills and agents
- **Temporal**: Execute on schedules (daily, weekly, monthly)
- **Orchestration**: Manage the flow and dependencies between tasks
- **Strategic**: Handle complex, multi-step processes

## How Hooks Trigger Workflows
Hooks are event-driven scripts that initiate workflows:

1. **Time-based Hooks**: Cron-style triggers (e.g., morning-briefing.sh at 7:00 AM)
2. **Event-based Hooks**: Triggered by specific events (e.g., on-email-received.sh)
3. **Manual Hooks**: User-initiated workflow execution
4. **Workflow Execution**: Hooks call the appropriate workflow files
5. **Agent Coordination**: Workflows then coordinate the required agents and skills

## How to Add New Workflows Safely

### 1. Follow the Standard Structure
Every workflow must include these sections in order:
- # Workflow Name
- ## Purpose
- ## Trigger
- ## Primary Agent
- ## Supporting Agents
- ## Required Skills
- ## Required MCP Integrations
- ## Preconditions
- ## Step-by-Step Execution Flow
- ## Outputs
- ## State Updates
- ## Failure Handling
- ## Success Criteria

### 2. Use the Correct File Location
- All workflows must be in `.claude/workflows/`
- Use the exact filename specified in the project requirements
- Follow the naming convention: `[name].md`

### 3. Agent and Skill References
- Reference agents by their exact names (e.g., "Content Creator Agent")
- List all required skills and MCP integrations
- Ensure referenced agents and skills exist

### 4. Testing and Validation
- Test workflows in a safe environment first
- Validate MCP connections before production use
- Monitor state updates for consistency
- Include comprehensive failure handling

### 5. Documentation and Updates
- Update this README.md when adding new workflows
- Document any special requirements or considerations
- Maintain consistency with existing workflow patterns
- Review workflows regularly for improvements