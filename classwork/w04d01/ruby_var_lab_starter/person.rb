class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 50
    end

    def children
        # create children array here
        children = ["Billy","Steve Jr","Jimmy","Tevor"]

    end

    def address

        # create address hash here
        person_address = {
            house_number: 10,
            street: "Springfield lane",
            town: "Springfield",
            county: "county",
            postcode: "S12 6TR",
            email_addresses: ["billy123@email.com","Trevman321@email.com"],


        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end

end

array = [1,2,3,4,5,6,7,8,9,10]

array.each do |x|
    puts x
end

for x in array
    puts x
end

