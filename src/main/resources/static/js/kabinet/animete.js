$('input#input1').on('change', function () {
    $('input[name="buttonSave"]').enabled;
});
$('input#input2').on('change', function () {
    $('input[name="buttonSave"]').enabled;
});
$('input#input3').on('change', function () {
    $('input[name="buttonSave"]').enabled;
});
$(function($){
    $('input[name="phone"]').mask("+375 (99) 999-99-99");
    $('input[name="homePhone"]').mask("99-99-99");
});