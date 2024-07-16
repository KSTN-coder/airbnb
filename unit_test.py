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

# Function to run a Robot Framework test case by tag
def run_test_by_tag(tag):
    try:
        subprocess.run(["robot", "-d", output_dir, "-i", tag, "TestCase/search/search functionality.robot"], check=True)
    except subprocess.CalledProcessError:
        print(f"Test {tag} failed but continuing with next test.")

# List of tags corresponding to the test cases
tags = ["TC_001", "TC_002"]

# Clean the output directory
clean_output_directory()

# Run each test case by tag
for tag in tags:
    run_test_by_tag(tag)