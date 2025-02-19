/*!
    * Start Bootstrap - SB Admin v7.0.7 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2023 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
//
// Scripts
//

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

    // Hàm tính toán và cập nhật tổng tiền
    function updateCartSummary() {
        let total = 0;

        // Lặp qua từng .cart-item
        $('.cart-item').each(function() {
            // Lấy id & price từ data attribute
            let itemId = $(this).data('id');
            let price = parseFloat($(this).data('price')) || 0;

            // Giả sử phần hiển thị số lượng có dạng "Quantity: X"
            // ta lấy text, sau đó tách lấy số
            let quantityText = $(this).find('.item-info .new-price:contains("Quantity:")').text();
            // Ví dụ quantityText = "Quantity: 3"
            let quantity = parseInt(quantityText.replace(/[^\d]/g, ''), 10) || 0;

            // Tính tiền cho item này
            let subTotal = price * quantity;
            total += subTotal;

            // Tìm phần tử .summary-item tương ứng (có data-id = itemId)
            // để cập nhật lại giá hiển thị
            let $summaryItem = $('.summary-item[data-id="' + itemId + '"]');
            $summaryItem.find('#item-price').text('$' + subTotal.toFixed(2));
        });

        // Cập nhật tổng tiền
        $('#cart-total-amount').text('$' + total.toFixed(2));
    }

    // Chỉ cần gọi 1 lần khi trang vừa load (vì không có input để thay đổi)
    $(document).ready(function() {
        updateCartSummary();
    });
})(jQuery);








