#!/bin/bash

# Script to create the conceptual repository structure for the Multi-Agent System
# with agent code, common_libs, config, and main AI service entrypoint inside 'workflow_automation_ai'.
# Other components (scripts, DB/Data API servers, top-level project files) remain at the root.

echo "Creating Multi-Agent System directory structure..."

# Define the main AI project directory name
PROJECT_AI_DIR="workflow_automation_ai"

# Create the main AI project directory in the current location
mkdir -p "$PROJECT_AI_DIR"

# --- User Interaction Agent (Role 1) ---
echo "Creating UserInteractionAgent structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/user_interaction_agent/schemas"
mkdir -p "$PROJECT_AI_DIR/user_interaction_agent/tests"
touch "$PROJECT_AI_DIR/user_interaction_agent/user_interaction_agent.py" # Core Python logic directly in agent folder
touch "$PROJECT_AI_DIR/user_interaction_agent/api_server.py" # Server for this agent
touch "$PROJECT_AI_DIR/user_interaction_agent/system_message_user_interaction.txt"
touch "$PROJECT_AI_DIR/user_interaction_agent/schemas/input_schema_user_interaction.json"
touch "$PROJECT_AI_DIR/user_interaction_agent/schemas/output_schema_user_interaction.json"
touch "$PROJECT_AI_DIR/user_interaction_agent/tests/test_user_interaction_agent.py"
touch "$PROJECT_AI_DIR/user_interaction_agent/README.md"

# --- Abstract Workflow Creator (Role 2) ---
echo "Creating AbstractWorkflowCreator structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/abstract_workflow_creator/schemas"
mkdir -p "$PROJECT_AI_DIR/abstract_workflow_creator/tests"
touch "$PROJECT_AI_DIR/abstract_workflow_creator/abstract_workflow_creator.py" # Core Python logic
touch "$PROJECT_AI_DIR/abstract_workflow_creator/api_server.py" # Server for this agent
touch "$PROJECT_AI_DIR/abstract_workflow_creator/system_message_abstract_workflow.txt"
touch "$PROJECT_AI_DIR/abstract_workflow_creator/schemas/input_schema_abstract_workflow.json"
touch "$PROJECT_AI_DIR/abstract_workflow_creator/schemas/output_schema_abstract_workflow.json"
touch "$PROJECT_AI_DIR/abstract_workflow_creator/tests/test_abstract_workflow_creator.py"
touch "$PROJECT_AI_DIR/abstract_workflow_creator/README.md"

# --- Detailed Workflow Creator (Role 3) ---
echo "Creating DetailedWorkflowCreator structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/detailed_workflow_creator/schemas"
mkdir -p "$PROJECT_AI_DIR/detailed_workflow_creator/tests"
touch "$PROJECT_AI_DIR/detailed_workflow_creator/detailed_workflow_creator.py" # Core Python logic
touch "$PROJECT_AI_DIR/detailed_workflow_creator/api_server.py" # Server for this agent
touch "$PROJECT_AI_DIR/detailed_workflow_creator/system_message_detailed_workflow.txt"
touch "$PROJECT_AI_DIR/detailed_workflow_creator/schemas/input_schema_detailed_workflow.json"
touch "$PROJECT_AI_DIR/detailed_workflow_creator/schemas/output_schema_detailed_workflow.json"
touch "$PROJECT_AI_DIR/detailed_workflow_creator/tests/test_detailed_workflow_creator.py"
touch "$PROJECT_AI_DIR/detailed_workflow_creator/README.md"

# --- Workflow Coordinator Agent (Role 4) ---
echo "Creating WorkflowCoordinatorAgent structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/workflow_coordinator_agent/schemas"
mkdir -p "$PROJECT_AI_DIR/workflow_coordinator_agent/tests"
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/workflow_coordinator_agent.py" # Core Python logic
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/api_server.py" # Server for this agent
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/system_message_workflow_coordinator.txt"
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/schemas/input_schema_workflow_coordinator.json"
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/schemas/output_schema_workflow_coordinator.json"
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/tests/test_workflow_coordinator_agent.py"
touch "$PROJECT_AI_DIR/workflow_coordinator_agent/README.md"

# --- Agent Maker Agent (Responsible for creating Worker Agents) ---
echo "Creating AgentMakerAgent structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/agent_maker_agent/schemas"
mkdir -p "$PROJECT_AI_DIR/agent_maker_agent/tests"
touch "$PROJECT_AI_DIR/agent_maker_agent/agent_maker.py" # Core Python logic
touch "$PROJECT_AI_DIR/agent_maker_agent/api_server.py" # Server for this agent
touch "$PROJECT_AI_DIR/agent_maker_agent/system_message_agent_maker.txt"
touch "$PROJECT_AI_DIR/agent_maker_agent/schemas/input_schema_agent_maker.json"
touch "$PROJECT_AI_DIR/agent_maker_agent/schemas/output_schema_agent_maker.json"
touch "$PROJECT_AI_DIR/agent_maker_agent/schemas/mongodb_agent_schema.json"
touch "$PROJECT_AI_DIR/agent_maker_agent/tests/test_agent_maker.py"
touch "$PROJECT_AI_DIR/agent_maker_agent/README.md"

# --- Created Worker Agents (Role 5 - Base Directory inside $PROJECT_AI_DIR) ---
echo "Creating base directory for CreatedWorkerAgents inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/created_worker_agents"
# Create a README inside created_worker_agents to explain its dynamic nature
echo "# Dynamically Populated Worker Agents" > "$PROJECT_AI_DIR/created_worker_agents/README.md"
echo "" >> "$PROJECT_AI_DIR/created_worker_agents/README.md"
echo "This directory is intended to be populated by the 'AgentMakerAgent'." >> "$PROJECT_AI_DIR/created_worker_agents/README.md"
echo "Each worker agent will have its own package structure, typically:" >> "$PROJECT_AI_DIR/created_worker_agents/README.md"
echo "  /<platform_identifier_for_directory>/<worker_agent_package_name_fs>/" >> "$PROJECT_AI_DIR/created_worker_agents/README.md"
echo "  |-- <worker_agent_script_module_name>_main.py  (Core logic & A2A server)" >> "$PROJECT_AI_DIR/created_worker_agents/README.md"
echo "  |-- blueprint.json" >> "$PROJECT_AI_DIR/created_worker_agents/README.md"
# ... (rest of the example structure in README, adjusted to not show src/)

# --- Common Libs (inside $PROJECT_AI_DIR) ---
echo "Creating CommonLibs structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/common_libs/schemas"
mkdir -p "$PROJECT_AI_DIR/common_libs/utils"
mkdir -p "$PROJECT_AI_DIR/common_libs/agent_bases" # Optional base classes for agents
touch "$PROJECT_AI_DIR/common_libs/schemas/.gitkeep"
touch "$PROJECT_AI_DIR/common_libs/utils/.gitkeep"
touch "$PROJECT_AI_DIR/common_libs/agent_bases/.gitkeep"

# --- Config (inside $PROJECT_AI_DIR) ---
echo "Creating Config structure inside $PROJECT_AI_DIR..."
mkdir -p "$PROJECT_AI_DIR/config"
touch "$PROJECT_AI_DIR/config/global_settings.json"
touch "$PROJECT_AI_DIR/config/mongodb_config.json"
touch "$PROJECT_AI_DIR/config/data_services_config.json"

# --- Main AI Service Entrypoint (inside $PROJECT_AI_DIR) ---
echo "Creating main AI service entrypoint inside $PROJECT_AI_DIR..."
touch "$PROJECT_AI_DIR/main_service_entrypoint.py" # This can serve as the main "server for AI" or workflow entrypoint

# --- Create directories and files OUTSIDE $PROJECT_AI_DIR (in the current directory './') ---

# --- Scripts ---
echo "Creating Scripts structure (at root)..."
mkdir -p scripts
touch scripts/deploy_agent.sh
touch scripts/setup_mongodb.js
touch scripts/run_all_tests.sh

# --- Top-Level Files (at root) ---
echo "Creating top-level files (at root)..."
# These servers remain at the root, outside $PROJECT_AI_DIR
touch mongodb_registry_api_server.py # Conceptual server providing API for MongoDB agent registry
touch data_management_api_server.py  # Placeholder for a general data server

touch requirements.txt # Top-level requirements for running these root scripts/servers
touch Dockerfile # Top-level Dockerfile for orchestrating services, if needed
touch docker-compose.yml # For local multi-service development
touch README.md # This is the main project README, at the true root

echo ""
echo "Directory structure created successfully."
echo "Agent-specific code, common libraries, configs, and main AI service entrypoint are inside the '$PROJECT_AI_DIR/' directory."
echo "Utility scripts, DB/Data API servers, and main project operational files are at the root level (current directory)."
echo "The '$PROJECT_AI_DIR/created_worker_agents' directory is ready to be populated by the AgentMakerAgent."

