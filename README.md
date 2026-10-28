# Despliegue AE4 - Aplicación Web con BD en Contenedores

**Repositorio remoto:** https://github.com/zabdive21/ae4

## Arquitectura

```mermaid
graph LR
    Cliente -->|Puerto 8000| Nginx
    Nginx -->|Proxy Inverso| App[Django + Gunicorn]
    App -->|Puerto 5432| DB[(PostgreSQL)]
    pgAdmin -->|Puerto 5050| DB
