var __slice = [].slice;

if (window.TukTuk == null) {
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

window.TukTuk.Box = (function(tk, undefined_) {
  var box, hide, lock, show;
  lock = void 0;
  box = void 0;
  show = function(box_id) {
    box = tk.dom("[data-tuktuk=boxes] #" + box_id).first();
    box.addClass("active");
    return this;
  };
  hide = function() {
    box.removeClass("active");
    return this;
  };
  return {
    _Instance: (function() {
      tk.dom("[data-tuktuk=boxes] [data-action=close]").on("click", function() {
        return TukTuk.Box.hide();
      });
      return tk.dom("[data-tuktuk-box]").on("click", function() {
        return TukTuk.Box.show(tk.dom(this).attr('data-tuktuk-box'));
      });
    })(),
    show: show,
    hide: hide
  };
})(TukTuk);
