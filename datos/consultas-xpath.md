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

### Consulta 4: Predicado por valor numerico

Expresion XPath: //smartphone[precio < 1000]/modelo

Explicacion: Filtra los moviles de menos de 1000 euros.

Resultado esperado: "Edge 70", "Galaxy A26", "G86 Power"...

Contexto de uso: Seccion de moviles baratos en portada.


## 3. Funciones


### Consulta 5: Funcion de conteo

Expresion XPath: count(//smartphone[@sistema='iOS'])

Explicacion: Cuenta los moviles que tienen iOS.

Resultado esperado: 4

Contexto de uso: Poner un texto de "Tenemos 4 iPhones".


### Consulta 6: Funcion de suma

Expresion XPath: sum(//smartphone[marca='Motorola']/precio)

Explicacion: Suma los precios de los motorola.

Resultado esperado: 2597

Contexto de uso: Para ver el valor del stock de la marca.


### Consulta 7: Funcion contains()

Expresion XPath: //smartphone[contains(descripcion, 'potente')]/modelo

Explicacion: Busca la palabra potente en la descripcion.

Resultado esperado: "iPhone 17 Pro Max"

Contexto de uso: El buscador de la pagina.


## 4. Navegacion por ejes


### Consulta 8: Eje Ancestor

Expresion XPath: //color[text()='Mint']/ancestor::smartphone/modelo

Explicacion: Busca el color Mint y sube para ver de que movil es.

Resultado esperado: "Galaxy A26", "Galaxy S25"

Contexto de uso: Filtro por color en el catalogo.


## 5. Consultas complejas


### Consulta 9: Varias condiciones combinadas

Expresion XPath: //smartphone[@destacado='true' and precio > 1200]/modelo

Explicacion: Saca los destacados que valen mas de 1200.

Resultado esperado: "Razr 60 Ultra", "iPhone 17 Pro Max"...

Contexto de uso: Para el carrusel de la pagina principal.


### Consulta 10: Predicado con funcion anidada

Expresion XPath: //smartphone[count(colores/color) > 3]/marca

Explicacion: Mira que marcas tienen mas de 3 colores.

Resultado esperado: "Motorola", "Samsung", "Apple", "Apple"

Contexto de uso: Para una seccion de marcas con mas variedad.

