GameObject = Class{}

function GameObject:init(def, x, y)
self.type = def.type

self.texture = def.texture
self.frames = def.frames or 1

self.solid = def.solid
--self.consumable = def.consumable

self.defaultState = def.defaultState
self.state = self.defaultState
self.states = def.states

self.x = x
self.y = y
self.width = def.width
self.height = def.height

self.onCollide = function() end
self.onConsume = function() end
end

function GameObject:update(dt)
end

function GameObject:render(adjacentOffsetX, adjacentOffsetY)
love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.states[self.state].frame or self.frame],
	self.x + adjacentOffsetX, self.y + adjacentOffsetY)
end