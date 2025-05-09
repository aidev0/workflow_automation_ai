# Dynamically Populated Worker Agents

This directory is intended to be populated by the 'AgentMakerAgent'.
Each worker agent will have its own package structure, typically:
  /<platform_identifier_for_directory>/<worker_agent_package_name_fs>/

Example of a worker agent package structure (not created by this script):
  /my_platform/
  |-- /my_platform_worker_main/
  |   |-- blueprint.json
  |   |-- system_message.txt
  |   |-- my_platform_worker_main_main.py
  |   |-- agent.json
  |   |-- requirements.txt
  |   |-- Dockerfile
  |   |-- .env.example
  |   |-- README.md
  |   |-- /schemas/
  |   |   |-- input_schema.json
  |   |   |-- output_schema.json
  |   |-- /tests/
  |   |   |-- __init__.py
  |   |   |-- test_my_platform_worker_main.py
  |   |-- /tools/
  |   |   |-- __init__.py
