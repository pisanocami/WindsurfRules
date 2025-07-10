# AppForge Project Memory

## Current Project Status
- **Project Name**: AppForge - Full-Stack Application Generator
- **Version**: Latest (January 2025)
- **Status**: Active Development
- **Last Updated**: January 10, 2025

## Recent Major Updates

### Mobile Experience Enhancement (January 10, 2025)
- ✅ Fixed mobile menu React DOM nesting warnings
- ✅ Enhanced AI Assistant button with 44px touch targets
- ✅ Improved color consistency for dark mode
- ✅ Mobile-friendly input optimization (16px font size)
- ✅ App-like styling with blur effects and animations
- ✅ Touch interaction feedback with scale transforms

### Docker Simulator Integration (January 10, 2025)
- ✅ Full Docker containerization system
- ✅ Real-time container management (create, start, stop, remove)
- ✅ Live monitoring with container logs and status
- ✅ Multi-environment support (frontend, backend, full-stack)
- ✅ Mobile-optimized Docker management interface

### Simple Execution Methods (January 10, 2025)
- ✅ 5 alternative execution methods (5s to 5m)
- ✅ Static preview, secure sandbox, Vite preview, online editor
- ✅ Dual-tab interface: Simple vs Docker Advanced
- ✅ Method recommendations based on use case

### Bug Fixes and Improvements (January 10, 2025)
- ✅ Fixed type mismatches in generatedCode initialization
- ✅ Enhanced error handling with global error boundary
- ✅ Fixed UI crashes with null safety checks
- ✅ Improved validation with detailed Zod error messages
- ✅ Fixed download ZIP functionality with proper endpoints

## Current Working Features
1. **Project Management System**: Users, Projects, Generation Logs
2. **Application Generator Service**: Complete code generation pipeline
3. **User Interface**: React with TypeScript, Radix UI, Tailwind CSS
4. **Code Display System**: Syntax highlighting, file tree, diagrams
5. **Docker Simulator**: Full container lifecycle management
6. **Simple Execution**: Multiple execution strategies
7. **Mobile Optimization**: App-like experience with native feel
8. **Export System**: ZIP download with complete project structure

## Known Issues and TODOs
- [ ] Complete testing suite integration
- [ ] Performance optimization for large generated projects
- [ ] Advanced template marketplace features
- [ ] Team collaboration features
- [ ] Plugin system architecture

## Architecture Overview
```
AppForge/
├── client/          # React frontend (Vite + TypeScript + Tailwind)
├── server/          # Express.js backend (TypeScript + Drizzle + PostgreSQL)
├── shared/          # Shared types and schemas
├── migrations/      # Database migrations
└── dist/           # Built application files
```

## Key Technologies in Use
- **Frontend**: React 18, TypeScript, Vite, Radix UI, shadcn/ui, Tailwind CSS
- **Backend**: Express.js, TypeScript, Node.js ES modules, Drizzle ORM
- **Database**: PostgreSQL (Neon serverless ready)
- **State**: TanStack Query, React Context, React Hook Form
- **Routing**: Wouter (lightweight)
- **Validation**: Zod for runtime validation
- **Containers**: Docker simulation and real containerization
- **Development**: Hot reload, TypeScript strict mode, ESLint

## User Communication Preference
- **Style**: Simple, everyday language
- **Approach**: Break down complex concepts clearly
- **Examples**: Provide practical, real-world examples
- **Avoid**: Technical jargon unless necessary

## Recent Learning and Insights
1. **Mobile-First**: App-like experience significantly improves user engagement
2. **Touch Targets**: 44px minimum is crucial for mobile accessibility
3. **Docker Integration**: Seniors developers appreciate real container testing
4. **Execution Speed**: Multiple execution methods serve different use cases
5. **Error Handling**: Comprehensive error boundaries prevent UI crashes
6. **TypeScript**: Strict typing prevents many runtime issues
7. **Dark Mode**: Semantic color classes essential for proper theming

## Performance Benchmarks
- **Frontend Build**: ~3-5 seconds with Vite
- **Backend Startup**: ~1-2 seconds with hot reload
- **Database Queries**: <100ms with proper indexing
- **Container Creation**: ~30 seconds for full-stack apps
- **Static Preview**: <5 seconds for immediate feedback

## Development Patterns Established
1. **Component Organization**: Feature-based structure
2. **API Design**: RESTful with consistent error handling
3. **Database Design**: Drizzle schema with proper relationships
4. **Error Handling**: Global boundaries with user-friendly messages
5. **Mobile Optimization**: Touch-first design principles
6. **Container Strategy**: Multi-environment Docker configurations

## Security Measures Implemented
- **Input Validation**: Zod validation on all user inputs
- **Database Security**: Drizzle ORM prevents SQL injection
- **Session Management**: PostgreSQL-based secure sessions
- **Environment Variables**: Proper secret management
- **CORS Configuration**: Appropriate cross-origin settings

## Next Sprint Priorities
1. **Testing Integration**: Comprehensive test suite
2. **Performance Optimization**: Large project handling
3. **Template Enhancement**: More sophisticated templates
4. **Analytics Dashboard**: User behavior insights
5. **Collaboration Features**: Team workspace capabilities
