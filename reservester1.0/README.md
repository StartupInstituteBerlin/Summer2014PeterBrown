

### Objectives
In this lab, you’ll be adding a Category functionality to the directory. You’ll create a Category resource and then associate each Restaurant with one. Next you’ll set it up so that Restaurants can have multiple categories. Users will be able to browse Restaurants by Category or Categories.

### Part 1: Create Categories

*   Understand the has_and_belongs_to_many relationship
*   Understand how database seeding works
*   Create the Category resource
*   Seed Categories’ data
*   Associate Categories with Restaurants
*   Update the Restaurant form to let Owners select a single Category

### Part 2: Multi-Category Restaurants

*   Understand how form selects work
*   Update the Restaurant forms to enable selecting multiple Categories
*   Update the Restaurant Show to display the Restaurant Categories

### Part 3: Category Filter

*   Update the Restaurant Index to display Category links w/ Restaurant counts
*   Allow users to filter based on a Category

### Part 1: Create Categories
You’ve dealt with relationships in past labs, in this lab you’ll be dealing with a new kind; the Has and Belongs to Many relationship. You’ll be creating a basic Category resource and will allow Restaurants to have multiple categories. To keep things simple for this part, we’ll allow an Owner to only choose a single category for the time being.

### Create  

1.  Create a Category resource.
	a. Categories should have a names.
2.  Create a has_and_belongs_to_many relationship with Restaurant
3.  Create a db/seeds.rb file and have it clear and add 10 different categories
4.  Update the Restaurant form to allow Owners to select a single Category per Restaurant
5.  Update the Restaurant Show to display the Restaurant’s Category

### Part 2: Multi-Category Restaurants
This is where you’ll dig into allowing Owners to select multiple Restaurants.

### Part 3: Category Filter
Now that you’ve enabled Restaurants with multiple categories, you’ll be putting that information to good use. You’ll be creating pages that will display which Restaurants fall into which Categories and you’ll be updating your existing views to show faceting, the number of items in each Category.




Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
