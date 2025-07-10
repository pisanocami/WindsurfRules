# AppCraftMaster

Plataforma de desarrollo de aplicaciones web con generación de código asistido por IA.

## 🚀 Características

- Generación de código de aplicaciones web con IA
- Interfaz intuitiva tipo arrastrar y soltar
- Previsualización en tiempo real
- Exportación de código limpio y listo para producción
- Soporte para múltiples frameworks frontend

## 📦 Requisitos Previos

- Node.js 18+
- npm 9+ o pnpm 8+
- PostgreSQL 14+
- Git

## 🛠️ Instalación

### Opción 1: Instalación Automática (Recomendada para Windows)

Ejecuta el siguiente comando en PowerShell (como administrador):

```powershell
# Descargar y ejecutar el script de instalación
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/tu-usuario/AppCraftMaster/main/scripts/setup.ps1'))
```

O si ya has clonado el repositorio:

```powershell
# Navega a la carpeta del proyecto y ejecuta:
.\scripts\setup.ps1
```

### Opción 2: Instalación Manual

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/AppCraftMaster.git
   cd AppCraftMaster
   ```

2. Instala las dependencias:
   ```bash
   npm install
   # o
   pnpm install
   ```

3. Configura las variables de entorno:
   ```bash
   cp .env.example .env
   # Edita el archivo .env con tus credenciales
   ```

4. Configura Husky (gestor de hooks de Git):
   ```bash
   npx husky install
   ```

5. Inicia la base de datos (asegúrate de tener PostgreSQL en ejecución)

6. Ejecuta las migraciones:
   ```bash
   npm run db:migrate
   ```

## 🚦 Iniciar el Proyecto

### Desarrollo
```bash
# Servidor de desarrollo
npm run dev

# Cliente de desarrollo
npm run dev:client
```

### Producción
```bash
# Construir para producción
npm run build

# Iniciar en producción
npm start
```

## 🧪 Testing

```bash
# Ejecutar tests unitarios
npm test

# Ejecutar tests con cobertura
npm run test:coverage
```

## 🏗️ Estructura del Proyecto

```
.
├── client/          # Aplicación frontend
├── server/          # API y lógica del servidor
│   ├── api/         # Controladores de la API
│   ├── services/    # Lógica de negocio
│   ├── middleware/  # Middlewares de Express
│   └── db/          # Configuración y migraciones de la base de datos
├── shared/          # Código compartido entre frontend y backend
└── public/          # Archivos estáticos
```

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Por favor, lee nuestra [guía de contribución](CONTRIBUTING.md) para empezar.

## 📄 Licencia

Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

---

Desarrollado con ❤️ por el equipo de AppCraftMaster
