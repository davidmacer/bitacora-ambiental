function buscaUgaPolitica() {
    const politicaItem = document.querySelectorAll('.politica__item');
    const politicaDescription = document.querySelectorAll('.politica__description');
    politicaItem.forEach((element, index) => {
        element.addEventListener('click', event => {
            event.stopPropagation();
            politicaDescription.forEach((content, ind) => {
                if (index!==ind) {
                    content.classList.remove('active');
                    politicaItem[ind].classList.remove('active'); // Remover la clase active de los títulos no seleccionados
                }
            });
            politicaDescription[index].classList.toggle('active'); //Alterna la clase active de la descripción seleccionada 
            politicaItem[index].classList.toggle('active'); // Alternar la clase active del título seleccionado
        });
    });
};
buscaUgaPolitica();