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
13. Creating the Index View (app/views/articles/index.html.erb)
14. Adding Navigation to the Index
15. Defining the Show Action (app/controllers/articles_controller.rb)
16. Creating the Show View (app/views/articles/show.html.erb)
17. Styling (app/assets/stylesheets/screen.css)
18. Defining the New Action (app/controllers/articles_controller.rb)
19. Creating the New View (app/views/articles/new.html.erb)
20. Defining the Create Action to process user response from form in New View (app/controllers/articles_controller.rb)
21. Defining article_params helper method to use Strong Parameters. (app/helpers/articles_helper.rb)
22. Including ArticlesHelper to controller class and using our helper method as a parameter inside new.
23. Defining the Edit Action (app/controllers/articles_controller.rb)
24. Creating the Edit View (app/views/articles/edit.html.erb)
25. Creating a Form Partial (_form.html.erb) for new.html.erb and edit.html.erb
26. Defining Update Action (app/controllers/articles_controller.rb)
27. Adding Flash (app/controllers/articles_controller.rb)
28. Adding Flash to the Layout (app/views/layouts/application.html.erb)
29. Configurating root to show articles index page (config/routes.rb)
30. Creating the Comment Model => 'bin/rails generate model Comment author_name:string body:text article:references'
31. Saving the Migration => 'bin/rake db:migrate'
32. Setting up the one to many connection between article and comment models (app/models/article.rb, app/models/comment.rb)
33. Testing in rails console => 'bin/rails console'

  a = Article.first
  a.comments
  Comment.new
  a.comments.new
  a.comments
  
  c = a.comments.new
  c.author_name = "Daffy Duck"
  c.body = "I think this article is thhh-thhh-thupid!"
  c.save
  d = a.comments.create(author_name: "Chewbacca", body: "RAWR!")
  
  a.reload
  a.comments
34. Displaying Comments for an Article (app/views/articles/show.html.erb)
35. Creating partial _comment.html.erb for randering comments (app/views/articles/_comment.html.erb)
36. Creating a Comment Form Partial (app/views/comments/_form.html.erb, app/views/articles/show.html.erb)
37. Configurating routes to specify comments as a sub-resource (config/routes.rb)
38. Generating Comments Controller 'bin/rails generate controller comments'
39. Defining Create Action with comment_params method for Comments Controller (app/controllers/comments_controller.rb)
