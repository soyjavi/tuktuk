var browser         = navigator.userAgent;
var browserRegex    = /(Android|BlackBerry|IEMobile|Nokia|iP(ad|hone|od)|Opera M(obi|ini))/;
var isMobile        = false;
if(browser.match(browserRegex)) {
    isMobile            = true;
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){
        window.scrollTo(0,1);
    }
}
