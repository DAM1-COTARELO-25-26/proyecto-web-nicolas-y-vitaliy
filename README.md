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

### Validación
El proceso de validación y las decisiones de diseño (uso de elementos vs atributos, restricciones de tipos, etc.) están documentados en **`/datos/validacion.md`**.