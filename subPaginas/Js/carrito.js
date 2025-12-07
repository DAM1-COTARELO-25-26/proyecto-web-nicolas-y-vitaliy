function agregarAlCarrito(nombre, precio, imagen) {
    let carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    let producto = {
        nombre: nombre,
        precio: precio,
        imagen: imagen
    };
    carrito.push(producto);
    
    localStorage.setItem('carrito', JSON.stringify(carrito));
    
    alert("¡" + nombre + " añadido al carrito!");
    
    actualizarContador();
}

function cargarCarrito() {
    let carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    let contenedor = document.getElementById('lista-carrito');
    let totalPrecio = document.getElementById('precio-total');
    let total = 0;

    contenedor.innerHTML = ''; 

    if (carrito.length === 0) {
        contenedor.innerHTML = '<p style="text-align:center; padding:20px;">Tu carrito está vacío.</p>';
        totalPrecio.innerText = '€0.00';
        return;
    }

    carrito.forEach((producto, index) => {

        let item = document.createElement('div');
        item.classList.add('item-carrito');
        item.innerHTML = `
            <img src="${producto.imagen}" alt="${producto.nombre}" class="img-carrito">
            <div class="info-item">
                <h4>${producto.nombre}</h4>
                <p>€${producto.precio}</p>
            </div>
            <button class="btn-eliminar" onclick="eliminarDelCarrito(${index})">🗑️</button>
        `;
        contenedor.appendChild(item);
        
        let precioLimpio = parseFloat(producto.precio.replace(',','')); 
        total += precioLimpio;
    });

    totalPrecio.innerText = '€' + total.toLocaleString('es-ES', {minimumFractionDigits: 2});
}

function eliminarDelCarrito(index) {
    let carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    carrito.splice(index, 1); 
    localStorage.setItem('carrito', JSON.stringify(carrito));
    cargarCarrito(); 
}

function actualizarContador() {
    let carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    let contador = document.getElementById('cart-count');
    if(contador) {
        contador.innerText = carrito.length;
    }
}

document.addEventListener('DOMContentLoaded', () => {
    actualizarContador();
    
    if(document.getElementById('lista-carrito')) {
        cargarCarrito();
    }
});

