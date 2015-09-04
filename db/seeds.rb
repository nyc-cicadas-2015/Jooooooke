# # Code to populate the database ...

# # Seed dogs table
# tenley_details = { :name     => "Tenley",
#                    :license  => "OH-9384764",
#                    :age      => 1,
#                    :breed    => "Golden Doodle",
#                    :owner_id => 1 }

# jayda_details = { :name     => "Jayda",
#                   :license  => "OH-4893720",
#                   :age      => 3,
#                   :breed    => "Bull Terrier",
#                   :owner_id => 2 }


# tenley = Dog.new(tenley_details)
# tenley.save

# Dog.create(jayda_details)

# Dog.find_or_create_by(name: "Eleanor") do |dog|
#   dog.license  = "OH-9843098"
#   dog.age      = 1
#   dog.breed    = "Pit Bull"
#   dog.owner_id = 3
# end


# # Seed ratings table
# Rating.create([
#   {coolness: 6,  cuteness: 10, judge_id: 1, dog_id: 1 },
#   {coolness: 10, cuteness: 6,  judge_id: 1, dog_id: 2 },
#   {coolness: 5,  cuteness: 10, judge_id: 2, dog_id: 1 },
#   {coolness: 10, cuteness: 8,  judge_id: 2, dog_id: 2 },
#   {coolness: 7,  cuteness: 5,  judge_id: 3, dog_id: 1 },
#   {coolness: 7,  cuteness: 4,  judge_id: 4, dog_id: 3 },
#   {coolness: 5,  cuteness: 3,  judge_id: 5, dog_id: 3 }
# ])


# # Seed people table
# Person.create([
#   {first_name: "Teagan",  last_name: "Hickman" },
#   {first_name: "Taylor",  last_name: "Long-Hurst" },
#   {first_name: "Aaron",   last_name: "Cumbow" },
#   {first_name: "Joseph",  last_name: "Leal" },
#   {first_name: "Susan",   last_name: "Spallino" },
# ])

# Seed Joke table
alex_details = { :name  => 'Alex',
                 :age   => 44 }

# seed joke table

  jokes = [
    {question: "Why did the dolphin take up Buddhism?", answer: "because he was searching for a higher porpoise"},
    {question: "What are the sexiest farm animals?", answer: "brown chicken brown cow"},
    {question: "Why did Beethoven kill his chicken?", answer:"it kept saying 'Bach, Bach, Bach...'" },
    {question: "What do you call a nosey pepper?", answer: "jalapeno business"},
    {question: "What's the difference between an accordian and an onion?", answer: "No one cries when you cut up an accordion"}
  ]

  jokes.each do |joke|
    Joke.create(joke)
  end


# seed dummy_joke
  dummies = [
    {dummy_answer:"they don't want to be spotted"},
    {dummy_answer:"to get to the other side"},
    {dummy_answer:"that's what s/he said!"},
    {dummy_answer:"shoot one of them"},
    {dummy_answer:"WUBALUBBA DUB DUB"},
    {dummy_answer:"jail."},
    {dummy_answer:"the dog knows when to stop scratching"},
    {dummy_answer:"put sheet music in front of them"},
    {dummy_answer:"just one-- all the rest are true"},
    {dummy_answer:"no eye deer"},
    {dummy_answer:"the horses seem very relieved"},
    {dummy_answer:"new age music"},
    {dummy_answer:"ayy lmao"}
  ]

  dummies.each do |dummy_answer|
    Dummy.create(dummy_answer)
  end
