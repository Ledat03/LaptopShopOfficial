document.addEventListener("DOMContentLoaded", function () {
    $("#brandFilterContainer").hide();
    $("#priceFilterContainer").hide();
    $("#targetFilterContainer").hide();

    $(".dropdown-icon-filter").addClass("rotated");
    $("#dropdown-icon-price").addClass("rotated");
    $(".dropdown-icon-target").addClass("rotated");

    $(".price").click(function () {
        $("#priceFilterContainer").slideToggle("fast");
        $("#dropdown-icon-price").toggleClass("rotated");
    });

    $(".brand").click(function () {
        $("#brandFilterContainer").slideToggle("fast");
        $(".dropdown-icon-filter").toggleClass("rotated");
    });

    $(".target").click(function () {
        $("#targetFilterContainer").slideToggle("fast");
        $(".dropdown-icon-target").toggleClass("rotated");
    });

    function getQueryParams() {
        const params = {};
        window.location.search.substring(1).split('&').forEach(pair => {
            const [key, value] = pair.split('=');
            if (!params[key]) {
                params[key] = [];
            }
            params[key].push(decodeURIComponent(value));
        });
        return params;
    }

    function applyFilters(params) {
        if (params.low) {
            $("#minPrice").val(params.low[0]);
        }
        if (params.high) {
            $("#maxPrice").val(params.high[0]);
        }
        if (params.TargetList) {
            params.TargetList.forEach(value => {
                $(`input[name="TargetList"][value="${value}"]`).prop('checked', true);
            });
        }
        if (params.FactoryList) {
            params.FactoryList.forEach(value => {
                $(`input[name="FactoryList"][value="${value}"]`).prop('checked', true);
            });
        }
    }

    const params = getQueryParams();
    applyFilters(params);

    $("#filterForm").submit(function (event) {
        event.preventDefault();

        var url = "/Explore?page=0&";
        var low = $("#minPrice").val();
        var high = $("#maxPrice").val();
        var targetList = [];
        var factoryList = [];

        $('input[name="TargetList"]:checked').each(function () {
            targetList.push($(this).val());
        });

        $('input[name="FactoryList"]:checked').each(function () {
            factoryList.push($(this).val());
        });

        if (low || high) {
            if (low) {
                url += "low=" + low + "&";
            }
            if (high) {
                url += "high=" + high + "&";
            }
        }
        if (targetList.length > 0) {
            url += "TargetList=" + targetList.join(",") + "&";
        }

        if (factoryList.length > 0) {
            url += "FactoryList=" + factoryList.join(",") + "&";
        }

        if (url.endsWith("&")) {
            url = url.slice(0, -1);
        }

        window.location.href = encodeURI(url);
    });
    $(document).ready(function () {
        function getUrlParameter(name) {
            var results = new RegExp('[?&]' + name + '=([^&#]*)').exec(window.location.href);
            return results ? decodeURIComponent(results[1]) : null;
        }

        var factoryListParam = getUrlParameter('FactoryList');
        if (factoryListParam) {
            var factoryValues = factoryListParam.split(',');
            $('input[name="FactoryList"]').each(function() {
                $(this).prop('checked', factoryValues.includes($(this).val()));
            });
        }

        var targetListParam = getUrlParameter('TargetList');
        if (targetListParam) {
            var targetValues = targetListParam.split(',');
            $('input[name="TargetList"]').each(function() {
                $(this).prop('checked', targetValues.includes($(this).val()));
            });
        }

        // Khôi phục giá trị cho minPrice và maxPrice
        document.getElementById('minPrice').value = getUrlParameter('low') || '';
        document.getElementById('maxPrice').value = getUrlParameter('high') || '';
    });


    $("#targetFilterContainer").slideToggle("fast");
    $(".dropdown-icon-target").toggleClass("rotated");
    $("#priceFilterContainer").slideToggle("fast");
    $("#dropdown-icon-price").toggleClass("rotated");
    $("#brandFilterContainer").slideToggle("fast");
    $(".dropdown-icon-filter").toggleClass("rotated");
});

function sortProducts(key, order) {
    console.log(`Sorting by ${key} in ${order} order`);
}
