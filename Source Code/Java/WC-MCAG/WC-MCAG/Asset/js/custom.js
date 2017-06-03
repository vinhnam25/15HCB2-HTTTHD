

$("#sidebar > ul > li.active").removeClass("active");

var pathname = window.location.pathname;

if (pathname === "/Home/Home") $("#sidebar > ul > li").get(0).className = "active";
if (pathname === "/User/ViewListUser") $("#sidebar > ul > li").get(1).className = "active";