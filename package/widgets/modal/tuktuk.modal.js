var __slice = [].slice;

if (!window.TukTuk) {
  window.TukTuk = {
    dom: function() {
      var args;
      args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      if (typeof $$ !== "undefined" && $$ !== null) {
        return $$.apply(null, args);
      } else {
        return $.apply(null, args);
      }
    }
  };
}

window.TukTuk.Modal = (function(tk, undefined_) {
  var hide, lock, modal, show;
  lock = void 0;
  modal = void 0;
  /*
        @todo: Describe method
  */

  show = function(modal_id) {
    modal = tk.dom("[data-tuktuk=modal]#" + modal_id).first();
    modal.addClass("active");
    lock.addClass("active");
    return this;
  };
  /*
        @todo: Describe method
  */

  hide = function() {
    lock.removeClass("active");
    modal.removeClass("active");
    return this;
  };
  return {
    _Instance: (function() {
      tk.dom("[data-tuktuk=modal] [data-modal=close]").on("click", function() {
        return TukTuk.Modal.hide();
      });
      tk.dom("[data-tuktuk-modal]").on("click", function() {
        return TukTuk.Modal.show(tk.dom(this).attr('data-tuktuk-modal'));
      });
      tk.dom(document.body).append("<div data-tuktuk=\"lock\"></div>");
      return lock = tk.dom("[data-tuktuk=lock]").first();
    })(),
    show: show,
    hide: hide
  };
})(TukTuk);
