function checksize() {

    var clientw = document.body.clientWidth;

    var clienth = document.body.clientHeight;

    var workarea = $("#divWorkarea");
    var footer = $("#divFooter");

    var wheight = clienth - (parseInt(workarea.position().top) + footer.height());

    if (wheight > 400) {
        workarea.css("min-height", wheight + "px");
    }
    else {
        workarea.css("min-height", "400px");
    }
}
