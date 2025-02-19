
document.addEventListener("DOMContentLoaded", function () {
    const dropdownHeader = document.querySelector(".dropdown-header");
    const dropdownContent = document.getElementById("sortDropdown");
    const currentSortText = document.getElementById("current-sort");
    const sortOptions = document.querySelectorAll(".sort-option");

    // Bật / tắt dropdown khi nhấn vào header
    dropdownHeader.addEventListener("click", function () {
        dropdownContent.classList.toggle("active");
        dropdownHeader.classList.toggle("active");
    });

    // Xử lý khi chọn một tùy chọn sắp xếp
    sortOptions.forEach(option => {
        option.addEventListener("click", function () {
            currentSortText.textContent = this.textContent;

            const sortKey = this.dataset.sortKey;
            const sortOrder = this.dataset.sortOrder;

            // Ẩn dropdown sau khi chọn
            dropdownContent.classList.remove("active");
            dropdownHeader.classList.remove("active");

            // Gọi hàm sắp xếp sản phẩm (có thể thay đổi logic tại đây)
            sortProducts(sortKey, sortOrder);
        });
    });

    // Đóng dropdown nếu click ra ngoài
    document.addEventListener("click", function (event) {
        if (!event.target.closest(".sort-container")) {
            dropdownContent.classList.remove("active");
            dropdownHeader.classList.remove("active");
        }
    });
    $("#brandFilterContainer").hide();
    $("#priceFilterContainer").hide()
    $(".dropdown-icon-filter").toggleClass("rotated")
    $("#dropdown-icon-price").toggleClass("rotated")
    $(document).ready(function (){
        $(".price").click(function (){
            $("#priceFilterContainer").slideToggle("fast")
            $("#dropdown-icon-price").toggleClass("rotated")
        })
    });
    $(document).ready(function(){
        $(".brand").click(function(){
            $("#brandFilterContainer").slideToggle("fast");
            $(".dropdown-icon-filter").toggleClass("rotated");
        });
    });
});

// Hàm sắp xếp (tùy chỉnh theo logic riêng)
function sortProducts(key, order) {
    console.log(`Sorting by ${key} in ${order} order`);
}
