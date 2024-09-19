import os
import subprocess
import yaml

# Load the configuration from the YAML file
def load_config():
    with open("git_config.yaml", "r") as file:
        return yaml.safe_load(file)
# Function to check if the program exists locally
def check_local_repo(config):
    search_command = f'dir "{config["system"]["local_repo_path"]}\\*{config["system"]["program_name"]}*" /s /p /b'
    result = subprocess.run(search_command, shell=True, capture_output=True, text=True)
    
    if result.stdout:
        return result.stdout.strip()  # Return the path if found
    else:
        return None

def clone_or_pull_repository(config):
    repo_path = config["system"]["local_repo_path"]
    
    # Check if the repository folder already exists
    if os.path.exists(repo_path):
        print(f"Repository already exists at {repo_path}, committing unstaged changes...")

        # Add and commit any unstaged changes before pulling
        add_command = f'git -C "{repo_path}" add .'
        subprocess.run(add_command, shell=True)

        commit_message = "Auto-commit before pulling latest changes"
        commit_command = f'git -C "{repo_path}" commit -m "{commit_message}"'
        subprocess.run(commit_command, shell=True)

        # Pull with rebase
        print("Pulling latest changes...")
        pull_command = f'git -C "{repo_path}" pull --rebase'
        subprocess.run(pull_command, shell=True)

    else:
        git_clone_url = f'{config["system"]["git_server_url"]}/{config["system"]["git_username"]}/{config["system"]["application_repo"]}.git'
        clone_command = f'git clone {git_clone_url} "{repo_path}"'
        
        print(f"Cloning repository from {git_clone_url}")
        subprocess.run(clone_command, shell=True)



# Function to open the file in VS Code
def open_in_vscode(file_path):
    vscode_command = f'code "{file_path}"'
    subprocess.run(vscode_command, shell=True)

# Main function to automate the process
def main():
    config = load_config()
    
    # Step 1: Check if the file exists locally
    file_path = check_local_repo(config)
    
    if file_path:
        print(f"File found locally: {file_path}")
        open_in_vscode(file_path)
    else:
        print(f"File not found locally. Cloning or pulling the repository...")
        clone_or_pull_repository(config)
        
        # After pulling/cloning, check again and open in VS Code
        file_path = check_local_repo(config)
        if file_path:
            print(f"File found after cloning/pulling: {file_path}")
            open_in_vscode(file_path)
        else:
            print(f"File still not found after cloning or pulling.")


main()