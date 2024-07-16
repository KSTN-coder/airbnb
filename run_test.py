import os
import shutil
import subprocess

# Define the output directory path

output_dir = "output"

# Function to clean the output directory
def clean_output_directory():
    if os.path.exists(output_dir):
        shutil.rmtree(output_dir)
    os.makedirs(output_dir)

# Function to run the Robot Framework tests
def run_robot_tests():
    test_cases = [
        "TestCase/search/search functionality.robot",
        # "TestCase/login/login.robot"
    ]
    for test_case in test_cases:
        subprocess.run(["robot", "-d", output_dir, test_case], check=True)

if __name__ == "__main__":
    clean_output_directory()
    run_robot_tests()