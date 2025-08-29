#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Starting build process..."

# Install dependencies
echo "Installing gems..."
bundle install

# Precompile assets
echo "Precompiling assets..."
bundle exec rails assets:precompile

# Clean old assets
echo "Cleaning assets..."
bundle exec rails assets:clean

# Run database migrations
echo "Running migrations..."
bundle exec rails db:migrate

echo "Build process completed successfully!"
