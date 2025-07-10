# Backend Development Rules - Express.js + TypeScript + Drizzle ORM

## Framework Configuration
- **Runtime**: Node.js with ES modules (type: "module" in package.json)
- **Framework**: Express.js with TypeScript for all server code
- **Build**: Use tsx for TypeScript execution in development
- **Hot Reload**: Integrate with Vite for seamless development experience

## Database Architecture
- **ORM**: Use Drizzle ORM for all database operations
- **Database**: PostgreSQL (configured for Neon serverless)
- **Type Safety**: Drizzle provides compile-time type safety for all queries
- **Migrations**: Use Drizzle Kit for schema management and migrations
- **Connection**: Connection pooling for production environments

## API Design Principles
- **RESTful**: Follow REST conventions for API endpoints
- **JSON**: All API responses in JSON format
- **Error Handling**: Consistent error response structure
- **Validation**: Use Zod for input validation on all routes
- **Status Codes**: Proper HTTP status codes for all responses

## File Structure
```
server/
├── api/                 # API route handlers
├── db/                  # Database configuration and schema
├── middleware/          # Express middleware
├── services/            # Business logic services
├── types/               # TypeScript type definitions
└── utils/               # Utility functions
```

## Database Patterns
- **Schema Definition**: Define all tables using Drizzle schema syntax
- **Relationships**: Use Drizzle relations for table relationships
- **Queries**: Use Drizzle query builder for type-safe database operations
- **Transactions**: Use database transactions for multi-table operations
- **Indexing**: Proper indexing strategy for performance

## Session Management
- **Storage**: PostgreSQL-based session storage using connect-pg-simple
- **Security**: Secure session configuration with proper options
- **Expiration**: Appropriate session expiration times
- **Cleanup**: Regular session cleanup for expired sessions

## Development Standards
- **Type Safety**: Strict TypeScript with explicit return types
- **Error Handling**: Comprehensive error handling with proper logging
- **Validation**: Input validation for all API endpoints
- **Documentation**: JSDoc comments for all public functions
- **Testing**: Unit tests for all service functions

## Code Generation Service
- **Templates**: Modular template system for different frameworks
- **AI Integration**: Process user requirements through AI pipeline
- **Output**: Generate complete application scaffolds
- **File Structure**: Create proper directory structure and files
- **Configuration**: Include deployment and environment configurations

## API Endpoints Structure
```typescript
// Consistent API response format
interface ApiResponse<T> {
  success: boolean;
  data?: T;
  error?: string;
  message?: string;
}

// Proper error handling
app.use((err: Error, req: Request, res: Response, next: NextFunction) => {
  // Error logging and response
});
```

## Database Schema Patterns
```typescript
// Drizzle schema example
export const projects = pgTable('projects', {
  id: serial('id').primaryKey(),
  name: varchar('name', { length: 255 }).notNull(),
  description: text('description'),
  createdAt: timestamp('created_at').defaultNow(),
  updatedAt: timestamp('updated_at').defaultNow(),
});
```

## Environment Configuration
- **Development**: Hot reload with development middleware
- **Production**: Optimized builds with proper error handling
- **Environment Variables**: Secure management of sensitive configuration
- **Database URLs**: Proper database connection string management

## Performance Optimization
- **Connection Pooling**: Efficient database connection management
- **Query Optimization**: Use Drizzle's query builder efficiently
- **Caching**: Implement appropriate caching strategies
- **Monitoring**: Performance monitoring and logging

## Security Best Practices
- **SQL Injection**: Drizzle ORM prevents SQL injection by design
- **Input Validation**: Validate all inputs using Zod schemas
- **CORS**: Proper CORS configuration for frontend integration
- **Environment**: Never commit sensitive environment variables
- **Error Exposure**: Don't expose internal errors to clients

## Recent Features Integration
- **Docker Simulator**: Support for container-based testing
- **Export Functionality**: ZIP file generation for project downloads
- **Multiple Execution**: Support for different execution methods
- **Mobile Optimization**: API optimizations for mobile app experience
