###
TukTuk - Simple (but powerful) RWD Framework
http://tuktuk.tapquo.com
Copyright (c) 2011-2013 Tapquo S.L. - Licensed GPLv3, Commercial

@namespace  Tuktuk
@author     Javier Jimenez Villar <javi@tapquo.com> || @soyjavi
###

window.TukTuk = TukTuk = {}

TukTuk.VERSION = "0.8"
TukTuk.dom     = (args...) -> if $$? then $$ args... else $ args...
TukTuk.ready   = TukTuk.dom().ready
