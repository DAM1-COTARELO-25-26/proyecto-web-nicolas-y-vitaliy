# MoVendi

## Descripción
MoVendi es una tienda web dedicada a la venta de teléfonos móviles de las principales marcas del mercado. Todos nuestros productos son nuevos de fabrica y a buenos precios, con garantia de compra oficial y envio rápido.

## Caracteristicas
* **Catálogo amplio:** iPhone, Samsung, Xiaomi, Huawei y más.
* **Ofertas y descuentos exclusivos:** promociones semanales y financiación sin intereses.
* **Envíos rápidos y seguros:** entregas en 24-48 horas.
* **Garantía y soporte técnico:** atención personalizada y servicio postventa.
* **Buscador inteligente:** encuentra fácilmente el móvil que se adapta a tus necesidades.

## Apartados web
* **Catálogo:** En el catálogo los usuarios podrán explorar todos los modelos de móviles disponibles, organizados por marcas, gamas y precios.
* **Contacto:** En la sección de contacto, los clientes encontrarán un formulario para solucionar los problemas que encuentren con el producto o la web.
* **Ofertas:** El apartado de ofertas mostrará las promociones y descuentos disponibles, tanto temporales como especiales (por ejemplo, Black Friday, rebajas, lanzamiento de nuevos modelos, etc.).
* **SobreNosotros:** En Sobre Nosotros se presentará la historia, misión y caracteristicas de la empresa.

## Estructura de Datos (XML)
Esta sección detalla la implementación de datos estructurados para el proyecto.

### Descripción
Se ha estructurado el catálogo de productos utilizando XML para asegurar la integridad y el intercambio de datos entre sistemas.

### Archivos desarrollados
* **`/datos/catalogo.xml`**: Archivo principal que contiene la estructura de datos de los smartphones (marcas, modelos, precios, especificaciones técnicas y stock).
* **`/datos/catalogo.xsd`**: Esquema de validación (XML Schema) que define las reglas estrictas del negocio, como tipos de datos, rangos de precios permitidos y formatos de código.
* **`/datos/catalogo.dtd`**: Definición de Tipo de Documento (DTD) que establece la estructura jerárquica obligatoria, el orden de los elementos y los atributos para la validación básica del catálogo.

### Validación
El proceso de validación y las decisiones de diseño (uso de elementos vs atributos, restricciones de tipos, etc.) están documentados en **`/datos/validacion.md`**.

## Transformación de Datos (XSLT)
Para la generación del catálogo visual, se ha utilizado XSLT, este proceso permite separar completamente los datos de la presentación.

### Funcionamiento del flujo de datos
Para que los móviles aparezcan en la pantalla, el proyecto utiliza un sistema de tres pasos:
* **El Almacén** (`/datos/catalogo.xml`): Es donde guardamos solo los datos (nombre, precio, stock) sin nada de diseño. Es una lista organizada para que el ordenador la entienda fácilmente.
* **Las Instrucciones** (`/xslt/catalogo-to-html.xsl`): Este archivo contiene las reglas de transformación que indica al ordenador que datos tiene y como utilizarlos.
* **La visualizacion** (`/xslt/catalogo-to-html.xsl`): Es el resultado final que ve el usuario. Gracias al XSL, esta página se genera automáticamente combinando los datos y las instrucciones.

### Funcionalidades principales del XSLT aplicado
* **Matemáticas automáticas**: Cuenta cuántos móviles hay en total y suma todos los precios para darte el valor del inventario sin que tengas que usar una calculadora.
* **Filtro inteligente**: Revisa el almacén y solo muestra los móviles que tienen stock (true). Si un móvil se agota, desaparece de la tabla automáticamente.
* **Semáforo de precios**: Compara el precio de cada móvil; si cuesta más de 1000 €, le pone una etiqueta especial para que salga en rojo (caro).
* **Orden de limpieza**: Se encarga de que todo salga bien peinado, ordenando los móviles primero por su marca y luego por su precio.
* **Diseño destacado**: Si marcamos un móvil como "destacado" en los datos, el XSL le cambia el color de fondo a la fila para que resalte.
