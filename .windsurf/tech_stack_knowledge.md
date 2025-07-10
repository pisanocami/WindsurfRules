# AppForge Technical Stack Knowledge - AI Brain

## Frontend Technology Deep Dive

### React 18+ with TypeScript
- **Functional Components**: Always use function components with hooks
- **Strict Mode**: Enable React.StrictMode for development
- **Concurrent Features**: Leverage React 18 concurrent rendering
- **Error Boundaries**: Implement error boundaries for robust UX
- **Performance**: Use React.memo, useMemo, useCallback judiciously

### Vite Build System
- **Configuration**: Optimized vite.config.ts for React and TypeScript
- **Hot Module Replacement**: Fast development with instant updates
- **Bundle Optimization**: Tree shaking, code splitting, dynamic imports
- **Asset Handling**: Automatic asset optimization and caching
- **Development Server**: Proxy configuration for backend integration

### Radix UI + shadcn/ui
- **Accessibility First**: ARIA attributes and keyboard navigation built-in
- **Headless Components**: Unstyled primitives for maximum customization
- **Component Installation**: `npx shadcn-ui@latest add [component]`
- **Customization**: Modify components in `components/ui/` directory
- **Theming**: CSS custom properties for consistent theming

### Tailwind CSS
- **Utility-First**: Compose designs from utility classes
- **Responsive Design**: Mobile-first responsive breakpoints
- **Custom Configuration**: Extend theme in tailwind.config.js
- **Dark Mode**: Use `dark:` prefix for dark mode variants
- **JIT Mode**: Just-In-Time compilation for optimal performance

### State Management
- **TanStack Query**: Server state management with caching, background updates
- **React Context**: Client state for authentication, theme, global UI state
- **React Hook Form**: Form state with validation and performance optimization
- **Zod Validation**: Runtime type validation with excellent TypeScript integration

## Backend Technology Deep Dive

### Express.js with TypeScript
- **ES Modules**: Use "type": "module" in package.json
- **Middleware Stack**: Proper order - body parsing, CORS, authentication, routes
- **Error Handling**: Global error handler with proper HTTP status codes
- **Type Safety**: Strong typing for request/response objects
- **Security**: Helmet, CORS, rate limiting, input validation

### Drizzle ORM
- **Schema Definition**: Define tables with proper types and constraints
- **Type Safety**: Compile-time type checking for all database operations
- **Query Builder**: Intuitive API similar to SQL but type-safe
- **Migrations**: Drizzle Kit for schema migrations and generation
- **Relations**: Define relationships between tables for complex queries

### PostgreSQL
- **Data Types**: Leverage PostgreSQL's rich type system (JSON, arrays, UUIDs)
- **Indexing Strategy**: Proper indexes for performance optimization
- **Connection Pooling**: Efficient connection management for scalability
- **Transactions**: Use database transactions for data consistency
- **JSON Support**: Store and query JSON data efficiently

### Development Workflow
- **Hot Reload**: Seamless development with tsx and nodemon
- **Environment Configuration**: Proper .env file management
- **Database Migrations**: Version-controlled schema changes
- **API Documentation**: Clear endpoint documentation and examples

## Integration Patterns

### Frontend-Backend Communication
```typescript
// API client with proper typing
interface ApiResponse<T> {
  success: boolean;
  data?: T;
  error?: string;
}

// React Query hook pattern
const useProjects = () => {
  return useQuery({
    queryKey: ['projects'],
    queryFn: () => fetch('/api/projects').then(res => res.json())
  });
};
```

### Database Patterns
```typescript
// Drizzle schema example
export const projects = pgTable('projects', {
  id: serial('id').primaryKey(),
  name: varchar('name', { length: 255 }).notNull(),
  description: text('description'),
  createdAt: timestamp('created_at').defaultNow(),
  updatedAt: timestamp('updated_at').defaultNow(),
});

// Type-safe query
const allProjects = await db.select().from(projects);
```

### Component Patterns
```typescript
// Component with proper typing
interface ProjectCardProps {
  project: {
    id: number;
    name: string;
    description?: string;
  };
  onEdit: (id: number) => void;
}

export const ProjectCard: React.FC<ProjectCardProps> = ({ project, onEdit }) => {
  return (
    <Card className="p-4">
      <h3 className="text-lg font-semibold">{project.name}</h3>
      {project.description && (
        <p className="text-muted-foreground">{project.description}</p>
      )}
      <Button onClick={() => onEdit(project.id)}>Edit</Button>
    </Card>
  );
};
```

## Performance Optimization

### Frontend Performance
- **Code Splitting**: Route-based and component-based code splitting
- **Lazy Loading**: React.lazy for non-critical components
- **Image Optimization**: WebP format, responsive images, lazy loading
- **Bundle Analysis**: Regular bundle size analysis and optimization
- **Caching Strategy**: Service worker for offline functionality

### Backend Performance
- **Database Optimization**: Proper indexing, query optimization
- **Connection Pooling**: Efficient database connection management
- **Caching**: Redis for session storage and API response caching
- **Compression**: Gzip compression for API responses
- **Rate Limiting**: Protect APIs from abuse

### Database Performance
- **Index Strategy**: Composite indexes for complex queries
- **Query Optimization**: Use EXPLAIN to analyze query performance
- **Connection Management**: Proper connection pooling configuration
- **Data Types**: Choose appropriate data types for storage efficiency

## Security Implementation

### Frontend Security
- **XSS Prevention**: Proper output encoding, Content Security Policy
- **CSRF Protection**: CSRF tokens for state-changing operations
- **Input Validation**: Client-side validation with server-side verification
- **Secure Storage**: Secure handling of sensitive data in browser

### Backend Security
- **Authentication**: Secure session management with proper expiration
- **Authorization**: Role-based access control for API endpoints
- **Input Validation**: Comprehensive validation with Zod schemas
- **SQL Injection**: Drizzle ORM prevents SQL injection by design
- **Rate Limiting**: API rate limiting to prevent abuse

### Database Security
- **Access Control**: Database user with minimal required permissions
- **Encryption**: Encrypt sensitive data at rest
- **Backup Security**: Secure backup storage and access
- **Connection Security**: SSL/TLS for database connections

## Mobile Optimization

### Responsive Design
- **Mobile-First**: Design for mobile screens first, then scale up
- **Touch Targets**: Minimum 44px touch targets for accessibility
- **Viewport**: Proper viewport meta tag configuration
- **Performance**: Optimize for slower mobile networks

### App-like Experience
- **Native Feel**: Use native-like animations and transitions
- **Offline Support**: Service worker for offline functionality
- **Touch Gestures**: Proper touch and swipe gesture handling
- **Loading States**: Smooth loading indicators and skeleton screens

## Development Best Practices

### Code Quality
- **TypeScript Strict**: Enable strict mode for better type safety
- **ESLint**: Comprehensive linting rules for code consistency
- **Prettier**: Automatic code formatting for consistency
- **Testing**: Unit tests for critical business logic
- **Documentation**: Clear code comments and README files

### Git Workflow
- **Branch Strategy**: Feature branches with pull request reviews
- **Commit Messages**: Clear, descriptive commit messages
- **Code Review**: Peer review for all code changes
- **CI/CD**: Automated testing and deployment pipelines

### Error Handling
- **Global Error Boundaries**: React error boundaries for UI errors
- **API Error Handling**: Consistent error response format
- **Database Error Handling**: Proper database error management
- **User Feedback**: Clear error messages for users

## Deployment and DevOps

### Build Process
- **Production Builds**: Optimized builds for production deployment
- **Environment Variables**: Proper environment configuration
- **Asset Optimization**: Minification, compression, caching
- **Health Checks**: Application health monitoring endpoints

### Container Strategy
- **Multi-stage Builds**: Optimized Docker images for production
- **Security**: Non-root users, minimal base images
- **Orchestration**: Docker Compose for local development
- **Monitoring**: Container health checks and logging

### Monitoring
- **Application Monitoring**: Performance and error tracking
- **Database Monitoring**: Query performance and connection health
- **Infrastructure Monitoring**: Server resources and availability
- **User Analytics**: User behavior and application usage tracking
