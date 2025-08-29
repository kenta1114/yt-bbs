#!/usr/bin/env bash
# Railway build script
set -o errexit

echo "Starting Railway build process..."

# Install dependencies
echo "Installing gems..."
bundle install --without development test

# Precompile assets
echo "Precompiling assets..."
bundle exec rails assets:precompile

echo "Railway build completed successfully!"
