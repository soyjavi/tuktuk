unless window.TukTuk
  window.TukTuk =
    dom: (args...) -> if $$? then $$ args... else $ args...


window.TukTuk.Modal = do (tk = TukTuk) ->

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
    lock.removeClass("active").attr("data-loading", "false")
    modal.removeClass "active"
    @

  ###
      @loading: Describe method
  ###
  loading = (text) ->
    lock.attr("data-loading", "true").addClass("active")
    @

  _Instance: (->
    tk.dom("[data-tuktuk=modal].side").each (index, element) ->
      modal = tk.dom(element)
      modal.html "<div>" + modal.html() + "</div>"

    tk.dom("[data-tuktuk=modal] [data-modal=close]").on "click", -> TukTuk.Modal.hide()
    tk.dom("[data-tuktuk-modal]").on "click", ->
      TukTuk.Modal.show(tk.dom(this).attr('data-tuktuk-modal'))

    tk.dom(document.body).append """
      <div data-tuktuk="lock" data-loading="false">
        <div class="loading">
            <span class="top"></span>
            <span class="right"></span>
            <span class="bottom"></span>
            <span class="left"></span>
        </div>
      </div>
      """
    lock = tk.dom("[data-tuktuk=lock]").first()
  )()

  show: show
  hide: hide
  loading: loading

