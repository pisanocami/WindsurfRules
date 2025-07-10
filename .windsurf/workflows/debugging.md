# Debugging and Troubleshooting Workflow - AppForge

## Overview
Comprehensive debugging workflow for identifying and resolving issues in AppForge-generated applications.

## Quick Debugging Commands
```
/debug-frontend          # Debug frontend React application
/debug-backend           # Debug backend Express.js application  
/debug-database          # Debug database and Drizzle ORM issues
/debug-build             # Debug build and compilation issues
/debug-mobile            # Debug mobile-specific issues
/debug-docker            # Debug containerization issues
```

## Common Issue Categories

### 1. Frontend Issues

#### React Component Problems
- **Symptoms**: Components not rendering, props not passed correctly
- **Check**: Component props types, export/import statements
- **Fix**: Verify TypeScript interfaces, check component hierarchy
- **Tools**: React DevTools, browser console, TypeScript compiler

#### Styling Issues
- **Symptoms**: Tailwind classes not applying, responsive design broken
- **Check**: Tailwind configuration, CSS class names, responsive breakpoints
- **Fix**: Verify tailwind.config.js, check CSS purging, inspect mobile styles
- **Tools**: Browser DevTools, responsive design mode

#### State Management Problems
- **Symptoms**: React Query not working, context not updating
- **Check**: Query keys, context providers, hook dependencies
- **Fix**: Verify TanStack Query setup, context provider placement
- **Tools**: React Query DevTools, React DevTools

### 2. Backend Issues

#### API Endpoint Problems
- **Symptoms**: 404 errors, 500 internal server errors, CORS issues
- **Check**: Route definitions, middleware order, error handling
- **Fix**: Verify Express.js routes, check middleware configuration
- **Tools**: Postman, curl, server logs

#### Database Connection Issues
- **Symptoms**: Database connection failures, query errors
- **Check**: Database URL, connection pool, schema definitions
- **Fix**: Verify PostgreSQL connection, check Drizzle configuration
- **Tools**: Database client, Drizzle Studio, server logs

#### TypeScript Compilation Errors
- **Symptoms**: Build failures, type errors, import/export issues
- **Check**: TypeScript configuration, type definitions, module resolution
- **Fix**: Update tsconfig.json, fix type definitions, check imports
- **Tools**: TypeScript compiler, ESLint, IDE error checking

### 3. Database Issues

#### Drizzle ORM Problems
- **Symptoms**: Schema errors, migration failures, query type errors
- **Check**: Schema definitions, migration files, query syntax
- **Fix**: Update schema, run migrations, fix query types
- **Tools**: Drizzle Kit, Drizzle Studio, PostgreSQL client

#### Migration Issues
- **Symptoms**: Migration failures, schema out of sync
- **Check**: Migration files, database state, schema changes
- **Fix**: Reset migrations, regenerate schema, manual fixes
- **Tools**: Drizzle Kit, database migration tools

### 4. Build and Development Issues

#### Vite Build Problems
- **Symptoms**: Build failures, asset loading issues, hot reload not working
- **Check**: Vite configuration, import paths, asset references
- **Fix**: Update vite.config.ts, fix import paths, restart dev server
- **Tools**: Vite build output, browser network tab

#### TypeScript Configuration
- **Symptoms**: Type checking errors, module resolution issues
- **Check**: tsconfig.json, type definitions, import statements
- **Fix**: Update TypeScript config, install type packages
- **Tools**: TypeScript compiler, VS Code error checking

### 5. Mobile-Specific Issues

#### Responsive Design Problems
- **Symptoms**: Layout breaks on mobile, touch targets too small
- **Check**: Tailwind responsive classes, component sizing
- **Fix**: Add mobile-first responsive design, increase touch targets
- **Tools**: Browser responsive mode, actual mobile devices

#### Touch Interaction Issues
- **Symptoms**: Buttons not responding, scroll problems
- **Check**: Touch event handlers, CSS touch-action properties
- **Fix**: Add proper touch handlers, optimize for mobile interactions
- **Tools**: Mobile browser DevTools, touch simulation

### 6. Docker and Containerization Issues

#### Container Build Failures
- **Symptoms**: Docker build errors, image creation failures
- **Check**: Dockerfile syntax, build context, dependencies
- **Fix**: Update Dockerfile, check build context, install dependencies
- **Tools**: Docker build logs, container inspection

#### Container Runtime Issues
- **Symptoms**: Container crashes, port binding failures
- **Check**: Container configuration, port mappings, environment variables
- **Fix**: Update docker-compose.yml, check port conflicts
- **Tools**: Docker logs, container status, network inspection

## Debugging Workflow Steps

### Step 1: Issue Identification
```
/identify-issue
```
- **Reproduce**: Can the issue be consistently reproduced?
- **Scope**: Is it frontend, backend, database, or full-stack?
- **Environment**: Development, testing, or production?
- **Recent Changes**: What was changed before the issue appeared?

### Step 2: Log Analysis
```
/analyze-logs
```
- **Browser Console**: Check for JavaScript errors and warnings
- **Server Logs**: Review Express.js and Node.js logs
- **Database Logs**: Check PostgreSQL and Drizzle ORM logs
- **Build Logs**: Review Vite and TypeScript compilation logs

### Step 3: Isolation Testing
```
/isolate-problem
```
- **Component Level**: Test individual components in isolation
- **API Level**: Test API endpoints independently
- **Database Level**: Test database queries directly
- **Build Level**: Test build process step by step

### Step 4: Environment Verification
```
/verify-environment
```
- **Dependencies**: Check all package versions and compatibility
- **Configuration**: Verify all configuration files
- **Environment Variables**: Check all required environment variables
- **Database**: Verify database schema and connections

### Step 5: Systematic Fixes
```
/apply-fixes
```
- **Start Simple**: Apply the simplest fix first
- **Test Incrementally**: Test after each change
- **Document Changes**: Record what was changed and why
- **Verify Fix**: Ensure the fix doesn't break other functionality

## Prevention Strategies

### Code Quality
- **TypeScript**: Use strict TypeScript to catch errors early
- **Linting**: Use ESLint to enforce code standards
- **Testing**: Write tests for critical functionality
- **Code Review**: Review generated code before deployment

### Documentation
- **Code Comments**: Add clear comments for complex logic
- **API Documentation**: Document all API endpoints
- **Setup Instructions**: Provide clear setup and configuration docs
- **Troubleshooting Guide**: Maintain common issues and solutions

### Monitoring
- **Error Tracking**: Implement error tracking in applications
- **Performance Monitoring**: Monitor application performance
- **Log Management**: Centralize and organize log files
- **Health Checks**: Implement health check endpoints

## Emergency Procedures

### Critical Issues
1. **Identify Impact**: Determine scope and severity
2. **Immediate Response**: Apply quick fixes or rollbacks
3. **Communication**: Notify stakeholders of issues and progress
4. **Resolution**: Implement proper fix and test thoroughly
5. **Post-Mortem**: Analyze root cause and prevent recurrence

### Recovery Procedures
- **Backup Restoration**: Restore from known good state
- **Configuration Reset**: Reset to default configurations
- **Dependency Reinstall**: Clean install of all dependencies
- **Database Reset**: Reset database to known good schema
- **Container Rebuild**: Rebuild containers from scratch

## Tools and Resources

### Development Tools
- **Browser DevTools**: Debugging web applications
- **React DevTools**: React-specific debugging
- **Postman**: API testing and debugging
- **Drizzle Studio**: Database schema and query testing

### Monitoring Tools
- **Console Logs**: Browser and server console output
- **Error Tracking**: Application error monitoring
- **Performance Profiling**: Application performance analysis
- **Network Monitoring**: API and database request monitoring

### External Resources
- **Documentation**: Official documentation for all technologies
- **Community**: Stack Overflow, GitHub issues, Discord channels
- **Support**: Professional support channels when available
