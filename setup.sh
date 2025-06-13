#!/bin/bash

# PricePal Botswana Setup Script
echo "===== PricePal Botswana Setup Script ====="
echo ""

# Check if Python is installed
if command -v python3 &>/dev/null; then
    PYTHON_CMD="python3"
elif command -v python &>/dev/null; then
    PYTHON_CMD="python"
else
    echo "Python is not installed. Please install Python 3.8+ and try again."
    exit 1
fi

# Check if Node.js is installed
if ! command -v node &>/dev/null; then
    echo "Node.js is not installed. Please install Node.js 16+ and try again."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &>/dev/null; then
    echo "npm is not installed. Please install npm and try again."
    exit 1
fi

# Setup Backend
echo "===== Setting up Django Backend ====="
cd backend

# Create and activate virtual environment
echo "Creating Python virtual environment..."
$PYTHON_CMD -m venv env

# Activate virtual environment based on OS
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    source env/Scripts/activate
else
    source env/bin/activate
fi

# Install dependencies
echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Backend setup complete!"
cd ..

# Setup Mobile App
echo ""
echo "===== Setting up React Native Mobile App ====="
cd mobile-app

# Install dependencies
echo "Installing Node.js dependencies..."
npm install

# Install Expo CLI globally if not already installed
if ! command -v expo &>/dev/null; then
    echo "Installing Expo CLI globally..."
    npm install -g expo-cli
fi

echo "Mobile app setup complete!"
cd ..

echo ""
echo "===== Setup Complete! ====="
echo ""
echo "To run the Django backend:"
echo "  1. cd backend"
echo "  2. Activate the virtual environment:"
echo "     - On Windows: source env/Scripts/activate"
echo "     - On macOS/Linux: source env/bin/activate"
echo "  3. python manage.py runserver"
echo ""
echo "To run the React Native mobile app:"
echo "  1. cd mobile-app"
echo "  2. npm start"
echo ""
echo "Happy coding!"
