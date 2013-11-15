window.TukTuk.Accordion = do (tk = TukTuk) ->

  init: do ->    
    tk.dom("[data-tuktuk=accordion]").each (index, element) ->
      accordion = tk.dom element
      activator = accordion.find("[data-accordion=activator]").first()
      activator.on "click", (event) ->
        if accordion.hasClass "active"
          accordion.removeClass "active"
        else 
          accordion.addClass "active"