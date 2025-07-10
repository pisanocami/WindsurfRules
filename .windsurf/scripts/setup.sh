#!/bin/bash
# AppForge Development Setup Script

echo "🚀 Setting up AppForge development environment..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18+ first."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "❌ Node.js version 18+ required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js version: $(node -v)"

# Check if Docker is installed (optional)
if command -v docker &> /dev/null; then
    echo "✅ Docker is available: $(docker --version)"
else
    echo "⚠️  Docker not found. Docker features will be unavailable."
fi

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
cd client
npm install
cd ..

# Install backend dependencies  
echo "📦 Installing backend dependencies..."
cd server
npm install
cd ..

# Install shared dependencies
echo "📦 Installing shared dependencies..."
npm install

# Setup environment files
echo "🔧 Setting up environment files..."
if [ ! -f "server/.env" ]; then
    cp server/.env.example server/.env
    echo "✅ Created server/.env from example"
fi

if [ ! -f "client/.env" ]; then
    cp client/.env.example client/.env 2>/dev/null || echo "# Client environment variables" > client/.env
    echo "✅ Created client/.env"
fi

# Setup database (if PostgreSQL is available)
echo "🗄️  Database setup..."
if command -v psql &> /dev/null; then
    echo "✅ PostgreSQL available"
    echo "🔧 Run 'npm run db:setup' to configure database"
else
    echo "⚠️  PostgreSQL not found. Please install PostgreSQL or configure remote database."
fi

echo ""
echo "🎉 Setup complete! Next steps:"
echo "1. Configure your database connection in server/.env"
echo "2. Run 'npm run dev' to start development servers"
echo "3. Open http://localhost:3000 to access AppForge"
echo ""
echo "📖 Check .windsurf/docs/README.md for detailed documentation"
