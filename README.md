# 🏦 Euniprincez Digital v2026 - Servidor MCP de Saldos

Este proyecto implementa una arquitectura basada en el principio de **Única Fuente de Verdad (Single Source of Truth)** y está adaptado como un servidor oficial bajo el **Model Context Protocol (MCP)**. Permite a modelos de Inteligencia Artificial (LLMs) conectarse de forma segura a la base de datos para consultar saldos bancarios.

* **Diseño e Identidad:** Euniprincez Digital v2026
* **Titular de los Derechos de Autor:** Juan Valentín García Espinoza (ID: GAEJ940310HSPRSN02)
* **Licencia:** GNU General Public License v3.0 (GPLv3)

---

## 🛠️ Validación del Servidor MCP

Este servidor ha sido diseñado y auditado para cumplir estrictamente con el estándar MCP utilizando transporte SSE (Server-Sent Events).

### Pasos para realizar la validación local:

1. **Instalar dependencias del sistema:**
   Asegúrese de tener Node.js instalado en su equipo y ejecute:
   ```bash
   pip install -r requirements.txt
   npm install -g @modelcontextprotocol/inspector
