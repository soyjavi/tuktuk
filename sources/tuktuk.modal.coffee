window.TukTuk.Modal = do (tk = TukTuk) ->

  lock = undefined
  modal = undefined

  ###
      @todo: Describe method
  ###
  show = (modal_id) ->
    lock.addClass("active").show()
    @_hideAnyModal()
    modal = tk.dom("[data-tuktuk=modal]##{modal_id}").addClass "active"
    @

  ###
      @todo: Describe method
  ###
  hide = ->
    lock.removeClass("active")
    modal?.removeClass "active"
    setTimeout ->
      lock.attr("data-loading", "false").hide()
    , 250
    @

  ###
      @loading: Describe method
  ###
  loading = (text) ->
    @_hideAnyModal()
    lock.attr("data-loading", "true").addClass("active").show()
    @

  _hideAnyModal: -> tk.dom("[data-tuktuk=modal]").removeClass("active")

  _Instance: (->
    tk.dom("[data-tuktuk=modal].side").each (index, element) ->
      modal = tk.dom(element)
      modal.html "<div>" + modal.html() + "</div>"

    tk.dom("[data-tuktuk=modal] [data-modal=close]").on "click", -> TukTuk.Modal.hide()
    tk.dom("[data-tuktuk-modal]").on "click", ->
      TukTuk.Modal.show(tk.dom(this).attr('data-tuktuk-modal'))

    tk.dom(document.body).append """
      <div data-tuktuk="lock" data-loading="false">
        <div class="loading"></div>
      </div>
      """
    tk.dom("[data-tuktuk=lock]").on "click", (event) ->
      loading = lock.attr("data-loading")
      TukTuk.Modal.hide() unless event.target is modal or loading is "true"
      
    lock = tk.dom("[data-tuktuk=lock]").first()
  )()

  show: show
  hide: hide
  loading: loading
