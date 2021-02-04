// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.


function checkOptions(select) {
    var otherInput = document.getElementById('otherInput');
    if (select.options[select.selectedIndex].value == "Другая...") {
        select.removeAttribute("name");
        otherInput.setAttribute("type", "text");
    }
    else {
        otherInput.setAttribute("type", "hidden");
        select.setAttribute("name", "TeamName")
    }
}
