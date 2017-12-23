Animal = {height=0, weight=9, name="no name", sound="no sound"}

function Animal:new(height, weight, name, sound)
	setmetatable({}, Animal)

	self.height = height
	self.weight = weight
	self.name = name
	self.sound = sound

	return self
end

function Animal:str()
	info = string.format("%s is %d feet tall, %d heavy and says %s",
	 self.name, self.height, self.weight, self.sound)

	return info
end

spot = Animal:new(12, 34, "Spot", "Woof")
print(spot:str())

-- Inheritance in Lua

Cat = Animal:new()

function Cat:new(height, weight, name, sound, favFood)
	setmetatable({}, Cat)

	self.height = height
	self.weight = weight
	self.name = name
	self.sound = sound
	self.favFood = favFood

	return self
end

function Cat:str()
	info = string.format("%s is %d feet tall, %d heavy and says %s. Favourite Food is %s",
	 self.name, self.height, self.weight, self.sound, self.favFood)

	return info
end

lava = Cat:new(11,23,"lava", "meow", "milk")
print(lava:str())
