$(document).ready(function() {

    $("#gre-panel").click(function() {
        window.location.href = 'gre.html';
    });

    $("#gmat-panel").click(function() {
        window.location.href = 'gmat.html';
    });

    $("#gate-panel").click(function() {
        window.location.href = 'gate.html';
    });

    $("#upsc-panel").click(function() {
        window.location.href = 'upsc.html';
    });
});

function getColleges(exam) {
    console.log("Requesting ", exam);
    var baseurl = "http://localhost/colleges.php";
    var url = baseurl + "?q=" + exam;

    $.get(url, function (data, status) {
        console.log("Status: ", status);
        $("#div_coll").html(data);
    });
}

function getAlumni() {
    console.log("Requesting alumni");
    var url = "http://localhost/alumni.php";

    $.get(url, function (data, status) {
        console.log("Status: ", status);
        $("#div_alumni").html(data);
    });
}