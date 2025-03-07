# Aparat Website Testing Project with Selenium & Robot Framework

## Project Overview
This project focuses on testing the Aparat website using Selenium and Robot Framework. It automates UI testing and ensures that key functionalities of the website are working as expected. The test cases cover various aspects of the website's user interface and functionality.

### Test Cases
1. **Opening Aparat website and verifying its title** – Ensures that the page title matches the expected name "Aparat".
2. **Logging into the Aparat website** – Tests the login functionality.
3. **Verifying main elements on the homepage** – Checks the presence of essential elements like the search bar and logo.
4. **Searching for a video and viewing search results** – Ensures that the search function works correctly and returns relevant results.

---

## Installation Requirements
To run this project, make sure you have the following dependencies installed:

```sh
sudo apt install python3 python3-pip
pip3 install selenium
pip3 install robotframework
pip3 install robotframework-seleniumlibrary
pip install selenium webdriver-manager
```

These packages enable automation of browser interactions using Robot Framework and Selenium WebDriver.

---

## How to Run the Tests
Execute the test cases using the following commands:

```sh
robot Aparat-Test-Case_Design.robot
robot Aparat-Test-Case_Compatibility.robot
robot Aparat-Test-Case_Functionality.robot
```

These commands will initiate automated testing for different aspects of the website.

---

## Project Structure & Coding Standards
- All test cases are written in `.robot` files.
- Variables and test steps are defined in the `Apparat-Steps.resource` file for better modularity and reusability.
- The tests follow structured naming conventions to maintain clarity and readability.


