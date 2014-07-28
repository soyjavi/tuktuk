window.TukTuk.Button = do (tk = TukTuk) ->

  ###
      @todo: Describe method
  ###
  loading = (selector, value=true) ->
    button = tk.dom selector
    if button.length > 0
      if value
        button.attr "disabled", "disabled"
        button.attr "data-loading", "true"
        button.prepend """
          <div class="loading">
            <div class="container">
                <span class="top"></span>
                <span class="right"></span>
                <span class="bottom"></span>
                <span class="left"></span>
            </div>
          </div> """
      else
        button.removeAttr("disabled").removeAttr("data-loading")
        button.children(".loading").remove()

  loading: loading


