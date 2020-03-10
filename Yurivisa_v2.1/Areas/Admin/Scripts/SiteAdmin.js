


$(document).ready(function () {
    $("#IconClose").click(function () {
        $("#IconClose").removeClass("active")
        $("#AdminNavbar").removeClass("active");
        $("#AdminContainer").addClass("active");
        $("#IconOpen").addClass("active");
    })
    $("#IconOpen").click(function () {
        $("#IconOpen").removeClass("active");
        $("#IconClose").addClass("active");
        $("#AdminNavbar").addClass("active");
        $("#AdminContainer").removeClass("active");
    })
    
   
    
    //    {
    //    stylesSet = 'mystyles:/Content/bootstrap.min.css'
    //};
  

})
