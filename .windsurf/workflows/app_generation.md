# AppForge Application Generation Workflow

## Overview
This workflow guides the complete process of generating a full-stack application in AppForge, from user input to deployable code.

## Prerequisites
- AppForge development environment is running
- All dependencies are installed (React, Express.js, Drizzle ORM, etc.)
- Database connection is configured
- Docker is available for testing (optional)

## Workflow Steps

### Step 1: Project Initialization
```
/init-project
```
- Create new project entry in database
- Generate unique project ID
- Initialize project structure in memory
- Set up basic configuration

### Step 2: Requirements Gathering
```
/gather-requirements
```
- **User Input**: Capture application idea and description
- **Technical Preferences**: Framework selection (already set for AppForge)
- **Features**: Identify core features and functionality
- **Architecture**: Determine if SPA, API, or full-stack
- **Database**: Define data models and relationships

### Step 3: Technical Configuration
```
/configure-stack
```
- **Frontend**: React + TypeScript + Vite + Tailwind CSS + Radix UI
- **Backend**: Express.js + TypeScript + Drizzle ORM + PostgreSQL
- **Authentication**: Session-based authentication setup
- **State Management**: React Query + React Context configuration
- **Routing**: Wouter router setup

### Step 4: Code Generation
```
/generate-application
```

#### Frontend Generation:
- **Components**: Generate React components with TypeScript
- **Pages**: Create application pages and routing
- **Forms**: Form components with React Hook Form + Zod validation
- **UI**: Implement shadcn/ui components with Tailwind styling
- **State**: Set up React Query hooks and context providers
- **Types**: Generate TypeScript interfaces and types

#### Backend Generation:
- **API Routes**: Create Express.js routes with proper error handling
- **Database Schema**: Generate Drizzle schema for PostgreSQL
- **Services**: Business logic services with type safety
- **Middleware**: Authentication, validation, and error middleware
- **Types**: Shared TypeScript types between frontend and backend

#### Configuration:
- **Build Tools**: Vite configuration for frontend
- **TypeScript**: tsconfig.json for both frontend and backend
- **Environment**: .env files with proper variables
- **Package.json**: Dependencies and scripts for both applications

### Step 5: Database Setup
```
/setup-database
```
- **Schema Generation**: Create PostgreSQL tables using Drizzle
- **Migrations**: Generate and apply database migrations
- **Seeds**: Optional seed data for development
- **Connections**: Configure database connections and pooling

### Step 6: Integration and Testing
```
/integrate-and-test
```
- **API Integration**: Connect frontend to backend APIs
- **Data Flow**: Ensure proper data flow between components
- **Error Handling**: Implement comprehensive error handling
- **Validation**: Test form validation and API validation
- **Authentication**: Verify authentication flows work correctly

### Step 7: Mobile Optimization
```
/optimize-mobile
```
- **Responsive Design**: Ensure mobile-first responsive design
- **Touch Targets**: Minimum 44px touch targets for mobile
- **App-like Feel**: Implement app-like styling with blur effects
- **Performance**: Optimize for mobile performance
- **Dark Mode**: Ensure dark mode works across all components

### Step 8: Testing and Quality Assurance
```
/run-tests
```
- **Static Analysis**: TypeScript checking and linting
- **Unit Tests**: Run component and service tests
- **Integration Tests**: Test API endpoints and data flow
- **Mobile Testing**: Test mobile responsiveness and touch interactions
- **Accessibility**: Verify accessibility standards compliance

### Step 9: Docker Containerization (Optional)
```
/containerize-app
```
- **Frontend Container**: Create optimized frontend Docker image
- **Backend Container**: Create backend Docker image with proper health checks
- **Database**: Configure PostgreSQL container or external database
- **Docker Compose**: Set up multi-container application
- **Testing**: Test application in containerized environment

### Step 10: Export and Deployment Preparation
```
/prepare-deployment
```
- **Build Optimization**: Optimize builds for production
- **Environment Configuration**: Set up production environment variables
- **Documentation**: Generate comprehensive README and documentation
- **Deployment Scripts**: Create deployment scripts and configurations
- **ZIP Export**: Package everything for download

## Error Handling and Recovery
- **Validation Errors**: Provide clear error messages for invalid inputs
- **Generation Failures**: Graceful fallback and retry mechanisms
- **Dependency Issues**: Automatic dependency resolution and installation
- **Build Errors**: Clear error reporting with suggested fixes

## Quality Checkpoints
1. **Input Validation**: Ensure all user inputs are valid and complete
2. **Code Quality**: Generated code follows best practices and standards
3. **Type Safety**: All TypeScript types are properly defined
4. **Integration**: Frontend and backend integrate seamlessly
5. **Performance**: Application meets performance requirements
6. **Mobile**: Mobile experience is optimized and functional
7. **Accessibility**: Meets WCAG accessibility guidelines
8. **Security**: Security best practices are implemented

## Output Deliverables
- **Complete Application**: Fully functional full-stack application
- **Source Code**: Organized, commented, and documented code
- **Configuration**: All necessary configuration files
- **Documentation**: README, API docs, and setup instructions
- **Docker Support**: Containerization files if requested
- **Deployment**: Ready-to-deploy application package

## Success Criteria
- Application runs without errors in development environment
- All core features function as specified
- Mobile experience is optimized and responsive
- Code follows established architecture patterns
- TypeScript compilation succeeds without errors
- Tests pass (if generated)
- Docker containers run successfully (if applicable)
- Export package is complete and ready for deployment
