# AppForge Windsurf Configuration

Esta es la configuración completa de Windsurf para el proyecto AppForge, optimizada para desarrollo full-stack con React, TypeScript, Express.js y PostgreSQL.

## 📁 Estructura del Directorio .windsurf

```
.windsurf/
├── 📄 rules/                    # Reglas específicas para Cascade AI
│   ├── global_rules.md          # Reglas globales del proyecto
│   ├── frontend_rules.md        # Reglas específicas del frontend
│   ├── backend_rules.md         # Reglas específicas del backend
│   └── docker_rules.md          # Reglas de containerización
├── 📄 workflows/                # Flujos de trabajo automatizados
│   ├── app_generation.md        # Workflow principal de generación
│   └── debugging.md             # Workflow de debugging
├── 📄 brains/                   # Conocimiento y contexto del proyecto
│   ├── project_context.md       # Contexto general del proyecto
│   └── tech_stack_knowledge.md  # Conocimiento técnico detallado
├── 📄 memories/                 # Memoria entre sesiones
│   └── project_status.md        # Estado actual del proyecto
├── 📄 plans/                    # Planes y arquitectura (para uso futuro)
├── 📄 docs/                     # Documentación del proyecto
│   └── README.md                # Este archivo
├── 📄 scripts/                  # Scripts útiles de desarrollo
│   ├── setup.sh                # Script de configuración inicial
│   └── dev.sh                  # Comandos de desarrollo
└── 📄 config/                   # Configuraciones específicas
    └── windsurf_config.json     # Configuración de Windsurf
```

## 🚀 Inicio Rápido

### 1. Activar las Reglas
Las reglas se activarán automáticamente cuando uses Windsurf en este proyecto. El archivo `.windsurfrules` en la raíz del proyecto contiene las reglas principales.

### 2. Usar Workflows
Los workflows se pueden activar con comandos slash en Cascade:

```
/app-generation          # Generar una aplicación completa
/debugging              # Proceso de debugging
/init-project           # Inicializar nuevo proyecto
/generate-application   # Generar código de aplicación
```

### 3. Scripts de Desarrollo
```bash
# Configuración inicial
./.windsurf/scripts/setup.sh

# Comandos de desarrollo
./.windsurf/scripts/dev.sh start     # Iniciar servidores de desarrollo
./.windsurf/scripts/dev.sh build     # Construir para producción
./.windsurf/scripts/dev.sh test      # Ejecutar pruebas
./.windsurf/scripts/dev.sh help      # Ver todos los comandos
```

## 📋 Reglas Configuradas

### Global Rules
- **Stack Tecnológico**: React + TypeScript + Express.js + PostgreSQL
- **UI Framework**: Radix UI + shadcn/ui + Tailwind CSS
- **Comunicación**: Lenguaje simple y cotidiano
- **Arquitectura**: Principios de full-stack moderno

### Frontend Rules
- **Framework**: React 18+ con componentes funcionales
- **Build Tool**: Vite para desarrollo rápido
- **Styling**: Tailwind CSS con enfoque mobile-first
- **Estado**: TanStack Query + React Context
- **Validación**: React Hook Form + Zod

### Backend Rules
- **Framework**: Express.js con TypeScript y ES modules
- **ORM**: Drizzle ORM para operaciones type-safe
- **Base de Datos**: PostgreSQL con conexión pooling
- **API**: Diseño RESTful con manejo consistente de errores
- **Validación**: Esquemas Zod para todas las entradas

### Docker Rules
- **Containerización**: Soporte completo para Docker
- **Multi-stage Builds**: Imágenes optimizadas para producción
- **Desarrollo**: Contenedores para testing de aplicaciones generadas
- **Simulación**: Sistema de simulación Docker para desarrollo

## 🧠 Conocimiento y Contexto

### Project Context
- **Misión**: Transformar ideas de usuarios en aplicaciones production-ready
- **Usuarios Objetivo**: Desarrolladores senior, equipos, startups, empresas
- **Filosofía**: Type safety first, developer experience, mobile-first

### Tech Stack Knowledge
- **Frontend**: React, Vite, Radix UI, Tailwind CSS patterns
- **Backend**: Express.js, Drizzle ORM, PostgreSQL optimization
- **Integration**: Patrones de comunicación frontend-backend
- **Performance**: Optimizaciones para desarrollo y producción

## 💾 Sistema de Memoria

El sistema de memoria mantiene contexto entre sesiones:

- **Estado del Proyecto**: Progreso actual y features implementadas
- **Actualizaciones Recientes**: Cambios y mejoras más recientes
- **Issues Conocidos**: Problemas identificados y TODOs
- **Patrones Aprendidos**: Insights y mejores prácticas

## ⚙️ Configuración de Windsurf

La configuración en `config/windsurf_config.json` incluye:

- **Modelo AI**: Claude 3.5 Sonnet optimizado
- **Reglas**: Activación automática y límites de caracteres
- **Workflows**: Auto-carga y workflows por defecto
- **Memoria**: Sistema habilitado con retención de 30 días
- **Desarrollo**: Hot reload, auto-save, format on save

## 🛠️ Workflows Disponibles

### App Generation Workflow
Proceso completo de 10 pasos para generar aplicaciones:

1. **Inicialización del Proyecto**
2. **Recopilación de Requisitos**
3. **Configuración Técnica**
4. **Generación de Código**
5. **Configuración de Base de Datos**
6. **Integración y Testing**
7. **Optimización Mobile**
8. **Testing y QA**
9. **Containerización Docker**
10. **Exportación y Deployment**

### Debugging Workflow
Sistema de debugging sistemático:

- **Identificación de Issues**
- **Análisis de Logs**
- **Testing de Aislamiento**
- **Verificación de Entorno**
- **Aplicación de Fixes**

## 📱 Optimizaciones Mobile

- **App-like Feel**: Styling nativo con efectos blur y animaciones
- **Touch Targets**: Mínimo 44px para accesibilidad mobile
- **Responsive Design**: Mobile-first con breakpoints apropiados
- **Performance**: Optimizaciones para redes móviles lentas
- **Dark Mode**: Soporte completo con clases semánticas

## 🐳 Integración Docker

- **Simulator**: Sistema completo de simulación Docker
- **Testing**: Contenedores para testing de aplicaciones generadas
- **Multi-environment**: Frontend, backend, y full-stack
- **Mobile Interface**: Interface de gestión optimizada para mobile

## 📈 Características Recientes (Enero 2025)

### Mobile Experience Enhancement
- ✅ Experiencia app-like con native feel
- ✅ Touch interactions optimizadas
- ✅ Interface mobile-friendly

### Docker Simulator Integration
- ✅ Gestión completa de ciclo de vida de contenedores
- ✅ Monitoreo en tiempo real
- ✅ Interface mobile-optimizada

### Simple Execution Methods
- ✅ 5 métodos de ejecución (5s a 5m)
- ✅ Desde preview estático hasta deployment completo
- ✅ Recomendaciones basadas en caso de uso

## 🔧 Personalización

### Agregar Nuevas Reglas
1. Crear archivo `.md` en `.windsurf/rules/`
2. Seguir formato de reglas existentes
3. Agregar referencia en configuración si es necesario

### Crear Nuevos Workflows
1. Crear archivo `.md` en `.windsurf/workflows/`
2. Definir pasos claros y comandos slash
3. Documentar prerequisites y outputs

### Actualizar Conocimiento
1. Editar archivos en `.windsurf/brains/`
2. Mantener información actualizada
3. Agregar nuevos patrones y soluciones

## 🐛 Solución de Problemas

### Reglas No Se Aplican
- Verificar que `.windsurfrules` existe en la raíz
- Comprobar límites de caracteres (6,000 por regla, 12,000 total)
- Reiniciar Windsurf si es necesario

### Workflows No Funcionan
- Verificar sintaxis de comandos slash
- Comprobar que archivos workflow existen
- Revisar configuración de auto-load

### Memoria No Se Mantiene
- Verificar configuración de memoria en config
- Comprobar permisos de escritura en directorio
- Verificar retención de días configurada

## 📚 Recursos Adicionales

- **Windsurf Documentation**: [docs.windsurf.com](https://docs.windsurf.com)
- **React Documentation**: [react.dev](https://react.dev)
- **Drizzle ORM**: [orm.drizzle.team](https://orm.drizzle.team)
- **Radix UI**: [radix-ui.com](https://radix-ui.com)
- **Tailwind CSS**: [tailwindcss.com](https://tailwindcss.com)

## 🤝 Contribución

Para mejorar esta configuración:

1. Actualizar reglas basándose en nuevos patterns
2. Agregar workflows para tareas comunes
3. Documentar nuevos insights en brains
4. Mantener memoria actualizada con progreso del proyecto

---

**¡Feliz desarrollo con AppForge y Windsurf! 🌊**
