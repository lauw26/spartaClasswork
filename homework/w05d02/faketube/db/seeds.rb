# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Video.create([
	{name: 'Build a Mosaic Portolio Layout with CSS Grid', url: 'https://www.youtube.com/embed/plRcoRqLriw', description: 'The CSS Grid is here, and this is my first real look at how to use it. To start with, I wanted to look at how we can make a cool looking layout in the simplest way possible, so all we''re dealing with here is setting up the grid template, and then using spans to get things the size we need.', author: 'Kevin Powell', data: 'Aug 2, 2017' },
	{name: 'Node js vs Ruby on Rails For Web Development in 2017', url: 'https://www.youtube.com/embed/okMVc3-aCKQ', description: 'In this video we will look at the advantages and disadvantages of both Node.js and Ruby on Rails for web development. It is not an apples to apples comparison but we are looking at them as server-side technologies. If it makes you feel better, replace Node.js with Express.', author: 'Traversy Media', data: 'May 31, 2017' },
	{name: 'Why the founder of Rails rejects 80 percent of Software Engineer applicants', url: 'https://www.youtube.com/embed/qf6abZeAJh4', description: 'This is a short clip from an interview with David Heinemeier Hansson on the ScaleYourCode show. https://scaleyourcode.com In the clip, I ask David what he looks for when hiring Software Engineers. His answers are shocking, because of the mistakes so many ', author: 'Christophe Limpalair', data: 'Nov 10, 2015' },
	])	
