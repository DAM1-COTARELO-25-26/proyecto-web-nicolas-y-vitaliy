# Consultas XPath del proyecto MoVendi


## 1. Rutas absolutas y relativas


### Consulta 1: Ruta Absoluta

Expresion XPath: /catalogo/smartphone/modelo

Explicacion: Saca los modelos desde la raiz del documento.

Resultado esperado: "Edge 70", "Galaxy A26", etc.

Contexto de uso: Para rellenar un menu rapido.


### Consulta 2: Ruta Relativa

Expresion XPath: //color

Explicacion: Busca la etiqueta color por todo el XML.

Resultado esperado: Los colores sueltos (Rio Red, Mint...).

Contexto de uso: Para hacer una paleta de colores.


## 2. Predicados


### Consulta 3: Predicado por atributo

Expresion XPath: //smartphone[@id='MOV-006']

Explicacion: Selecciona el movil que tenga esa id.

Resultado esperado: Todo el codigo del iPhone 17 Pro Max.

Contexto de uso: Cuando clicas para ver los detalles del producto.
