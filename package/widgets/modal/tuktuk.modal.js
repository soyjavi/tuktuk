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

window.TukTuk.Modal = (function(tk) {
  var hide, loading, lock, modal, show;
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
    lock.removeClass("active").attr("data-loading", "false");
    modal.removeClass("active");
    return this;
  };
  /*
        @loading: Describe method
  */

  loading = function(text) {
    lock.attr("data-loading", "true").addClass("active");
    return this;
  };
  return {
    _Instance: (function() {
      tk.dom("[data-tuktuk=modal].side").each(function(index, element) {
        modal = tk.dom(element);
        return modal.html("<div>" + modal.html() + "</div>");
      });
      tk.dom("[data-tuktuk=modal] [data-modal=close]").on("click", function() {
        return TukTuk.Modal.hide();
      });
      tk.dom("[data-tuktuk-modal]").on("click", function() {
        return TukTuk.Modal.show(tk.dom(this).attr('data-tuktuk-modal'));
      });
      tk.dom(document.body).append("<div data-tuktuk=\"lock\" data-loading=\"false\">\n  <div class=\"loading\">\n      <span class=\"top\"></span>\n      <span class=\"right\"></span>\n      <span class=\"bottom\"></span>\n      <span class=\"left\"></span>\n  </div>\n</div>");
      return lock = tk.dom("[data-tuktuk=lock]").first();
    })(),
    show: show,
    hide: hide,
    loading: loading
  };
})(TukTuk);
