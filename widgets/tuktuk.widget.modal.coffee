
TukTuk =
    dom: (args...) -> if $$? then $$ args... else $ args...

window.TukTuk = TukTuk


TukTuk.Modal = ((tk, undefined_) ->

  lock = undefined
  modal = undefined

  ###
      @todo: Describe method
  ###
  show = (modal_id)->
    modal = tk.dom("[data-tuktuk=modal]##{modal_id}").first()
    modal.addClass "active"
    lock.addClass "active"
    @

  ###
      @todo: Describe method
  ###
  hide = ->
    lock.removeClass "active"
    modal.removeClass "active"
    @

  _Instance: (->
    tk.dom("[data-tuktuk=modal] [data-action=close]").on "click", -> TukTuk.Modal.hide()
    tk.dom(document).append """<div data-tuktuk="lock"></div>"""
    lock = tk.dom("[data-tuktuk=lock]").first()
  )()

  show: show
  hide: hide

)(TukTuk)
