
# ✅ Automatización de Pruebas API – Proyecto Reqres con Karate DSL

Este repositorio contiene la automatización de pruebas sobre la API pública [Reqres.in](https://reqres.in) utilizando **Karate DSL**. El propósito del proyecto es **aplicar conocimientos de testing de APIs REST** adquiridos en el curso, incluyendo:

- Diseño de casos de prueba
- Validación funcional de endpoints REST
- Automatización utilizando Karate con Gherkin
- Ejecución mediante Maven y Java

---

## 🎯 Objetivo del Proyecto

> Aplicar los conocimientos adquiridos en el curso sobre pruebas de APIs, combinando análisis funcional, diseño de pruebas exploratorias y automatización básica, usando una API REST.

---

## 🧰 Stack Tecnológico

Tecnologías, herramientas y librerías utilizadas:

- 🥋 **Karate DSL** – Framework de testing API con soporte completo de Cucumber/Gherkin
- ✏️ **Gherkin** – Lenguaje descriptivo para definir pruebas (Given/When/Then)
- ⚙️ **Maven** – Automatización de compilación y dependencias
- ☕ **Java 11** – Lenguaje base para el entorno Karate
- 🧪 **Postman** – Para exploración y validación manual de endpoints
- 💻 **Visual Studio Code** – Entorno de desarrollo para ejecución y edición

---

## 📂 Estructura del Proyecto

```
📁 TrabajoFinalTestAPI 
📁 src/test/java/
 └── apitests/
     ├── reqres/
     │   ├── EP_DELETE_User.feature
     │   ├── EP_GET_Users.feature
     │   ├── EP_POST_User.feature
     │   └── EP_PUT_User.feature
     ├── utils/
     │   ├── generateRandomNumber.js
     │   └── generateRandomText.js
     ├── karate-config.js
     ├── APITest.java
📄 logback-test.xml
```
En la primera carpeta se encutran las pruebas en Postman
---

## 🚀 ¿Cómo ejecutar las pruebas?

### 1️⃣ Pre-requisitos

Antes de ejecutar, debes tener instalados:

- [Java 11](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- [Apache Maven](https://maven.apache.org/install.html)
- [Visual Studio Code](https://code.visualstudio.com/)

Verifica las versiones en consola:

```bash
java -version
mvn -version
```

---

### 2️⃣ Clonar el proyecto

```bash
git clone https://github.com/oncekcm/regresAPI.git
cd reqres-karate
```

---

### 3️⃣ Abrir en Visual Studio Code

1. Abre VS Code
2. Selecciona la carpeta clonada
3. Asegúrate de que Java y Maven estén disponibles en la terminal

---

### 4️⃣ Ejecutar pruebas

#### ✅ Todas las pruebas

```bash
mvn test
```

#### 🧪 Un archivo específico

```bash
mvn test -Dkarate.options="classpath:apitests/reqres/EP_GET_Users.feature"
```

---

## 📄 Archivos Destacados

| Archivo                         | Descripción                                                  |
|--------------------------------|--------------------------------------------------------------|
| `EP_GET_Users.feature`         | Pruebas del endpoint GET /users                             |
| `EP_POST_User.feature`         | Pruebas del endpoint POST /users                            |
| `EP_PUT_User.feature`          | Pruebas del endpoint PUT /users/{id}                        |
| `EP_DELETE_User.feature`       | Pruebas del endpoint DELETE /users/{id}                     |
| `generateRandomText.js`        | Script para generar texto aleatorio en las pruebas          |
| `generateRandomNumber.js`      | Script para números aleatorios                              |
| `karate-config.js`             | Configuración global de Karate                              |
| `APITest.java`                 | Clase de ejecución para Karate Runner                       |

---

## 📦 Casos de prueba incluidos

Este proyecto incluye múltiples escenarios por cada endpoint probado, incluyendo:

- ✅ Casos válidos (status 200, 201, 204)
- ❌ Casos inválidos (status 404, datos faltantes)
- 🧪 Pruebas con datos aleatorios
- 🔁 Validación de idempotencia y consistencia de respuestas

---


## 🧑‍💻 Autor

**QA Automation Engineer**  


---

## 📜 Licencia

MIT © 2025
