window.addEventListener('DOMContentLoaded', event => {

    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});
(function ($) {
    "use strict";
    function updateCartSummary() {
        let total = 0;
        $('.cart-item').each(function() {
            let itemId = $(this).data('id');
            let price = parseFloat($(this).data('price')) || 0;
            let quantityText = $(this).find('.item-info .new-price:contains("Quantity:")').text();
            let quantity = parseInt(quantityText.replace(/[^\d]/g, ''), 10) || 0;
            let subTotal = price * quantity;
            total += subTotal;
            let $summaryItem = $('.summary-item[data-id="' + itemId + '"]');
            $summaryItem.find('#item-price').text('$' + subTotal.toFixed(2));
        });
        $('#cart-total-amount').text('$' + total.toFixed(2));
    }
    $(document).ready(function() {
        updateCartSummary();
    });
})(jQuery);








