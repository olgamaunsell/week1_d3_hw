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

deleted_item = stops.delete("Livingston")

p stops
p "deleted item #{deleted_item}"

# 6. Delete `"Cumbernauld"` from the array by index

stops.delete_at(2)

p "Ex 6: Deleted Cumbernauld"
puts stops

# 7. How many stops there are in the array?

p "Ex. 7: Number of stops: "
# all 3 below do the same
p stops.length
p stops.count
p stops.size

# 8. How many ways can we return #Falkirk High from the #array?

p "Ex. 8 return Falkirk High"
p stops[2]
p stops[-5]
p stops.fetch(2)
p stops.slice(2)
p stops.at(2)

# 9. Reverse the positions of the stops in the array

# if want reverse for good in array use .reverse!
p "Ex. 9 reverse position of stops"
p stops.reverse

# if want reverse for good use .reverse!

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
p users["Erik"][:favourite_numbers].sort().first()

#or can use .min
#p users["Erik"][:favourite_numbers].min()

# 6. Add the number `7` to Erik's favourite numbers
# it's an array so can use .push
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
# take note of key/value

users["Erik"][:pets]["Fluffy"] = :dog
p users["Erik"][:pets]

# 9. Add yourself to the users hash
# can also create a separate hash called new_user which can be # # reused then type
# users ["Olga"] = new_user

p "Ex B:9 "
users ["Olga"] = {
      :twitter => "olga",
      :favourite_numbers => [1, 3,7],
      :home_town => "Edinburgh",
      :pets => {"tipsy" => :cat, "spiky" => :hedgehog}
    }

    puts users["Olga"]

    # C. Given the following data structure:

    united_kingdom = [
      {
        name: "Scotland",
        population: 5295000,
        capital: "Edinburgh"
      }, {
        name: "Wales",
        population: 3063000,
        capital: "Swansea"
      }, {
        name: "England",
        population: 53010000,
        capital: "London"
      }
    ]

    # 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
    p "C. Ex 1"
    # use the index to access Wales
    united_kingdom[1][:capital] = "Cardiff"

    p united_kingdom

    # 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

    northern_ireland = {
        name: "Northern Ireland",
        population: 1811000,
        capital: "Belfast"
    }
    united_kingdom.push(northern_ireland)
    p united_kingdom

    # 3. Use a loop to print the names of all the countries in the UK.

  for country in united_kingdom
    p country[:name]
  end

    # 4. Use a loop to find the total population of the UK.
    total_pop = 0
    for country in united_kingdom
      total_pop += country[:population]
    end
    p total_pop
