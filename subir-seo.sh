#!/bin/bash

# 🚀 Script para subir optimización SEO a GitHub
# Ejecutar con: bash subir-seo.sh

echo "🚀 =========================================="
echo "   SUBIENDO OPTIMIZACIÓN SEO A GITHUB"
echo "=========================================="
echo ""

# Verificar que estamos en el directorio correcto
if [ ! -f "index.html" ]; then
    echo "❌ Error: No estás en el directorio correcto"
    echo "   Ejecuta: cd /home/next/Documentos/PinturaDecojuanma.github.io-main"
    exit 1
fi

echo "📁 Directorio: $(pwd)"
echo ""

# Mostrar archivos modificados
echo "📝 Archivos modificados/creados:"
echo "-------------------------------------------"
git status --short
echo ""

# Preguntar confirmación
echo "❓ ¿Deseas subir estos cambios a GitHub? (s/n)"
read -r respuesta

if [ "$respuesta" != "s" ] && [ "$respuesta" != "S" ]; then
    echo "❌ Operación cancelada"
    exit 0
fi

echo ""
echo "⏳ Procesando..."
echo ""

# Añadir todos los archivos
echo "1️⃣ Añadiendo archivos..."
git add .

# Hacer commit
echo "2️⃣ Creando commit..."
git commit -m "🚀 SEO Complete Optimization

✅ Meta tags avanzados (title, description, keywords, canonical)
✅ Open Graph & Twitter Cards para redes sociales
✅ Schema.org LocalBusiness con datos estructurados
✅ SEO local (geo tags, coordenadas GPS)
✅ Optimización de imágenes (alt, lazy load, dimensions)
✅ Sitemap.xml con imágenes
✅ Robots.txt optimizado
✅ Performance mejoras (preconnect, dns-prefetch)
✅ H1/H2/H3 optimizados con keywords
✅ Contenido expandido y descriptivo

Keywords objetivo:
- pintores benidorm
- pintura decorativa benidorm
- estucado benidorm
- revestimientos fachadas benidorm"

# Subir a GitHub
echo "3️⃣ Subiendo a GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ =========================================="
    echo "   ¡ÉXITO! Cambios subidos a GitHub"
    echo "=========================================="
    echo ""
    echo "🌐 Tu sitio se actualizará en 2-5 minutos"
    echo "📍 URL: https://pinturadecojuanma.github.io/"
    echo ""
    echo "📋 PRÓXIMOS PASOS:"
    echo "-------------------------------------------"
    echo "1. Esperar 5 minutos"
    echo "2. Visitar: https://pinturadecojuanma.github.io/"
    echo "3. Presionar Ctrl+Shift+R para recargar"
    echo "4. Ver código fuente y verificar meta tags"
    echo ""
    echo "5. Google Search Console:"
    echo "   → https://search.google.com/search-console/"
    echo "   → Añadir propiedad"
    echo "   → Enviar sitemap.xml"
    echo ""
    echo "6. Ver archivo COMO-ACTIVAR-SEO.md para más detalles"
    echo ""
    echo "🎯 Objetivo: TOP 5 en Google en 3-6 meses"
    echo "=========================================="
else
    echo ""
    echo "❌ Error al subir a GitHub"
    echo "   Verifica tu conexión y credenciales"
    exit 1
fi
