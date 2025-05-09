# Dynamically Populated Worker Agents

This directory is intended to be populated by the 'AgentMakerAgent'.
Each worker agent will have its own package structure, typically:
  /<platform_identifier_for_directory>/<worker_agent_package_name_fs>/
  |-- <worker_agent_script_module_name>_main.py  (Core logic & A2A server)
  |-- blueprint.json
