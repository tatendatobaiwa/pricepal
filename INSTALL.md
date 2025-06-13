# PricePal Botswana - Installation Guide

This document provides instructions for setting up the PricePal Botswana project for development.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Python 3.8+**: Required for the Django backend
- **Node.js 16+**: Required for the React Native mobile app
- **npm**: Required for package management of the mobile app
- **PostgreSQL**: Required for database (as specified in project documentation)

## Quick Installation (Recommended)

We've provided a setup script that automates the installation process.

1. Open a terminal in the project root directory
2. Run the setup script:

```bash
# Make the script executable (if not already)
chmod +x setup.sh

# Run the script
./setup.sh
```

The script will:
- Create a Python virtual environment for the backend
- Install all Python dependencies
- Install all Node.js dependencies for the mobile app
- Install Expo CLI globally if not already installed

## Manual Installation

If you prefer to install components manually, follow these steps:

### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```

2. Create a Python virtual environment:
   ```bash
   python -m venv env
   ```

3. Activate the virtual environment:
   - **Windows**:
     ```bash
     env\Scripts\activate
     ```
   - **macOS/Linux**:
     ```bash
     source env/bin/activate
     ```

4. Install Python dependencies:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

### Mobile App Setup

1. Navigate to the mobile app directory:
   ```bash
   cd mobile-app
   ```

2. Install Node.js dependencies:
   ```bash
   npm install
   ```

3. Install Expo CLI globally (if not already installed):
   ```bash
   npm install -g expo-cli
   ```

## Database Setup

This project uses PostgreSQL. To set up the database:

1. Install PostgreSQL if not already installed
2. Create a database for the project
3. Update the database configuration in the Django settings

## Running the Project

### Backend

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```

2. Activate the virtual environment (if not already activated)

3. Run the Django development server:
   ```bash
   python manage.py runserver
   ```

### Mobile App

1. Navigate to the mobile app directory:
   ```bash
   cd mobile-app
   ```

2. Start the Expo development server:
   ```bash
   npm start
   ```

3. Follow the instructions in the terminal to run the app on a device or emulator

## Troubleshooting

- If you encounter issues with Python dependencies, try updating pip:
  ```bash
  pip install --upgrade pip
  ```

- If you encounter issues with Node.js dependencies, try clearing the npm cache:
  ```bash
  npm cache clean --force
  ```

- For database connection issues, verify your PostgreSQL installation and credentials

## Next Steps

After installation, refer to the README.md file for an overview of the project structure and development guidelines.
