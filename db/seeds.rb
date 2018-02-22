# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Favorite.destroy_all

Favorite.create([
    {
        dba: "MORIMOTO", 
        camis: "41159798", 
        bldg: "88", 
        street: "10", 
        boro: "MANHATTAN", 
        zip: "10011", 
        user_id: 5, 
    },
    {
        dba: "STARBUCKS", 
        camis: "40927471", 
        bldg: "943", 
        street: "2", 
        boro: "MANHATTAN", 
        zip: "10022", 
        user_id: 5, 
    },
    {
        dba: "MIMI'S", 
        camis: "41395384", 
        bldg: "1209", 
        street: "CORTELYOU", 
        boro: "BROOKLYN", 
        zip: "11218", 
        user_id: 5, 
    }
])

Review.destroy_all

Review.create([
    {
        review: "Great restaurant!. The food is superb!", 
        rating: 5, 
        dba: "MORIMOTO", 
        camis: "41159798", 
        bldg: "88", 
        street: "10", 
        boro: "MANHATTAN", 
        zip: "10011", 
        user_id: 5 
    },
    {
        review: "Not the best coffee in town but it's on every corner. Very convenient!", 
        rating: 4, 
        dba: "STARBUCKS", 
        camis: "40927471", 
        bldg: "943", 
        street: "2", 
        boro: "MANHATTAN", 
        zip: "10022", 
        user_id: 5 
    },
    {
        review: "The hipsters keep trying to take over but places like Mimi's will always exist!", 
        rating: 4, 
        dba: "MIMI'S", 
        camis: "41395384", 
        bldg: "1209", 
        street: "CORTELYOU", 
        boro: "BROOKLYN", 
        zip: "11218", 
        user_id: 5
    }
])

Faq.destroy_all

Faq.create([
    {
        question: "The restaurant I'm searching for doesn't show up in the result.", 
        answer: "Check the spelling of the restaurant. If it is correct, it is possible that the official name of the restaurant is different than the public name."
    },
    {
        question: "What is a letter grade?", 
        answer: "Starting in July 2010, New York City has required restaurants to post letter grades that correspond to scores received from sanitary inspections. An inspection score of 0-13 is an A, 14-27 points is a B, and 28 or more points is a C. Grade cards must be posted where they can easily be seen by people passing by."
    },
    {
        question: "What does the grade mean to me?", 
        answer: "If a restaurant is still open after a health inspection, it has been determined that they are safe enough for the public to eat at the establishment. However, it is public perception of the value of an A that leads people to shy away from places that do not have an A posted."
    },
    {
        question: "How does the Health Department score and grade the restaurants?", 
        answer: "This link (https://www1.nyc.gov/assets/doh/downloads/pdf/rii/restaurant-grading-faq.pdf) can easily explain the process."
    }
])

puts "There were #{Review.count} reviews added, #{Favorite.count} favorites added and #{Faq.count} FAQs added!"