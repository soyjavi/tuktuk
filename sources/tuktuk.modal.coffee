window.TukTuk.Modal = do (tk = TukTuk) ->

  lock  = undefined
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

  alert = (message = "") ->
    modal = tk.dom("[data-tuktuk=modal][data-modal=alert]")
    text  = modal.find "#text"
    text.html message

    modal.find("button.success").on "click.Modal.alert", ->
      hide()

    lock.addClass("active").show()
    @_hideAnyModal()
    modal.addClass "active"
    @

  confirm = (message = "", true_cb, false_cb) ->
    modal = tk.dom("[data-tuktuk=modal][data-modal=confirm]")
    text  = modal.find "#text"
    accept_button = modal.find "button.success"
    cancel_button = modal.find "button.alert"

    doCallback = (callback) ->
      hide()
      accept_button.unbind "click.Modal.confirm"
      cancel_button.unbind "click.Modal.confirm"
      if callback then setTimeout callback, 250

    text.html message
    accept_button.on "click.Modal.confirm", -> doCallback true_cb
    cancel_button.on "click.Modal.confirm", -> doCallback false_cb

    lock.addClass("active").show()
    @_hideAnyModal()
    modal.addClass "active"
    @

  prompt = (message = "", callback) ->
    modal = tk.dom("[data-tuktuk=modal][data-modal=prompt]")
    text  = modal.find "#text"
    content = modal.find "#content"
    accept_button = modal.find "button.success"
    cancel_button = modal.find "button.alert"

    text.html message
    accept_button.on "click.Modal.prompt", ->
      content = content.val()
      hide()
      accept_button.unbind "click.Modal.prompt"
      if callback then setTimeout ->
        callback(content)
      , 250

    cancel_button.on "click.Modal.prompt", -> hide()
    content.val ""

    lock.addClass("active").show()
    @_hideAnyModal()
    modal.addClass "active"
    @

  ###
      @loading: Describe method
  ###
  loading = (text) ->
    @_hideAnyModal()
    lock.attr("data-loading", "true").addClass("active").show()
    @

  _hideAnyModal: -> tk.dom("[data-tuktuk=modal]").removeClass("active")

  _Instance: do ->
    tk.dom("[data-tuktuk=modal].side").each (index, element) ->
      modal = tk.dom(element)
      modal.html "<div>" + modal.html() + "</div>"

    tk.dom("[data-tuktuk=modal] [data-modal=close]").on "click", -> TukTuk.Modal.hide()
    tk.dom("[data-tuktuk-modal]").on "click", ->
      TukTuk.Modal.show(tk.dom(this).attr('data-tuktuk-modal'))

    loading_template = """
      <div data-tuktuk="lock" data-loading="false">
        <div class="loading"></div>
      </div>
      """
    alert_template = """
      <div data-tuktuk="modal" data-modal="alert" class="column_5">
        <header class="bck alert">
          <h4 class="text thin inline">Alert</h4>
        </header>
        <article id="text" class="text big"></article>
        <footer>
          <button class="button large success on-right margin-bottom">
            <span class="icon ok"></span>
          </button>
        </footer>
      </div>
      """

    prompt_template = """
      <div data-tuktuk="modal" data-modal="prompt" class="column_5">
        <header class="bck alert">
          <h4 class="text thin inline">Alert</h4>
        </header>
        <article class="text big">
          <form>
            <label for="content" id="text"/>
            <input type="text" id="content"/>
          </form>
        </article>
        <footer>
          <button class="button large alert on-right margin-bottom">
            <span class="icon remove"></span>
          </button>
          <button class="button large success on-right margin-bottom margin-right">
            <span class="icon ok"></span>
          </button>
        </footer>
      </div>
      """

    confirm_template = """
      <div data-tuktuk="modal" data-modal="confirm" class="column_5">
        <header class="bck alert">
          <h4 class="text thin inline">Confirm</h4>
        </header>
        <article id="text" class="text big"></article>
        <footer>
          <button class="button large alert on-right margin-bottom">
            <span class="icon remove"></span>
          </button>
          <button class="button large success on-right margin-bottom margin-right">
            <span class="icon ok"></span>
          </button>
        </footer>
      </div>
      """

    tk.dom(document.body).append """
      #{alert_template}
      #{prompt_template}
      #{confirm_template}
      #{loading_template}
      """

    lock = tk.dom("[data-tuktuk=lock]").first()

  show    : show
  hide    : hide
  loading : loading
  alert   : alert
  confirm : confirm
  prompt  : prompt
