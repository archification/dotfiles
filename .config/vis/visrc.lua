require('vis')
require('plugins/filetype')
require('plugins/textobject-lexer')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme solarized')
	vis:command('set change-256colors on')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set numbers')
	vis:command('set relativenumbers')
	vis:command('set autoindent')
	vis:command('set show-tabs')
	vis:command('set cursorline')
	vis:command('set tabwidth 4')
end)
