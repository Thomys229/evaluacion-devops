# DEVOPS CONTINUOUS FEEDBACK

## Resumen ejecutivo

Las siguientes mejoras ayudarán a incrementar la madurez DevOps del repositorio.

### 🟠 Prioridad media

- Coverage equivalente JaCoCo

---

## Roadmap sugerido para alcanzar el 100%

1. Dockerfile existe
2. Deploy automático
3. Coverage equivalente JaCoCo
4. Dependabot configurado
5. Docker Compose/K8s
6. README documentado

---

## Cómo resolver los GAPs

### Coverage equivalente JaCoCo

Impacto: No existe medición de cobertura.

#### Cómo resolver

- Agregar coverage
- Publicar cobertura pipeline

#### Ejemplo

```

npm test -- --coverage

```

---

## Tabla evaluación


| IE | Qué se revisará |
|---|---|
| IE1 | Dockerfile existe |
| IE1 | Docker build funciona |
| IE1 | Imágenes optimizadas |
| IE1 | Multi-stage build |
| IE2 | Existen tests |
| IE2 | Pipeline ejecuta tests |
| IE2 | Coverage equivalente JaCoCo |
| IE3 | Dependabot configurado |
| IE3 | SonarCloud/Snyk |
| IE3 | Bloqueos seguridad needs |
| IE3 | Limits CPU/MEM |
| IE3 | Reservations CPU/MEM |
| IE4 | Deploy automático |
| IE4 | README documentado |
| IE5 | Docker Compose/K8s |
| IE5 | Múltiples servicios |
| IE5 | Healthchecks |
| IE5 | Volumes |
| IE5 | Networks |


---

## Resultado revisión


| IE | Evaluación | Estado |
|---|---|---|
| IE1 | Dockerfile existe | ⚠️ MEJORA PENDIENTE |
| IE4 | Pipeline GitHub Actions | ✅ IMPLEMENTADO |
| IE2 | Pipeline ejecuta tests | ✅ IMPLEMENTADO |
| IE3 | SonarCloud/Snyk | ✅ IMPLEMENTADO |
| IE3 | Bloqueos seguridad needs | ✅ IMPLEMENTADO |
| IE4 | Deploy automático | ⚠️ MEJORA PENDIENTE |
| IE2 | Tecnología detectada | ✅ IMPLEMENTADO |
| IE2 | Coverage equivalente JaCoCo | ⚠️ MEJORA PENDIENTE |
| IE3 | Dependabot configurado | ⚠️ MEJORA PENDIENTE |
| IE5 | Docker Compose/K8s | ⚠️ MEJORA PENDIENTE |
| IE4 | README documentado | ⚠️ MEJORA PENDIENTE |


---

## Detalle validaciones

### IE1 - Dockerfile existe

- Estado: ⚠️ MEJORA PENDIENTE
- Detalle: Dockerfile no detectado

- Evidencia:
```
Dockerfile ausente
```

- Qué falta: Crear Dockerfile


### IE4 - Pipeline GitHub Actions

- Estado: ✅ IMPLEMENTADO
- Detalle: 2 workflow(s) detectados

- Evidencia:
```
/home/runner/work/evaluacion-devops/evaluacion-devops/.github/workflows/pipeline.yml, /home/runner/work/evaluacion-devops/evaluacion-devops/.github/workflows/ep02-devops-continuous-feedback.yml
```


### IE2 - Pipeline ejecuta tests

- Estado: ✅ IMPLEMENTADO
- Detalle: Ejecuta tests

- Evidencia:
```
Workflow revisado
```


### IE3 - SonarCloud/Snyk

- Estado: ✅ IMPLEMENTADO
- Detalle: Tiene seguridad

- Evidencia:
```
Workflow revisado
```


### IE3 - Bloqueos seguridad needs

- Estado: ✅ IMPLEMENTADO
- Detalle: Usa needs

- Evidencia:
```
Workflow revisado
```


### IE4 - Deploy automático

- Estado: ⚠️ MEJORA PENDIENTE
- Detalle: No tiene deploy

- Evidencia:
```
Workflow revisado
```

- Qué falta: Agregar deploy automático


### IE2 - Tecnología detectada

- Estado: ✅ IMPLEMENTADO
- Detalle: node

- Evidencia:
```
Archivos proyecto
```


### IE2 - Coverage equivalente JaCoCo

- Estado: ⚠️ MEJORA PENDIENTE
- Detalle: Coverage NO detectado para node

- Evidencia:
```

Tecnología: node

Coverage esperado:
Jest Coverage / NYC

Keywords:
--coverage, collectCoverage, coverageThreshold, nyc, istanbul, jest
      
```

- Qué falta: Agregar Jest Coverage / NYC


### IE3 - Dependabot configurado

- Estado: ⚠️ MEJORA PENDIENTE
- Detalle: Dependabot no detectado

- Evidencia:
```
.github/dependabot.yml
```

- Qué falta: Agregar dependabot.yml


### IE5 - Docker Compose/K8s

- Estado: ⚠️ MEJORA PENDIENTE
- Detalle: No existe docker-compose

- Evidencia:
```
docker-compose.yml
```

- Qué falta: Agregar docker-compose


### IE4 - README documentado

- Estado: ⚠️ MEJORA PENDIENTE
- Detalle: README no detectado

- Evidencia:
```
README.md
```

- Qué falta: Agregar README
