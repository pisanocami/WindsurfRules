#!/bin/bash
# AppForge Development Commands

case "$1" in
    "start"|"dev")
        echo "🚀 Starting AppForge development servers..."
        npm run dev
        ;;
    "build")
        echo "🏗️  Building AppForge for production..."
        npm run build
        ;;
    "test")
        echo "🧪 Running tests..."
        npm run test
        ;;
    "lint")
        echo "🔍 Linting code..."
        npm run lint
        ;;
    "format")
        echo "💅 Formatting code..."
        npm run format
        ;;
    "db:generate")
        echo "🗄️  Generating database migrations..."
        cd server && npm run db:generate && cd ..
        ;;
    "db:migrate")
        echo "🗄️  Running database migrations..."
        cd server && npm run db:migrate && cd ..
        ;;
    "db:studio")
        echo "🎨 Opening Drizzle Studio..."
        cd server && npm run db:studio && cd ..
        ;;
    "docker:build")
        echo "🐳 Building Docker images..."
        docker compose build
        ;;
    "docker:up")
        echo "🐳 Starting Docker containers..."
        docker compose up -d
        ;;
    "docker:down")
        echo "🐳 Stopping Docker containers..."
        docker compose down
        ;;
    "clean")
        echo "🧹 Cleaning build artifacts..."
        rm -rf client/dist server/dist node_modules/.cache
        echo "✅ Cleaned build artifacts"
        ;;
    "reset")
        echo "🔄 Resetting development environment..."
        rm -rf node_modules client/node_modules server/node_modules
        rm -f package-lock.json client/package-lock.json server/package-lock.json
        npm install
        cd client && npm install && cd ..
        cd server && npm install && cd ..
        echo "✅ Environment reset complete"
        ;;
    "status")
        echo "📊 AppForge Development Status:"
        echo "Node.js: $(node -v)"
        echo "npm: $(npm -v)"
        if command -v docker &> /dev/null; then
            echo "Docker: $(docker --version)"
        else
            echo "Docker: Not available"
        fi
        if [ -f "server/.env" ]; then
            echo "Backend config: ✅"
        else
            echo "Backend config: ❌ Missing .env file"
        fi
        if [ -d "node_modules" ]; then
            echo "Dependencies: ✅"
        else
            echo "Dependencies: ❌ Run 'npm install'"
        fi
        ;;
    "help"|*)
        echo "🛠️  AppForge Development Commands:"
        echo ""
        echo "Development:"
        echo "  start, dev     Start development servers"
        echo "  build          Build for production"
        echo "  test           Run tests"
        echo "  lint           Lint code"
        echo "  format         Format code"
        echo ""
        echo "Database:"
        echo "  db:generate    Generate database migrations"
        echo "  db:migrate     Run database migrations"
        echo "  db:studio      Open Drizzle Studio"
        echo ""
        echo "Docker:"
        echo "  docker:build   Build Docker images"
        echo "  docker:up      Start Docker containers"
        echo "  docker:down    Stop Docker containers"
        echo ""
        echo "Maintenance:"
        echo "  clean          Clean build artifacts"
        echo "  reset          Reset development environment"
        echo "  status         Show development status"
        echo "  help           Show this help message"
        ;;
esac
