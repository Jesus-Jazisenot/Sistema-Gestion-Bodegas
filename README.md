# 🏢 Sistema de Gestión de Bodegas

<div align="center">

![Estado](https://img.shields.io/badge/Estado-Activo-success)
![Versión](https://img.shields.io/badge/Versión-2.0-blue)
![.NET](https://img.shields.io/badge/.NET-Framework_4.7.2-purple)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![Licencia](https://img.shields.io/badge/Licencia-MIT-green)

*Sistema integral para la administración de bodegas, contratos, reservas y pagos*

[Características](#-características-principales) • [Instalación](#-instalación) • [Uso](#-uso) • [Capturas](#-capturas-de-pantalla) • [Tecnologías](#-tecnologías-utilizadas)

</div>

---

## 📋 Descripción

Sistema de gestión empresarial desarrollado en C# con Windows Forms que permite administrar de manera eficiente el alquiler de bodegas, incluyendo:

- ✅ Gestión de reservas y contratos
- 💰 Control de pagos y cartera vencida
- 📊 Reportes de ocupación e ingresos
- 👥 Sistema de usuarios con permisos granulares
- 🔐 Control de acceso basado en roles (RBAC)

## ✨ Características Principales

### 🎯 Módulos Operativos

#### 📦 Gestión de Reservas
- Creación de reservas de bodegas
- Conversión de reservas a contratos activos
- Cancelación de reservas con auditoría
- Validación automática de disponibilidad

#### 📄 Control de Contratos
- Contratos activos con seguimiento en tiempo real
- Historial completo por contrato
- Suspensión y terminación de contratos
- Registro de motivos y cambios de estado

#### 💳 Administración de Pagos
- Generación automática de cargos mensuales
- Registro de pagos con múltiples métodos
- Gestión de promociones y descuentos
- Control de cartera vencida

#### 📊 Reportes y Análisis
- Reporte de ocupación de bodegas
- Análisis de ingresos por periodo
- Visualización de cartera vencida
- Métricas de rendimiento operativo

### 🔐 Sistema de Permisos

El sistema implementa **4 roles de usuario** con permisos específicos:

| Rol | Permisos | Descripción |
|-----|----------|-------------|
| **👤 Ventas** | Consultas de disponibilidad<br>Gestión de reservas<br>Conversión a contratos | Personal de ventas con acceso limitado a operaciones comerciales |
| **💰 Cobranza** | Cartera vencida<br>Gestión de pagos<br>Cargos mensuales<br>Suspensión de contratos | Departamento de cobranza con acceso a operaciones financieras |
| **📊 Gerencia** | Todos los reportes<br>Terminación de contratos<br>Análisis completos | Gerencia con acceso a análisis y decisiones estratégicas |
| **⚙️ Admin** | **ACCESO TOTAL** | Administrador con permisos completos en todo el sistema |

### 🎨 Interfaz Moderna

- **Diseño Dark Mode** profesional y elegante
- **Paleta de colores** inspirada en logística y almacenamiento
- **Iconos visuales** para mejor experiencia de usuario
- **Feedback visual** en tiempo real
- **DataGridView** estilizado con colores alternados
- **Responsive** con tamaños mínimos y máximos

## 🛠️ Tecnologías Utilizadas

### Backend & Lógica
- ![C#](https://img.shields.io/badge/C%23-239120?style=flat&logo=c-sharp&logoColor=white) **C# .NET Framework 4.7.2**
- ![WinForms](https://img.shields.io/badge/Windows_Forms-0078D4?style=flat&logo=windows&logoColor=white) **Windows Forms**
- ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white) **MySQL 8.0**

### Librerías y Dependencias
- **MySql.Data** - Conector MySQL para .NET
- **System.Drawing** - Gráficos y renderizado
- **System.Windows.Forms** - Interfaz gráfica

### Arquitectura
- **Stored Procedures** para lógica de negocio
- **Vistas SQL** para consultas optimizadas
- **Control de transacciones** ACID
- **Triggers** para auditoría automática

## 📥 Instalación

### Prerrequisitos

```bash
✅ Visual Studio 2019 o superior
✅ .NET Framework 4.7.2 o superior
✅ MySQL Server 8.0 o superior
✅ MySQL Connector/NET 8.0
```

### Paso 1: Clonar el Repositorio

```bash
git clone https://github.com/tu-usuario/sistema-gestion-bodegas.git
cd sistema-gestion-bodegas
```

### Paso 2: Configurar la Base de Datos

1. **Importar el script SQL:**
```bash
mysql -u root -p < database/CREACION_DE_BASE_DE_DATOS.sql
```

2. **Verificar la creación:**
```sql
USE mini_bodegas;
SHOW TABLES;
```

### Paso 3: Configurar la Conexión

Edita el archivo `Conector.cs` y modifica la cadena de conexión:

```csharp
private string cadenaConexion = 
    "server=localhost;user id=root;password=TU_PASSWORD;database=mini_bodegas;AllowUserVariables=True;";
```

### Paso 4: Compilar y Ejecutar

1. Abre `Bodegas.sln` en Visual Studio
2. Restaura los paquetes NuGet
3. Compila el proyecto (F6)
4. Ejecuta la aplicación (F5)

## 🚀 Uso

### Inicio Rápido

1. **Seleccionar Usuario:**
   - Elige el rol con el que deseas operar
   - Los permisos se aplicarán automáticamente

2. **Elegir Acción:**
   - Selecciona la operación desde el menú desplegable
   - Las acciones se agrupan en Consultas y Operaciones

3. **Completar Parámetros:**
   - Ingresa los datos requeridos según la acción
   - Los campos se validan automáticamente

4. **Ejecutar:**
   - Presiona el botón "▶️ Ejecutar"
   - Los resultados se mostrarán en la tabla inferior

### Ejemplos de Uso

#### Reservar una Bodega
```
1. Usuario: 👤 Ventas
2. Acción: Reservar bodega
3. Parámetros:
   - ID Cliente: 1
   - ID Bodega: 5
   - Fecha Inicio: 2024-01-15
4. Ejecutar
```

#### Registrar un Pago
```
1. Usuario: 💰 Cobranza
2. Acción: Registrar pago
3. Parámetros:
   - ID Cargo: 10
   - Monto: 5000.00
   - Método: TRANSFERENCIA
   - Referencia: REF123456
4. Ejecutar
```

#### Ver Cartera Vencida
```
1. Usuario: 💰 Cobranza o 📊 Gerencia
2. Acción: Ver cartera vencida
3. Ejecutar (sin parámetros)
```

## 📸 Capturas de Pantalla

### Interfaz Principal
![Interfaz Principal](screenshots/main-interface.png)
*Vista general del sistema con tema oscuro profesional*

### Gestión de Reservas
![Reservas](screenshots/reservas.png)
*Módulo de creación y gestión de reservas*

### Control de Pagos
![Pagos](screenshots/pagos.png)
*Registro de pagos con múltiples métodos*

### Reportes
![Reportes](screenshots/reportes.png)
*Dashboard de reportes y análisis*

## 📊 Estructura de la Base de Datos

### Tablas Principales

```
├── Cliente
│   ├── id_cliente (PK)
│   ├── nombre_cliente
│   ├── telefono
│   └── email
│
├── Bodega
│   ├── id_bodega (PK)
│   ├── numero_bodega
│   ├── tamaño_m2
│   ├── precio_mensual
│   └── estado
│
├── Reserva
│   ├── id_reserva (PK)
│   ├── id_cliente (FK)
│   ├── id_bodega (FK)
│   ├── fecha_reserva
│   └── estado_reserva
│
├── Contrato
│   ├── id_contrato (PK)
│   ├── id_reserva (FK)
│   ├── fecha_inicio
│   ├── fecha_fin
│   └── estado_contrato
│
└── Pago
    ├── id_pago (PK)
    ├── id_cargo (FK)
    ├── monto
    ├── metodo_pago
    └── fecha_pago
```

### Stored Procedures

- `sp_reservar_bodega` - Crea una nueva reserva
- `sp_convertir_reserva_a_contrato` - Convierte reserva en contrato
- `sp_cancelar_reserva` - Cancela una reserva existente
- `sp_generar_cargo_mensual` - Genera cargo mensual
- `sp_registrar_pago` - Registra un pago
- `sp_suspender_contrato` - Suspende un contrato
- `sp_terminar_contrato` - Termina un contrato

### Vistas

- `vw_bodegas_disponibles` - Bodegas libres para alquilar
- `vw_cartera_vencida` - Pagos pendientes y vencidos
- `vw_contratos_activos` - Contratos en vigencia
- `vw_reporte_ocupacion` - Estadísticas de ocupación
- `vw_ingresos_por_periodo` - Análisis de ingresos

## 🔧 Configuración Avanzada

### Personalizar Colores

En `Conector.cs`, modifica las constantes de color:

```csharp
private readonly Color colorPrimario = Color.FromArgb(41, 128, 185);      // Azul principal
private readonly Color colorSecundario = Color.FromArgb(39, 174, 96);     // Verde éxito
private readonly Color colorAccento = Color.FromArgb(243, 156, 18);       // Naranja acento
private readonly Color colorPeligro = Color.FromArgb(231, 76, 60);        // Rojo advertencia
```

### Modificar Permisos

Edita el diccionario `PermisosPorUsuario`:

```csharp
{ "NuevoRol", new HashSet<string> {
    "Acción 1",
    "Acción 2",
    "Acción 3"
}}
```

## 🤝 Contribuir

Las contribuciones son bienvenidas. Para cambios importantes:

1. Fork el proyecto
2. Crea una rama de características (`git checkout -b feature/NuevaCaracteristica`)
3. Commit tus cambios (`git commit -m 'Agregar NuevaCaracteristica'`)
4. Push a la rama (`git push origin feature/NuevaCaracteristica`)
5. Abre un Pull Request

## 📝 Roadmap

- [ ] **v2.1** - Exportación de reportes a Excel/PDF
- [ ] **v2.2** - Dashboard con gráficos interactivos
- [ ] **v2.3** - Notificaciones por email
- [ ] **v2.4** - API REST para integración con otros sistemas
- [ ] **v3.0** - Migración a .NET 6+ con Blazor

## 👨‍💻 Autor

**Tu Nombre**
- GitHub: [@tu-usuario](https://github.com/tu-usuario)
- LinkedIn: [Tu Perfil](https://linkedin.com/in/tu-perfil)
- Email: tu.email@ejemplo.com

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## 🙏 Agradecimientos

- Inspirado en sistemas de gestión empresarial reales
- Diseño UI basado en principios de Material Design Dark
- Comunidad de Stack Overflow por el soporte técnico

---

<div align="center">

**⭐ Si te gusta este proyecto, no olvides darle una estrella ⭐**

*Desarrollado con ❤️ para la gestión eficiente de bodegas*

</div>
