# ============================================================
# Editor de PDFs local
# ============================================================
# Combina, extrae y reordena páginas de archivos PDF sin
# subirlos a servicios web de terceros.
#
# Alternativa local a Adobe Acrobat y a webs tipo iLovePDF,
# Smallpdf o Adobe Online, que requieren subir los documentos
# a un servidor externo (problema de privacidad).
#
# Ver README.md para el contexto completo.
# ============================================================

library(qpdf)

# Ajustar según tu sistema
setwd("ruta/a/tu/directorio")


# ------------------------------------------------------------
# Operación 1: combinar PDFs específicos
# ------------------------------------------------------------
# Combina los archivos indicados en el orden dado.

# pdf_combine(
#   input  = c("documento1.pdf", "documento2.pdf"),
#   output = "salida.pdf"
# )


# ------------------------------------------------------------
# Operación 2: combinar todos los PDFs de una carpeta
# ------------------------------------------------------------
# Combina todos los archivos .pdf que estén en la carpeta
# indicada, en orden alfabético.

# pdf_combine(
#   input  = list.files("pdfs", "*.pdf", full.names = TRUE),
#   output = "salida.pdf"
# )


# ------------------------------------------------------------
# Operación 3: extraer o reordenar páginas
# ------------------------------------------------------------
# Toma solo las páginas indicadas, en el orden dado.
# El ejemplo extrae: páginas 1-10, luego la 15, luego 20-25,
# luego la 30.

# pdf_subset(
#   input  = "informe.pdf",
#   pages  = c(1:10, 15, 20:25, 30),
#   output = "salida.pdf"
# )


# ------------------------------------------------------------
# Operación 4: convertir imágenes a PDF
# ------------------------------------------------------------
# Convierte todos los archivos JPG, JPEG y PNG de la carpeta
# indicada en un único archivo PDF, en orden alfabético.

# imagenes <- list.files(
#   "imagenes",
#   pattern = "\\.(jpg|jpeg|png)$",
#   full.names = TRUE,
#   ignore.case = TRUE
# )

# imagenes <- image_read(imagenes)

# image_write(
#   imagenes,
#   "imagenes.pdf"
# )
