Lab 1 - Setup

### Objectives
In this lab you’ll go through the process of generating a Rails project, configuring it and then deploying it to a live server.

### Prerequisites

*   Have Ruby 2.0.0 installed
*   Have Rails 4.0.0 installed
*   Have a Github account
*   Have a Heroku account

### Part 1: Kick-off sample with Rails

*   Generate a vanilla Rails project
*   Understand the basic structure of a Rails project
*   Test the Rails development server

### Part 2: Deploy sample to Heroku

*   Configure only the production database to use Postgres
*   Install the Heroku toolbelt
*   Login to Heroku from command line
*   Create a Heroku project from the command line
*   Deploy your project from the command line
*   Test it

### Part 3: Setup MySQL locally

1.  Install MySQL
2.  Setup your project to use MySQL
3.  Configure your project with your MySQL settings
4.  Create the databases

### Part 1: Kick-off with Rails
In this part you’ll be creating a standard (“vanilla”) Rails project. This will be the base that you’ll use throughout all of the labs.

### Read:
_What is Ruby on Rails_  by Daniel Kehoe

Not required before moving on, but worth the read early on.
[http://railsapps.github.io/what-is-ruby-rails.html](http://railsapps.github.io/what-is-ruby-rails.html)

### Read:

*  _Getting Started with Rails_  by The Ruby on Rails Guides
*  Read sections 1 - 4 [http://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project](http://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project)

### Create:
1.  Generate a vanilla Rails project named “reservester”
2.  Run the project using the Rails built-in server
3.  View it in a web browser at [http://localhost:3000](http://localhost:3000)
4.  Open the project directory and explore what’s in there

### Read:
_Learning ROR: Part 5 Rails Project Directory Structure_  by Santhosh V.
[http://santhoshthepro.in/rails-directory-structure](http://santhoshthepro.in/rails-directory-structure)

### Reflect
*   What is Rails?
*   What is meant by Rails being “opinionated”?
*   What are the advantages and limitations in generating the project over writing the pieces individually?
*   Why does Rails generate so much “stuff”?

### Part 2: Deploy to Heroku
In a startup, or any company really, a developer’s job is to execute on ideas and make them tangible; At the end of all of the labs, you should have a working product deployed to Heroku. To do this, you’ll need to modify your project to use Postgresql for production.

### Watch:
_#342 Migrating to PostgreSQL_  by Rails Casts
[http://railscasts.com/episodes/342-migrating-to-postgresql](http://railscasts.com/episodes/342-migrating-to-postgresql)

### Read:
_Getting Started with Rails 4.x on Heroku_  by Heroku Dev Center

* [https://devcenter.heroku.com/articles/rails3](https://devcenter.heroku.com/articles/rails3)
* [https://devcenter.heroku.com/articles/getting-started-with-rails4](https://devcenter.heroku.com/articles/getting-started-with-rails4)

### Setup:
Install the Heroku Toolbelt: [https://toolbelt.heroku.com](https://toolbelt.heroku.com)
Read the _Getting Started_ section

### Create:

1.  Add the ‘pg’ gem to your project’s Gemfile
2.  Update the database.yml production section to use Postgresql
3.  Move the existing sqlite3 gem to a ‘:development, :test’ group in the Gemfile
4.  Login to your Heroku account via the command line
5.  Create a Heroku app via the command line for your project
6.  Deploy your code to Heroku
7.  Visit your project in your browser (You should see an error right now on Heroku)

### Reflect:

*   What service does Heroku provide?
*   What are some of the advantages and limitations to using Heroku?
*   What will happen if an app has 100 hits per day? 1,000? 10k?
*   What kinds of security risks are introduced with using Heroku?

### Part 3: Setup MySQL locally
Since Heroku requires Postgres we’ll use it in production and use MySQL in the other environments. While it's generally advisable to only use one database for all environments (i.e. development, test and production), the tools for viewing and connecting locally with MySQL are easier to setup and manage locally than Postgres.

### Setup:
Install MySQL for your system:

#### OS X:

*  Use brew to install MySQL
*  Download Sequel Pro ( [http://www.sequelpro.com](http://www.sequelpro.com) )

#### Linux:

*  Use your system’s package manager (e.g. apt-get)
*  Download DBeaver ( [http://dbeaver.jkiss.org](http://dbeaver.jkiss.org) )

### Read:
Correct MySQL configuration for Ruby on Rails Database.yml file on _StackOverflow_
[http://stackoverflow.com/questions/5872264/correct-mysql-configuration-for-ruby-on-rails-database-yml-file#5872284](http://stackoverflow.com/questions/5872264/correct-mysql-configuration-for-ruby-on-rails-database-yml-file#5872284)

### Create:
1.  Add the `mysql2` gem to your project’s Gemfile
2.  Update the database.yml development and test sections.
3.  Use `mysql2` as the adapter
4. Use your MySQL root user (i.e. ‘root’)
5. Use your MySQL root user’s password
6. Use `reservester_development` and `reservester_test` respectively
7.  Create the databases by running:  `$ rake db:create`

### Reflect:

*   What are some of the differences between MySQL and Postgres?
*   Normally, why would you want to use the same database in all environments?

### Lab Submission

### Submit:
Check in all of your code as a separate `lab-1` branch then issue a pull request from your `lab-1` branch into your `master` branch.

### Reflect:
Review the pull-requests issued by other students.

*   What is similar and different?
*   Is there anything that surprises you?</textarea></div><div class="copyright pull-right"><p>&copy; 2014 Property of Startup Institute</p><input type="hidden" id="data_input" value="## Lab 1 - Setup

### Objectives
In this lab you’ll go through the process of generating a Rails project, configuring it and then deploying it to a live server.

### Prerequisites

*   Have Ruby 2.0.0 installed
*   Have Rails 4.0.0 installed
*   Have a Github account
*   Have a Heroku account

### Part 1: Kick-off sample with Rails

*   Generate a vanilla Rails project
*   Understand the basic structure of a Rails project
*   Test the Rails development server

### Part 2: Deploy sample to Heroku

*   Configure only the production database to use Postgres
*   Install the Heroku toolbelt
*   Login to Heroku from command line
*   Create a Heroku project from the command line
*   Deploy your project from the command line
*   Test it

### Part 3: Setup MySQL locally

1.  Install MySQL
2.  Setup your project to use MySQL
3.  Configure your project with your MySQL settings
4.  Create the databases

### Part 1: Kick-off with Rails
In this part you’ll be creating a standard (“vanilla”) Rails project. This will be the base that you’ll use throughout all of the labs.

### Read:
_What is Ruby on Rails_  by Daniel Kehoe

Not required before moving on, but worth the read early on.
[http://railsapps.github.io/what-is-ruby-rails.html](http://railsapps.github.io/what-is-ruby-rails.html)

### Read:

*  _Getting Started with Rails_  by The Ruby on Rails Guides
*  Read sections 1 - 4 [http://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project](http://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project)

### Create:
1.  Generate a vanilla Rails project named “reservester”
2.  Run the project using the Rails built-in server
3.  View it in a web browser at [http://localhost:3000](http://localhost:3000)
4.  Open the project directory and explore what’s in there

### Read:
_Learning ROR: Part 5 Rails Project Directory Structure_  by Santhosh V.
[http://santhoshthepro.in/rails-directory-structure](http://santhoshthepro.in/rails-directory-structure)

### Reflect
*   What is Rails?
*   What is meant by Rails being “opinionated”?
*   What are the advantages and limitations in generating the project over writing the pieces individually?
*   Why does Rails generate so much “stuff”?

### Part 2: Deploy to Heroku
In a startup, or any company really, a developer’s job is to execute on ideas and make them tangible; At the end of all of the labs, you should have a working product deployed to Heroku. To do this, you’ll need to modify your project to use Postgresql for production.

### Watch:
_#342 Migrating to PostgreSQL_  by Rails Casts
[http://railscasts.com/episodes/342-migrating-to-postgresql](http://railscasts.com/episodes/342-migrating-to-postgresql)

### Read:
_Getting Started with Rails 4.x on Heroku_  by Heroku Dev Center

* [https://devcenter.heroku.com/articles/rails3](https://devcenter.heroku.com/articles/rails3)
* [https://devcenter.heroku.com/articles/getting-started-with-rails4](https://devcenter.heroku.com/articles/getting-started-with-rails4)

### Setup:
Install the Heroku Toolbelt: [https://toolbelt.heroku.com](https://toolbelt.heroku.com)
Read the _Getting Started_ section

### Create:

1.  Add the ‘pg’ gem to your project’s Gemfile
2.  Update the database.yml production section to use Postgresql
3.  Move the existing sqlite3 gem to a ‘:development, :test’ group in the Gemfile
4.  Login to your Heroku account via the command line
5.  Create a Heroku app via the command line for your project
6.  Deploy your code to Heroku
7.  Visit your project in your browser (You should see an error right now on Heroku)

### Reflect:

*   What service does Heroku provide?
*   What are some of the advantages and limitations to using Heroku?
*   What will happen if an app has 100 hits per day? 1,000? 10k?
*   What kinds of security risks are introduced with using Heroku?

### Part 3: Setup MySQL locally
Since Heroku requires Postgres we’ll use it in production and use MySQL in the other environments. While it's generally advisable to only use one database for all environments (i.e. development, test and production), the tools for viewing and connecting locally with MySQL are easier to setup and manage locally than Postgres.

### Setup:
Install MySQL for your system:

#### OS X:

*  Use brew to install MySQL
*  Download Sequel Pro ( [http://www.sequelpro.com](http://www.sequelpro.com) )

#### Linux:

*  Use your system’s package manager (e.g. apt-get)
*  Download DBeaver ( [http://dbeaver.jkiss.org](http://dbeaver.jkiss.org) )

### Read:
Correct MySQL configuration for Ruby on Rails Database.yml file on _StackOverflow_
[http://stackoverflow.com/questions/5872264/correct-mysql-configuration-for-ruby-on-rails-database-yml-file#5872284](http://stackoverflow.com/questions/5872264/correct-mysql-configuration-for-ruby-on-rails-database-yml-file#5872284)

### Create:
1.  Add the `mysql2` gem to your project’s Gemfile
2.  Update the database.yml development and test sections.
3.  Use `mysql2` as the adapter
4. Use your MySQL root user (i.e. ‘root’)
5. Use your MySQL root user’s password
6. Use `reservester_development` and `reservester_test` respectively
7.  Create the databases by running:  `$ rake db:create`

### Reflect:

*   What are some of the differences between MySQL and Postgres?
*   Normally, why would you want to use the same database in all environments?

### Lab Submission

### Submit:
Check in all of your code as a separate `lab-1` branch then issue a pull request from your `lab-1` branch into your `master` branch.

### Reflect:
Review the pull-requests issued by other students.

*   What is similar and different?
*   Is there anything that surprises you?"