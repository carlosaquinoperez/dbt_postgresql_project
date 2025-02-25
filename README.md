# Proyecto dbt en EC2 con PostgreSQL

Este proyecto implementa **dbt (Data Build Tool)** en una instancia **EC2 Small de AWS con Ubuntu**, usando **PostgreSQL como Data Warehouse**.

## 📌 Estado del Proyecto
✅ PostgreSQL instalado y configurado en la EC2.  
✅ dbt instalado y configurado para conectarse a PostgreSQL.  
✅ Verificación exitosa con `dbt debug`.  
✅ Proyecto dbt inicializado y listo para ejecutar modelos.

## 🚀 Configuración Realizada
1. **Creación de la instancia EC2 con Ubuntu.**
2. **Instalación de PostgreSQL y configuración del usuario `dbt_user`.**
3. **Instalación de dbt con el adaptador de PostgreSQL.**
4. **Configuración de `profiles.yml` para conectar dbt a PostgreSQL.**
5. **Ejecución de `dbt debug` para verificar que todo está correcto.**

## 🔧 Comandos Clave Ejecutados
### PostgreSQL
```bash
sudo apt install postgresql postgresql-contrib -y
sudo systemctl start postgresql
sudo -i -u postgres
psql
