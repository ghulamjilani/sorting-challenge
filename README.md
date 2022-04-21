# Challenge:

Implement single page application, displaying in its landing page (home page), a table with the following columns:
Teacher                School                   School Year

## Requirements:
- Table is centered horizontally in the home page
- Column heads row is blue background with white font
- Cells have blue borders and light gray background
- Default # of rows is 25
- Below the table, you have pagination
- Each table head column is clickable (with an up/down arrow showing next to it) to change the sort direction, based on that column.
- The table must be done using Hotwire/Stimulus/TurboFrame, on the front end, without having to go back to the server to refresh the screen, or using any JS libraries (such as datatables).


# Tech Stack:

* Ruby version: 3.1.0
* Rails version: ~> 7.0.2
* MySql
* Tailwind
* TurboFrame

# Deployment instructions
- Clone the project
- Go to the directory
- Run bundle install
- Create .env file at root directory of the project
- Go to the database.yml file and add environment variables in .env according to database.yml
- Run rails db:create db:migrate db:seed
- Run rails s to start rails server

# How to run rspec/test cases:
- run this on console *rspec spec/models/teacher_spec.rb*
- run this on console *rspec spec/controllers/teachers_spec.rb*
