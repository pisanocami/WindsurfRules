# Docker & Containerization Rules - AppForge Development

## Docker Strategy
- **Development**: Use Docker for testing generated applications
- **Production**: Container-ready deployment configurations
- **Simulation**: Docker simulator for senior developers with real container management
- **Multi-Environment**: Support for frontend, backend, and full-stack configurations

## Container Architecture
- **Base Images**: Use official Node.js images for consistency
- **Multi-Stage**: Multi-stage builds for optimized production images
- **Layers**: Optimize Docker layers for better caching
- **Security**: Use non-root users in containers

## Development Workflow
- **Local Testing**: Test generated applications in isolated containers
- **Port Management**: Proper port mapping for different services
- **Volume Mounting**: Mount source code for development
- **Environment Variables**: Secure environment variable management

## Generated Application Containers
```dockerfile
# Frontend Dockerfile template
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

```dockerfile
# Backend Dockerfile template
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
```

## Docker Compose Integration
```yaml
# docker-compose.yml template for full-stack apps
version: '3.8'
services:
  frontend:
    build: ./client
    ports:
      - "3000:80"
    depends_on:
      - backend
  
  backend:
    build: ./server
    ports:
      - "3001:3000"
    environment:
      - DATABASE_URL=${DATABASE_URL}
    depends_on:
      - database
  
  database:
    image: postgres:15-alpine
    environment:
      - POSTGRES_DB=${DB_NAME}
      - POSTGRES_USER=${DB_USER}
      - POSTGRES_PASSWORD=${DB_PASSWORD}
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

## Container Management API
- **Create**: Container creation with proper configuration
- **Start/Stop**: Container lifecycle management
- **Monitor**: Real-time container status and logs
- **Remove**: Clean container removal and cleanup
- **Network**: Proper container networking setup

## Docker Simulator Features
- **Real-time Testing**: Live application preview in containers
- **Log Monitoring**: View container logs for debugging
- **Status Updates**: Container health and performance monitoring
- **Development Mode**: Smart simulation for development environments
- **Production Ready**: Actual Docker integration for production

## Performance Optimization
- **Image Size**: Minimize container image sizes
- **Build Cache**: Leverage Docker build cache effectively
- **Resource Limits**: Set appropriate CPU and memory limits
- **Health Checks**: Implement container health checks

## Security Best Practices
- **Non-root Users**: Run containers as non-root users
- **Secrets Management**: Secure handling of secrets and environment variables
- **Network Security**: Proper container network isolation
- **Image Scanning**: Scan images for vulnerabilities

## Generated Code Integration
- **Automatic Dockerfile**: Generate appropriate Dockerfiles for each project type
- **Compose Files**: Create docker-compose.yml for multi-service applications
- **Environment**: Include .env.example with proper Docker variables
- **Scripts**: Package scripts for container operations

## AppForge Docker Integration
- **One-click Testing**: Immediate container deployment for testing
- **Mobile-friendly**: Docker management interface optimized for mobile
- **Live Monitoring**: Real-time container status in the UI
- **Error Handling**: Graceful error handling for container operations
- **Cleanup**: Automatic cleanup of test containers

## Container Patterns by Application Type
- **React SPA**: Nginx-based static file serving
- **Node.js API**: Express.js with proper health checks
- **Full-stack**: Multi-container setup with database
- **Microservices**: Individual containers for each service

## Development vs Production
- **Development**: Volume mounting, hot reload, debugging tools
- **Production**: Optimized images, proper logging, monitoring
- **Environment**: Different configurations for each environment
- **Secrets**: Secure secret management in production containers
