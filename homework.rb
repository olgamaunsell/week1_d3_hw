# Homework

# A. Given the following data structure:

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add `"Edinburgh Waverley"` to the end of the array

stops.push("Edinburgh Waverley")
p stops

# 2. Add `"Glasgow Queen St"` to the start of the array

stops.unshift("Glasgow Queen St")
p stops

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)

stops.insert(4,"Polmont")

p stops

# 4. Work out the index position of `"Linlithgow"`

p "Index position of Linlithgow is: #{stops.index("Linlithgow")}"

# 5. Remove `"Livingston"` from the array using its name

stops.delete("Livingston")

p stops

# 6. Delete `"Cumbernauld"` from the array by index

stops.delete_at(2)

p "Ex 6: Deleted Cumbernauld"
puts stops

# 7. How many stops there are in the array?

p "Ex. 7: Number of stops: "
p stops.length

# 8. How many ways can we return #Falkirk High from the #array?
p "Ex. 8 return Falkirk High"
p stops[2]
p stops[-5]

# 9. Reverse the positions of the stops in the array

p "Ex. 9 reverse position of stops"
p stops.reverse

# 10. Print out all the stops using a for loop
p "Ex. 10 print all stops"
for stop in stops
  p stop
end

## B. Given the following data structure:

  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p "Ex B:1"
p users["Jonathan"][:twitter]

# 2. Get Erik's hometown
p "Ex B:2"
p users["Erik"][:home_town]

# 3. Get the array of Erik's favourite numbers
p "Ex B:3"
p users["Erik"][:favourite_numbers]

# 4. Get the type of Avril's pet Colin
p "Ex B:4"
p users["Avril"][:pets]["colin"]

# 5. Get the smallest of Erik's favourite numbers
p "Ex B:5"
p users["Erik"][:favourite_numbers].sort.first

# 6. Add the number `7` to Erik's favourite numbers
p "Ex B:6"
users["Erik"][:favourite_numbers].push(7)
p users["Erik"][:favourite_numbers]

# 7. Change Erik's hometown to Edinburgh
p "Ex B:7 Update hometown to Edinburgh"
users["Erik"][:hometown] = "Edinburgh"
p users["Erik"][:hometown]

# 8. Add a pet dog to Erik called "Fluffy"

p "Ex B:8 "
#Eric_pets = users["Erik"][:pets]

users["Erik"][:pets][:dog] = "Fluffy"
p users["Erik"][:pets]

# 9. Add yourself to the users hash
