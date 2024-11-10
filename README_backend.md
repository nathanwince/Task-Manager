# Backend Setup Guide for Task Manager App

This guide will help you set up and run the backend of the Task Manager App using FastAPI, SQLAlchemy, and MySQL.


# Step 1: Clone the Repository
git clone https://github.com/nathanwince/Task-Manager.git
cd Task-Manager
# Check out main branch and pull it 
git checkout main
git pull origin main
# Push to your specific branch and not the main branch
# replace username-feature with github username and branch. for ex. (git push origin lancanon-audybranch)
git push origin username-feature


## Step 2:  Set Up a Virtual Environment

## Create a virtual environment named "venv" 
python -m venv venv
## Activate the virtual environment
## On macOS/Linux:
source venv/bin/activate
## On Windows:
venv\Scripts\activate


### Step 3: Install Dependencies

### Installing necessary packages:  
pip install -r requirements.txt


#### Step 4: Set Up the Database (do this in  terminal/ command prompt -NOT IN  VS CODE- )

#### Open terminal and log in to root user in mysql
mysql -u root -p

Ensure that MySQL is running and that you’ve created a user with the following credentials for this project:

  - **Username**: `rollcall`
  - **Password**: `Rollcall1234!`

  To create this user in MySQL, use the following commands:

  ```sql
  CREATE USER 'rollcall'@'localhost' IDENTIFIED BY 'Rollcall1234!';
  GRANT ALL PRIVILEGES ON TaskManager.* TO 'rollcall'@'localhost';
  FLUSH PRIVILEGES;

#### Create Database
CREATE DATABASE TaskManager;
USE TaskManager;




##### Step 5: Run the server:
`uvicorn api.main:app --reload`
##### Test API by built-in docs:
[http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)