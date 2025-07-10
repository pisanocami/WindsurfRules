# Frontend Development Rules - React + TypeScript + Radix UI

## Framework Configuration
- **Build Tool**: Use Vite for fast development and optimized builds
- **TypeScript**: Strict mode enabled, proper type declarations for all components
- **React Version**: Use React 18+ with functional components and hooks
- **Router**: Wouter for lightweight client-side routing, not React Router

## Component Architecture
- **File Structure**: Place components in client/components with clear organization
- **Naming**: Use PascalCase for React component files (e.g., UserCard.tsx)
- **Exports**: Prefer named exports for components
- **Props**: Always type component props with TypeScript interfaces
- **File Organization**: exported component, subcomponents, helpers, static content, types

## UI Framework - Radix UI + shadcn/ui
- **Components**: Use shadcn/ui components built on Radix UI primitives
- **Installation**: Add components via npx shadcn-ui@latest add [component]
- **Customization**: Modify components in components/ui/ folder as needed
- **Accessibility**: Leverage Radix UI's built-in accessibility features
- **Theming**: Use CSS custom properties for theming support

## Styling Guidelines
- **CSS Framework**: Use Tailwind CSS for all styling
- **Custom CSS**: Avoid raw CSS, use Tailwind utility classes
- **Responsive**: Mobile-first approach with responsive breakpoints
- **Dark Mode**: Use semantic color classes for proper dark mode support
- **CSS Variables**: Use CSS custom properties for theme-aware colors
- **Mobile Touch**: Ensure 44px minimum touch targets for mobile accessibility

## State Management
- **Server State**: Use TanStack Query (React Query) for all API calls
- **Client State**: React Context for local state management
- **Forms**: React Hook Form for form handling with proper validation
- **Validation**: Use Zod for runtime type validation

## TypeScript Best Practices
- **Interfaces**: Prefer interfaces over types for component props
- **Strict Mode**: Enable strict TypeScript checking
- **Any**: Avoid 'any' type, use proper type definitions
- **Generics**: Use generics for reusable components
- **Event Types**: Properly type event handlers and DOM events

## Development Patterns
- **Functional**: Use functional programming patterns, avoid classes
- **Hooks**: Custom hooks for reusable logic
- **Error Boundaries**: Implement error boundaries for robust error handling
- **Lazy Loading**: Use React.lazy for code splitting
- **Memoization**: Use React.memo and useMemo for performance optimization

## File and Directory Structure
```
client/
├── components/
│   ├── ui/              # shadcn/ui components
│   ├── forms/           # Form components
│   ├── layout/          # Layout components
│   └── features/        # Feature-specific components
├── hooks/               # Custom React hooks
├── lib/                 # Utility functions
├── styles/              # Global styles and Tailwind config
└── types/               # TypeScript type definitions
```

## Component Guidelines
- **Size**: Keep components under 200 lines, extract logic to custom hooks
- **Single Responsibility**: Each component should have one clear purpose
- **Composition**: Favor composition over complex prop drilling
- **Performance**: Use React.memo for expensive re-renders
- **Testing**: Write tests for all public component interfaces

## Accessibility Standards
- **ARIA**: Use proper ARIA attributes via Radix UI primitives
- **Keyboard**: Ensure keyboard navigation works correctly
- **Screen Readers**: Test with screen reader compatibility
- **Color Contrast**: Maintain proper color contrast ratios
- **Focus Management**: Proper focus management for modal dialogs

## Recent Updates Integration
- **Mobile App Feel**: Use app-like styling with blur effects and rounded corners
- **Touch Interactions**: Implement press feedback with scale transforms
- **Form Optimization**: 16px font size inputs to prevent iOS zoom
- **Visual Hierarchy**: Optimize spacing and layout for mobile screens
