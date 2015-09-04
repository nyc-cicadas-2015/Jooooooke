# Seed Joke table
alex_details = { :name  => 'Alex',
                 :age   => 44 }

# seed joke table

  jokes = [
    {question: "Why did the dolphin take up Buddhism?", answer: "because he was searching for a higher porpoise"},
    {question: "What are the sexiest farm animals?", answer: "brown chicken brown cow"},
    {question: "Why did Beethoven kill his chicken?", answer:"it kept saying 'Bach, Bach, Bach...'" },
    {question: "What do you call a nosy pepper?", answer: "jalapeno business"},
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
    {dummy_answer:"jail!"},
    {dummy_answer:"the dog knows when to stop scratching"},
    {dummy_answer:"put sheet music in front of them"},
    {dummy_answer:"just one-- all the rest are true"},
    {dummy_answer:"no eye deer"},
    {dummy_answer:"the horses seem very relieved"},
    {dummy_answer:"new age music"},
    {dummy_answer:"lmao"}
  ]

  dummies.each do |dummy_answer|
    Dummy.create(dummy_answer)
  end
