## Setup

1. Install dependencies:
    ```sh
    pip install -r requirements.txt
    ```
2. Git:
    ```sh
    git clone https://github.com/KSTN-coder/airbnb.git
    git fetch
    git pull
    git push
    git checkout search
    git branch search
    git merge main
    git commit -m “ ”
    ```
3. Run Tests:
    ```sh
    python run_test.py
    robot -d output TestCase/search/search_functionality.robot
    robot -d output TestCase/login/login.robot
    ```