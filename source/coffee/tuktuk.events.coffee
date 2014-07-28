TukTuk.Events = do (tk = TukTuk) ->

  init: (->
    TukTuk.dom("[data-control=checkbox]").on "change", (event) ->
      event.preventDefault()
      el = TukTuk.dom(this)
      input = el.find "input"
      checked = input[0].checked
      input.val checked.toString()
      el.removeClass "checked"
      if checked then el.addClass("checked")
  )()
