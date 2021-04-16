GAME_OBJECT_DEFS = {
	['switch'] = {
		type = 'switch',
		texture = 'switches',
		frame = 2,
		width = 16,
		height = 16,
		solid = false,
		defaultState = 'unpressed',
		states = {
			['unpressed'] = {
				frame = 2
			},
			['pressed'] = {
				frame = 1
			}
		}
	},
	['pot'] = {
		--here the code for the pot
	},
	['heart'] = {
		type = 'heart',
		texture = 'hearts',
		frame = 5,
		width = 16,
		height = 16,
		solid = false,
		--consumable = true,
		onCollide = function()
		end,
		onConsume = function(player, object)
			gSounds['1-up']:play()
			player.health = player.health + 2
		end
	}
}