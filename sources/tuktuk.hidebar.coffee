  hidebar = ->
    browser = navigator.userAgent
    browserRegex = /(Android|BlackBerry|IEMobile|Nokia|iP(ad|hone|od)|Opera M(obi|ini))/
    isMobile = false
    if browser.match(browserRegex)
      hideURLbar = ->
        window.scrollTo 0, 1
      isMobile = true
      addEventListener "load", (-> setTimeout hideURLbar, 0 ), false
