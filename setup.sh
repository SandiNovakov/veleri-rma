#!/bin/bash

# DB setup
cd backend/api
echo "================================="
echo "Postavljanje okruženja..."
echo "================================="
echo
cp .env.example .env
echo "kopiram .env.example u .env..."
#
# Backend setup
echo
echo "================================="
echo "Instaliranje paketa za API..."
echo "================================="
npm install # This installs ALL dependencies from package.json
cd ../..

# Frontend setup
echo
echo "================================="
echo "Instaliranje paketa za Quasar..."
echo "================================="
cd frontend/quasar-project
npm install -g @quasar/cli
npm install
cd ../..

echo
echo "================================="
echo "Instaliranje paketa za projekt..."
echo "================================="
npm install -g concurrently
echo
echo "================================="
echo "Instaliranje gotovo!"
echo "================================="
echo
echo "Pokrenite servere: './start.sh'"
