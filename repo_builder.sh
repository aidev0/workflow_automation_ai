#!/bin/bash

# Script to create the conceptual repository structure for the Multi-Agent System
# based on the provided 'repository_structure_overview' and functional agent roles.

echo "Creating Multi-Agent System directory structure..."

# Define the root directory name
ROOT_DIR="./"

# Create the root directory if it doesn't exist
# If ROOT_DIR is './', this will effectively operate in the current directory.
if [ "$ROOT_DIR" != "./" ] && [ "$ROOT_DIR" != "." ]; then
  mkdir -p "$ROOT_DIR"
fi
cd "$ROOT_DIR" || { echo "Failed to create or enter root directory: $ROOT_DIR"; exit 1; } # More robust exit

# --- User Interaction Agent (Role 1) ---
echo "Creating UserInteractionAgent structure..."
mkdir -p user_interaction_agent/schemas
mkdir -p user_interaction_agent/tests
touch user_interaction_agent/user_interaction_agent.py
touch user_interaction_agent/api_server.py # Server for this agent
touch user_interaction_agent/system_message_user_interaction.txt
touch user_interaction_agent/schemas/input_schema_user_interaction.json
touch user_interaction_agent/schemas/output_schema_user_interaction.json
touch user_interaction_agent/tests/test_user_interaction_agent.py
touch user_interaction_agent/README.md

# --- Abstract Workflow Creator (Role 2) ---
echo "Creating AbstractWorkflowCreator structure..."
mkdir -p abstract_workflow_creator/schemas
mkdir -p abstract_workflow_creator/tests
touch abstract_workflow_creator/abstract_workflow_creator.py
touch abstract_workflow_creator/api_server.py # Server for this agent
touch abstract_workflow_creator/system_message_abstract_workflow.txt
touch abstract_workflow_creator/schemas/input_schema_abstract_workflow.json
touch abstract_workflow_creator/schemas/output_schema_abstract_workflow.json
touch abstract_workflow_creator/tests/test_abstract_workflow_creator.py
touch abstract_workflow_creator/README.md

# --- Detailed Workflow Creator (Role 3) ---
echo "Creating DetailedWorkflowCreator structure..."
mkdir -p detailed_workflow_creator/schemas
mkdir -p detailed_workflow_creator/tests
touch detailed_workflow_creator/detailed_workflow_creator.py
touch detailed_workflow_creator/api_server.py # Server for this agent
touch detailed_workflow_creator/system_message_detailed_workflow.txt
touch detailed_workflow_creator/schemas/input_schema_detailed_workflow.json
touch detailed_workflow_creator/schemas/output_schema_detailed_workflow.json
touch detailed_workflow_creator/tests/test_detailed_workflow_creator.py
touch detailed_workflow_creator/README.md

# --- Workflow Coordinator Agent (Role 4) ---
echo "Creating WorkflowCoordinatorAgent structure..."
mkdir -p workflow_coordinator_agent/schemas
mkdir -p workflow_coordinator_agent/tests
touch workflow_coordinator_agent/workflow_coordinator_agent.py
touch workflow_coordinator_agent/api_server.py # Server for this agent
touch workflow_coordinator_agent/system_message_workflow_coordinator.txt
touch workflow_coordinator_agent/schemas/input_schema_workflow_coordinator.json
touch workflow_coordinator_agent/schemas/output_schema_workflow_coordinator.json
touch workflow_coordinator_agent/tests/test_workflow_coordinator_agent.py
touch workflow_coordinator_agent/README.md

# --- Agent Maker Agent (Responsible for creating Worker Agents) ---
echo "Creating AgentMakerAgent structure..."
mkdir -p agent_maker_agent/schemas
mkdir -p agent_maker_agent/tests
touch agent_maker_agent/agent_maker.py
touch agent_maker_agent/api_server.py # Server for this agent
touch agent_maker_agent/system_message_agent_maker.txt
touch agent_maker_agent/schemas/input_schema_agent_maker.json
touch agent_maker_agent/schemas/output_schema_agent_maker.json
touch agent_maker_agent/schemas/mongodb_agent_schema.json
touch agent_maker_agent/tests/test_agent_maker.py
touch agent_maker_agent/README.md

# --- Created Worker Agents (Role 5 - Base Directory) ---
echo "Creating base directory for CreatedWorkerAgents..."
mkdir -p created_worker_agents
# Create a README inside created_worker_agents to explain its dynamic nature
echo "# Dynamically Populated Worker Agents" > created_worker_agents/README.md
echo "" >> created_worker_agents/README.md
echo "This directory is intended to be populated by the 'AgentMakerAgent'." >> created_worker_agents/README.md
echo "Each worker agent will have its own package structure, typically:" >> created_worker_agents/README.md
echo "  /<platform_identifier_for_directory>/<worker_agent_package_name_fs>/" >> created_worker_agents/README.md
echo "" >> created_worker_agents/README.md
echo "Example of a worker agent package structure (not created by this script):" >> created_worker_agents/README.md
echo "  /my_platform/" >> created_worker_agents/README.md
echo "  |-- /my_platform_worker_main/" >> created_worker_agents/README.md
echo "  |   |-- blueprint.json" >> created_worker_agents/README.md
echo "  |   |-- system_message.txt" >> created_worker_agents/README.md
echo "  |   |-- my_platform_worker_main_main.py" >> created_worker_agents/README.md
echo "  |   |-- agent.json" >> created_worker_agents/README.md
echo "  |   |-- requirements.txt" >> created_worker_agents/README.md
echo "  |   |-- Dockerfile" >> created_worker_agents/README.md
echo "  |   |-- .env.example" >> created_worker_agents/README.md
echo "  |   |-- README.md" >> created_worker_agents/README.md
echo "  |   |-- /schemas/" >> created_worker_agents/README.md
echo "  |   |   |-- input_schema.json" >> created_worker_agents/README.md
echo "  |   |   |-- output_schema.json" >> created_worker_agents/README.md
echo "  |   |-- /tests/" >> created_worker_agents/README.md
echo "  |   |   |-- __init__.py" >> created_worker_agents/README.md
echo "  |   |   |-- test_my_platform_worker_main.py" >> created_worker_agents/README.md
echo "  |   |-- /tools/" >> created_worker_agents/README.md
echo "  |   |   |-- __init__.py" >> created_worker_agents/README.md


# --- Common Libs ---
echo "Creating CommonLibs structure..."
mkdir -p common_libs/schemas
mkdir -p common_libs/utils
mkdir -p common_libs/agent_bases # Optional base classes for agents
# Use .gitkeep to ensure empty directories are versioned if using Git
touch common_libs/schemas/.gitkeep
touch common_libs/utils/.gitkeep
touch common_libs/agent_bases/.gitkeep


# --- Config ---
echo "Creating Config structure..."
mkdir -p config
touch config/global_settings.json
touch config/mongodb_config.json
touch config/data_services_config.json # Config for the new data server


# --- Scripts ---
echo "Creating Scripts structure..."
mkdir -p scripts
touch scripts/deploy_agent.sh
touch scripts/setup_mongodb.js
touch scripts/run_all_tests.sh


# --- Top-Level Files ---
echo "Creating top-level files..."
touch main_service_entrypoint.py # Main "server for AI" or overall system entry point
touch mongodb_registry_api_server.py # Conceptual server providing API for MongoDB agent registry
touch data_management_api_server.py  # New placeholder for a general data server
touch requirements.txt
touch Dockerfile
touch docker-compose.yml
touch README.md

echo ""
if [ "$ROOT_DIR" = "./" ] || [ "$ROOT_DIR" = "." ]; then
  echo "Directory structure created successfully in the current directory."
else
  echo "Directory structure created successfully under '$ROOT_DIR/'."
fi
echo "The 'created_worker_agents' directory is ready to be populated by the AgentMakerAgent."

# If ROOT_DIR was not './' or '.', we changed into it, so change back.
if [ "$ROOT_DIR" != "./" ] && [ "$ROOT_DIR" != "." ]; then
  cd ..
fi


