file = io.open("appy.txt", "w+")
file:write(".Appy is awesome\n")
file:write("Mango guava\n")

file:seek("set", 0)
print(file:read("*a"))
file:close()

-- Appending to a file
file = io.open("appy.txt", "a+")
file:write("Some more text\n")

file:seek("set", 1)
print(file:read("*a"))
file:close()