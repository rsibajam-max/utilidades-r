# 01 — Editor de PDFs local

Script en R para combinar, extraer y reordenar páginas de archivos PDF sin subirlos a servicios web de terceros.

## Problema

Las herramientas comunes para manipular PDFs tienen dos problemas:

- **Adobe Acrobat** cobra licencia para funciones básicas como combinar, dividir o reordenar páginas.
- **Las webs de manipulación de PDFs** (iLovePDF, Smallpdf, Adobe Online, etc.) requieren subir el documento a un servidor de un tercero. Para documentos sensibles — contratos, CVs, información financiera o de salud — eso expone los datos.

## Solución

Script en R que hace tres operaciones básicas, todas locales:

1. **Combinar PDFs específicos** por nombre.
2. **Combinar todos los PDFs** de una carpeta.
3. **Extraer y reordenar páginas** por rango o por páginas individuales.

No requiere subir nada a internet. Todo el procesamiento se hace en la máquina local.

## Herramientas

- **R**: `qpdf` (binding al programa `qpdf`).

## Cómo correrlo

1. Ajustar la ruta de trabajo (`setwd()`).
2. Colocar los PDFs a procesar en el directorio.
3. Descomentar la operación que se quiera hacer.
4. Ejecutar. El archivo resultante se guarda como `salida.pdf`.

## Operaciones disponibles

### 1. Combinar PDFs específicos

```r
pdf_combine(
  input  = c("documento1.pdf", "documento2.pdf"),
  output = "salida.pdf"
)
```

Combina los archivos indicados en el orden dado.

### 2. Combinar todos los PDFs de una carpeta

```r
pdf_combine(
  input  = list.files("pdfs", "*.pdf", full.names = TRUE),
  output = "salida.pdf"
)
```

Combina todos los archivos `.pdf` que estén en la carpeta indicada, en orden alfabético.

### 3. Extraer o reordenar páginas

```r
pdf_subset(
  input  = "informe.pdf",
  pages  = c(1:10, 15, 20:25, 30),
  output = "salida.pdf"
)
```

Toma solo las páginas indicadas, en el orden dado. El ejemplo extrae: páginas 1-10, luego la 15, luego 20-25, luego la 30.

## Notas de diseño

- Las tres operaciones están comentadas en el script. El usuario descomenta la que necesita.
- `pages` acepta rangos (`1:10`), páginas individuales (`15`) o combinaciones (`c(1:10, 15, 20:25, 30)`).
- El archivo de salida se llama `salida.pdf` en los ejemplos, pero se puede cambiar a cualquier nombre.

## Casos de uso

- Combinar un CV dividido en varios PDFs.
- Extraer páginas específicas de un informe.
- Reordenar secciones de un documento.
- Cualquier operación donde se prefiera no subir el archivo a un servicio externo.
