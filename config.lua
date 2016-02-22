return {
	bot_api_key = '',
	time_offset = 0,
	cli_port = 4567,
	admin = 00000000,
	admin_name = 'YOU' ,

	errors = {
		connection = 'Connection error.',
		results = 'No results found.',
		argument = 'Invalid argument.',
		syntax = 'Invalid syntax.',
		not_admin = 'ERR! NOT ADMIN.'
	},
	moderation = {
		admins = {
			['000000000'] = 'You'
		},
				realms = {
			['00000000'] = 'MyRealm! '
		},
		admin_group = 00000000,
		realm_name = 'MyRealm'
	},
	plugins = {
		'Help.lua',
		'Pv.lua',
	}
}
