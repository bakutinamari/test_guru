# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create([{ name: 'Alex', age: 23 },
	                 { name: 'Dmitry', age: 45 }, 
	                 { name: 'Pavel', age: 15 }
                   ])

categories = Category.create([{ title: 'Geografy' },
                              { title: 'History' },
                              { title: 'Matematika' }
                            ])

tests = Test.create!([{ title: 'Test 1', level: 2, category: categories.first, author: users.first },
                     { title: 'Test 2', level: 3, category: categories.last, author: users[2] },
                     { title: 'Test 3', level: 2, category: categories[1], author: users.first },
                     { title: 'Test 4', level: 3, category: categories.last, author: users[1] },
                     { title: 'Test 5', level: 1, category: categories.first, author: users[2] }
                   ])
questions = Question.create!([{ body: 'Назовите самый маленький континент',test: tests.first },
                             { body: 'Какой формы земля?',test: tests[1] },
                             { body: 'Маск,Перельман,Обама-кто из них является нобелевским лауреатом?',test: tests[2] },
                             { body: 'В каком году было Крещение Руси?',test: tests[3] },
                             { body: 'Какая формула теоремы Пифагора?', test: tests.last }
                            ])

Answer.create!([{ body: 'Австралия', correct: true, question: questions.first },
                { body: 'Африка', question: questions.first },
                { body: 'Антарктида', question: questions.first },

                { body: 'Геойд',correct: true, question: questions[1] },
                { body: 'Шарообразная',correct: true, question: questions[1] },
                { body: 'Плоская', question: questions[1] },

               { body: 'Обама', correct: true, question: questions[2] },
               { body: 'Перельман', question: questions[2] },
               { body: 'Илон Маск', question: questions[2] },

               { body: '988 н.э',correct: true, question: questions[3] },
               { body: '1088 н.э', question: questions[3] },
               { body: '986 н.э', question: questions[3] },

               { body: '2 + 2 = 4', question: questions[4] },
               { body: 'a**2 + b**2 = c**2',correct: true, question: questions[4] },
               { body: 'E = mc**2', question: questions[4] }
              ])



                           