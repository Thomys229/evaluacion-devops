# Evaluación Parcial 2 - Pipeline CI/CD DevOps

## 1. Descripción del Proyecto
Este proyecto consiste en un microservicio desarrollado en Spring Boot (Java 17) diseñado para gestionar y procesar el registro del informe de aduanas, conectándose a una base de datos relacional para almacenar la información. Se ha implementado un pipeline de Integración y Entrega Continua (CI/CD) para automatizar su ciclo de vida.

## 2. Arquitectura y Etapas del Pipeline
El flujo automatizado en GitHub Actions consta de las siguientes etapas:
1. **Construcción y Pruebas (`construir-y-probar`)**: Descarga el código, configura Java 17 y ejecuta las pruebas automatizadas con Maven.
2. **Análisis de Código (`revision-sonarcloud`)**: Envía el código a SonarCloud para evaluar calidad, bugs y code smells.
3. **Escaneo de Seguridad (`revision-snyk`)**: Utiliza Snyk para buscar vulnerabilidades (Severidad Alta/Crítica) en las dependencias.
4. **Despliegue Simulado (`despliegue-simulado`)**: Levanta la aplicación y su base de datos PostgreSQL utilizando contenedores Docker.

## 3. Trazabilidad y Calidad
- **Trazabilidad**: Cada vez que se hace un `push` a la rama principal, se dispara el pipeline de forma automática, dejando un registro histórico en la pestaña Actions de GitHub con sus respectivos logs.
- **Calidad**: Se ejecutan pruebas automatizadas en cada cambio. Además, SonarCloud revisa la salud del código y Dependabot está configurado para alertar sobre librerías desactualizadas.
- **Seguridad**: Snyk actúa como compuerta de seguridad, auditando el archivo `pom.xml` en busca de vulnerabilidades antes de permitir el despliegue.

## 4. Orquestación (Docker Compose)
Para asegurar el funcionamiento del aplicativo, se utiliza `docker-compose.yml` para orquestar dos contenedores:
* **Base de Datos**: PostgreSQL 15 con límites de memoria (256MB) y CPU, incluyendo un *healthcheck* para asegurar que está lista antes de recibir conexiones.
* **API Backend**: La aplicación Spring Boot en Java 17, con límites de memoria (512MB). Está configurada para depender estrictamente de la salud de la base de datos.

## 5. Instrucciones de Ejecución Local
Para levantar este proyecto en tu propia máquina, necesitas tener Docker instalado y ejecutar el siguiente comando en la raíz del proyecto:
`docker compose up -d --build`

## 6. Uso de Inteligencia Artificial
Se utilizó Gemini para generar diagramas de arquitectura, corregir errores de sintaxis en los archivos YAML y apoyar en la estructura general de este documento.

## 7. Reflexion

### Thomás Osorio:Reflexión
Durante el desarrollo de esta evaluación, logré comprender en la práctica cómo funciona el ciclo de vida completo de un microservicio orientado al backend. Me sirvió muchísimo para asimilar la importancia real de la Integración y Entrega Continua (CI/CD). Pelear con la configuración de GitHub Actions, ajustar los límites de memoria y salud en Docker Compose, y lograr que herramientas estrictas de seguridad como Snyk y SonarCloud aprobaran el código, me dio una perspectiva mucho más clara de las responsabilidades que tiene un desarrollador en su día a día. Siento que ahora entiendo mejor cómo se asegura la trazabilidad y la calidad del software antes de que llegue a un entorno de producción. No fue facil pero gracias a los pasos que mando el profesor me pude orientar mejor.