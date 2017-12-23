print("Hello World")

-- Comment Out

name = "Aniket"

io.write("Length of Name is ", #name, "\n")

-- Convert the data types
name = 4

io.write("\'Type\' of Name is ", type(name), "\n")

-- Multiline Strings and String concatenate

apple = " Apple\n"
mango = [[
I am a very long
string that continues forever
in the 
end]]

io.write(mango .. apple)  -- concatenated

-- Boolean and Defualt types

isAbleToDrivev = false
io.write(type(isAbleToDrivev), "\n");
io.write(type(isAbleToDrive), "\n");

-- --, ++ Not allowed

tom = 4; tom = tom + 1; io.write(tom, "\n")


-- Random values in Lua

io.write("math.random(): ", math.random(), "\n")
io.write("math.random(6,24): ", math.random(6,24), "\n")
math.randomseed(os.time())

print(string.format("Pi: %.10f", math.pi))


--- Conditional Statements

age = 13

if age < 16 then
	io.write("You should go to school", "\n")
	local AppleCool = "This is a local apple"  -- Local Scope
elseif (age >= 16) and (age < 18) then
	io.write("You can Drive", "\n")
else 
	io.write("You can Vote", "\n")
end

print(AppleCool)  -- Will print Nil as the scope of AppleCool is out of this context


-- Type Casting
print(string.format("not true = %s", tostring(not true)))


--- Playing around with Strings
man = "akdnahfbasjfbaskdjfbaskdjfbalsdfjbalsdjfbalsjdkfbalsdkjbfalksjdbfaslkdf"

io.write("String Length", #man, "\n")
io.write("Replace a with Bhoot: ", string.gsub(man, "a", "Bhoot"), "\n")
io.write("Index of \'jfb\': ", string.find(man, "jfb"), "\n")
io.write("Upper Case ", string.upper(man), "\n")
io.write("Lower Case ", string.lower(man), "\n")


-- Loop da Loop
i = 0

while (i <= 10) do
	io.write(i, " "); i = i + 1

	if i == 8 then io.write("\n") break end
end

-- No Continue statement

-- Example Nummber Guessing Game

-- repeat
--	print("Guess a number..")
	-- guess = io.read()

--	if type(guess) == 'string' then
--		print("Please enter a number, not a string") end

--until tonumber(guess) == 15


-- For Loop
for i = 0, 10, 1 do
	io.write(i)
end io.write("\n")

cakes = {"a", "b", "c", "d"}

for key, value in pairs(cakes) do
	io.write(value, " ")
end io.write("\n")


-- Arrays (Tables)
aTable = {}

for i = 1,10 do
	aTable[i] = i
end

-- Insert a value in the table
table.insert(aTable, 2, 1)

-- Converting table to a string
print(table.concat(aTable, ", "))

-- Cool multidimensional Tables
aMultiDim = {}

for i = 1, 9 do
	aMultiDim[i] = {}
	for j = 1, 9 do
		aMultiDim[i][j] = tostring(i) .. tostring(j)
	end
end

io.write(aMultiDim[2][3], "\n")


-- =============================
-- Functions

function getSum(num1, num2)
	return num1 + num2
end

print(string.format("5 + 4 is : %d", getSum(5,4)))


function splitString(theString)
	sTable = {}

	local i = 1

	for word in string.gmatch(theString, "[^%s]+") do
		sTable[i] = word
		i = i + 1
	end

	return sTable, i - 1 
end

apples = "apple mango banana guava pineapple"
splitStringTable, words = splitString(apples)

print(table.concat(splitStringTable, ", ") .. " " .. words)


-- Functions with variable number of arguments
function getSumMore( ... )
	local sum = 0

	for k, v in pairs{...} do
		sum = sum + v
	end

	io.write(sum, "\n")
end

getSumMore(3, 4, 6, 7)

-- Functions stored in variables

squareIt = function(x) return math.pow(x, 2) end
print(squareIt(2))

-- closure Functions
function increment()
	local i = 0

	return function()
		i = i + 1 return i
	end
end

top = increment()
print(top())  -- Output 1
print(top())  -- Output 2