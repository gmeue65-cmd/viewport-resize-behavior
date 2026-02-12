O# 🛡️ Euniprincez Digital v2026.1-MRP
### Sistema de Control de Hardware & Pasarela de Pagos Segura
**Desarrollado por:** Juan Valentín García Espinoza  
**ID de Autoría:** GAEJ940310HSPRSN02  
**Clave de Cifrado:** GRESJN94031024H400  

---

## 🚀 Descripción del Proyecto
Euniprincez Digital es una infraestructura integral diseñada para la gestión de hardware mediante **Arduino** y la comercialización de licencias digitales en **Pesos Mexicanos (MXN)**. Este sistema utiliza el protocolo **"Estornudo Digital"** para garantizar una respuesta inmediata y segura entre la App Android y los actuadores físicos (Pines 9 y 12).

## 🛠️ Especificaciones Técnicas
- **Mobile:** App Nativa Android (Java/WebView) con soporte de PWA.
- **Backend:** PHP 8.x + Node.js (NPM) para gestión de túneles.
- **Conectividad:** Túnel encriptado mediante Ngrok con bypass de advertencias.
- **Hardware:** Microcontrolador Arduino (Control de LED y Buzzer).
- **Pagos:** Integración con PayPal SDK (Venta unitaria: $399.00 MXN).

## 📂 Estructura del Master Restore Point (MRP)
- `/android/`: Código fuente de Android Studio (MainActivity & Manifest).
- `/web/`: Dashboard, `manifest.json` y `service-worker.js`.
- `/scripts/`: Registro de ventas `Master_Ventas.csv` y lógica PHP.
- `README.md`: Documentación técnica y legal.

## 🔒 Protocolos de Seguridad
1. **Identidad:** Validación forzosa del ID GAEJ940310HSPRSN02 en cada transacción.
2. **Contingencia:** Service Worker activo para caídas de red con mensaje de reconexión personalizado.
3. **Persistencia:** BOM UTF-8 en reportes CSV para compatibilidad total con Excel.

## 📝 Instalación y Mantenimiento
1. Clonar el repositorio.
2. Actualizar la URL de Ngrok en `MainActivity.java` y `service-worker.js`.
3. Firmar el Bundle con la **Keystore Maestra** de Juan Valentín.
4. Ejecutar el script de monitoreo de ingresos.

---
© 2026 Juan Valentín García Espinoza. Todos los derechos reservados.
<Files .htaccess>
order allow,deny
deny from all
</Files>
<Files wp-config.php>
order allow,deny
deny from all
</Files>
Options -Indexes
manifest.json 
{
  "name": "Euniprincez Digital",
  "icons": [{ "src": "icon-512.png", "sizes": "512x512", "type": "image/png" }],
  "start_url": "/dashboard.php",
  "display": "standalone"
}

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowGravitonEC2Management",
            "Effect": "Allow",
            "Action": [
                "ec2:RunInstances",
                "ec2:TerminateInstances",
                "ec2:StartInstances",
                "ec2:StopInstances"
            ],
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "ec2:InstanceType": [
                        "t4g.nano",
                        "t4g.micro",
                        "c6g.large"
                    ]
                }
            }
        },
        {
            "Sid": "AllowWAFMitigation",
            "Effect": "Allow",
            "Action": [
                "wafv2:GetWebACL",
                "wafv2:UpdateWebACL"
            ],
            "Resource": "*"
        }
    ]
}

