📊 Curso de Bases de Datos: De los Fundamentos al Lenguaje SQL

¡Bienvenido al repositorio de la materia de Bases de Datos! Este espacio está diseñado para consolidar todos los conocimientos teóricos y prácticos adquiridos a lo largo del curso, abarcando desde la abstracción conceptual de la información hasta la manipulación e implementación de bases de datos relacionales robustas.

🗺️ Mapa de Ruta del Aprendizaje (Roadmap)

[1. Fundamentos] ──> [2. Modelo E-R] ──> [3. Modelo Relacional] ──> [4. SQL-LDD] ──> [5. SQL-LMD]


📚 Contenido del Curso

1. 🔍 Fundamentos de Bases de Datos

Introducción a los conceptos clave para entender cómo y por qué almacenamos datos de forma estructurada.

Conceptos Básicos: Diferencia entre datos e información, evolución de los archivos tradicionales a las Bases de Datos.

Sistemas de Gestión de Bases de Datos (SGBD): Arquitectura ANSI-SPARC (tres niveles), componentes y objetivos de un SGBD.

Abstracción de Datos: Comprensión de los niveles físico, conceptual y de visión.

2. 📐 Modelado de Datos: Modelo Entidad-Relación (E-R)

La fase de diseño conceptual donde transformamos requerimientos del mundo real en diagramas estructurados.

Entidades y Atributos: Entidades fuertes/débiles; atributos clave, compuestos, multivalorados y derivados.

Relaciones: Cardinalidad y participación (1:1, 1:N, N:M).

Diagramación: Creación de diagramas conceptuales claros para representar la lógica del negocio.

3. 🔄 El Modelo Relacional

Transición del modelo conceptual (E-R) al modelo lógico apto para sistemas modernos.

Estructura: Tablas, tuplas (filas), atributos (columnas) y dominios.

Claves (Keys): Identificación de Claves Primarias (PK) y Claves Foráneas (FK).

Reglas de Transformación: Proceso de mapeo de entidades y relaciones hacia tablas físicas.

Integridad Referencial: Restricciones y acciones en cascada (ON DELETE / ON UPDATE).

4. 🔨 Construcción con SQL-LDD (Lenguaje de Definición de Datos)

Implementación física de la estructura de la base de datos utilizando código SQL estándar.

Comandos Principales: CREATE, ALTER y DROP.

Restricciones (Constraints): PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL y CHECK.

-- Ejemplo de creación de tablas (LDD)
CREATE TABLE alumnos (
    alumno_id INT PRIMARY KEY,
    matricula VARCHAR(15) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    estado VARCHAR(10) DEFAULT 'Activo'
);

CREATE TABLE inscripciones (
    inscripcion_id INT PRIMARY KEY,
    alumno_id INT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(alumno_id) ON DELETE CASCADE
);


5. ⚡ Manipulación con SQL-LMD (Lenguaje de Manipulación de Datos)

Interacción directa con los datos almacenados para consulta y modificación.

Operaciones CRUD: INSERT, SELECT, UPDATE y DELETE.

Consultas Avanzadas: Uso de WHERE, ORDER BY, GROUP BY y HAVING.

Joins: Combinación de tablas mediante INNER JOIN, LEFT JOIN y RIGHT JOIN.

-- Ejemplo de consulta multitable (LMD)
SELECT 
    a.nombre, 
    i.fecha_registro 
FROM alumnos a
INNER JOIN inscripciones i ON a.alumno_id = i.alumno_id
WHERE a.estado = 'Activo'
ORDER BY i.fecha_registro DESC;


📂 Estructura del Repositorio

├── 📁 01_fundamentos/          # Apuntes teóricos
├── 📁 02_modelo_er/            # Diagramas y casos de estudio
├── 📁 03_modelo_relacional/    # Ejercicios de mapeo
├── 📁 04_sql_ldd/              # Scripts de creación de esquemas (.sql)
├── 📁 05_sql_lmd/              # Scripts de consultas y manipulación (.sql)
└── README.md                   # Presentación del curso


🛠️ Tecnologías Sugeridas

Modelado: Draw.io / Lucidchart

SGBD: MySQL / PostgreSQL / SQL Server

Cliente: DBeaver / Azure Data Studio / Workbench

👤 Autor

Nombre: José Luis Herrera Gallardo

Contacto: [Tu Enlace a LinkedIn o Email]

⭐ Si este contenido te es de utilidad, ¡no olvides darle una estrella a este repositorio!