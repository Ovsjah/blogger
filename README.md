* Models, Views, Controllers (MVC)
* Data Structures & Relationships
* Routings
* Migrations
* Views with forms, partials, helpers
* RESTful design
* Adding gems for extra features



# Steps
1. Start Rails app => 'rails new blogger'
2. Configuring the Database (config/database.yml)
3. Starting the Server => 'bin/rails server'
4. Creating the Article Model => 'bin/rails generate model Article'
5. Working with the Database (db/migrate/20180123020745_create_articles.rb)
6. Saving the Migration => 'bin/rake db:migrate'
7. Working with a Model in the Console => 'bin/rails console' ('Article.all', 'Article.new')
8. Looking at the Model (app/models/article.rb)
9. Setting up the Router (config/routes.rb)
10. Looking at the Routing Table => 'bin/rake routes'
11. Creating the Articles Controller => 'bin/rails generate controller articles' (app/controllers/articles_controller.rb)
12. Defining the Index Action (app/controllers/articles_controller.rb)
13. Creating the Index Template (app/views/articles/index.html.erb)
14. Adding Navigation to the Index
15. Defining the Show Action (app/controllers/articles_controller.rb)
16. Creating the Show Template (app/views/articles/show.html.erb)
