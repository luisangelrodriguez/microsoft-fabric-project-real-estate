# Implementación de una Plataforma Data-Driven en Microsoft Fabric

## 📌 Descripción

Este proyecto presenta la implementación de una **arquitectura Data-Driven en Microsoft Fabric** para la empresa ficticia **Martinica RealState**, una desarrolladora y comercializadora de proyectos inmobiliarios en Latinoamérica.  

El objetivo es resolver la problemática de datos fragmentados en múltiples archivos planos y reportes manuales en Excel, mediante una solución integral de ingesta, transformación, modelado y visualización de datos en **Microsoft Fabric**.

---

## 🏗️ Arquitectura de la Solución

Se diseñó una arquitectura **Medallion** en Microsoft Fabric compuesta por las capas **Raw → Silver → Gold**, que permite procesar y transformar la data desde su ingesta hasta el consumo en Power BI.

**Componentes principales:**
- **Azure Data Lake Storage Gen2 (ADLS)**: almacenamiento de archivos planos `.csv`.
- **Pipelines de Fabric**: ingesta de datos hacia un **Lakehouse**.
- **Lakehouse + Delta Tables**: almacenamiento y organización de datos procesados.
- **Notebooks (PySpark)**: procesos ETL y transformaciones.
- **Warehouse + Modelo Semántico**: modelado dimensional (hechos y dimensiones).
- **Power BI**: visualización interactiva de insights del negocio.

---

## ⚡ Flujo de Desarrollo

1. **Creación de ambiente en Microsoft Fabric**  
   - Lakehouse para almacenamiento.  
   - Pipelines para ingesta desde ADLS.  

2. **Ingesta de datos**  
   - Archivos `brokers.csv`, `campaigns.csv`, `clients.csv`, `leads.csv`, `projects.csv`, `properties.csv`, `sales.csv`.  
   - Organización en carpeta **raw**.  

3. **Procesamiento y transformación**  
   - Uso de **Notebooks con PySpark**.  
   - Creación de tablas Delta en capas **silver** y **gold**.  

4. **Modelado semántico en Warehouse**  
   - Creación de vistas sobre las tablas Delta.  
   - Diseño de un modelo dimensional (hechos y dimensiones).  

5. **Visualización en Power BI**  
   - Conexión mediante **Direct Query**.  
   - Inclusión de **tabla calendario** para análisis temporal.  
   - Creación de dashboards de ventas, leads y performance de campañas.  

6. **Automatización**  
   - Programación diaria de pipelines.  
   - Actualización automática del modelo semántico.  

---

## 📊 Resultados

- Reducción del tiempo de generación de reportes (de **2 días** a procesos automáticos diarios).  
- Visualización en tiempo casi real de ventas, leads y campañas.  
- Gobierno centralizado de los datos de negocio en una única plataforma.  

---

## 🛠️ Tecnologías Utilizadas

- **Microsoft Fabric**  
  - Lakehouse  
  - Data Pipelines  
  - Notebooks (PySpark)  
  - Warehouse  
  - Semantic Models  
- **Azure Data Lake Storage Gen2**  
- **Power BI**  

---

## 🚀 Próximos pasos / Mejoras

- Ampliar el modelo dimensional con más tablas de hechos.  
- Implementar reglas de calidad de datos en la capa Silver.  
- Incorporar análisis predictivo con **ML Notebooks en Fabric**.  

---

## 📜 Licencia

Este proyecto es de uso educativo y demostrativo.  
