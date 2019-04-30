
function control_information(){
    var checkbox = document.getElementById('delivery_details_auto_d');
    if(checkbox.checked) {
        $("#name_d").attr('readonly', true);
        $("#city_d").attr('readonly', true);
        $("#street_d").attr('readonly', true);
        $("#zip_d").attr('readonly', true);
        var src = document.getElementById("name_f");
        var dest = document.getElementById("name_d");
        dest.value = src.value;
        src = document.getElementById("street_f");
        dest = document.getElementById("street_d");
        dest.value = src.value;
        src = document.getElementById("city_f");
        dest = document.getElementById("city_d");
        dest.value = src.value;
        src = document.getElementById("zip_f");
        dest = document.getElementById("zip_d");
        dest.value = src.value;
    }
    else {
        $("#name_d").attr('readonly', false);
        $("#city_d").attr('readonly', false);
        $("#street_d").attr('readonly', false);
        $("#zip_d").attr('readonly', false);
    }
}


function change() {
    var checkbox = document.getElementById('delivery_details_auto_d');
    if (checkbox.checked) {
        var src = document.getElementById("name_f");
        var dest = document.getElementById("name_d");
        dest.value = src.value;
        var src = document.getElementById("street_f");
        var dest = document.getElementById("street_d");
        dest.value = src.value;
        var src = document.getElementById("city_f");
        var dest = document.getElementById("city_d");
        dest.value = src.value;
        var src = document.getElementById("zip_f");
        var dest = document.getElementById("zip_d");
        dest.value = src.value;
    }
}


$(document).on('click', '#back_pay_method', function(event) {
    $("#v-pills-basket-2-tab").click();
});
$(document).on('click', '#continue_pay_method', function(event) {
    $("#v-pills-basket-2-tab").click();
});
$(document).on('click', '#back_basket', function(event) {
    $("#v-pills-basket-1-tab").click();
});
$(document).on('click', '#continue_delivery_information', function(event) {
    $("#v-pills-basket-3-tab").click();
});