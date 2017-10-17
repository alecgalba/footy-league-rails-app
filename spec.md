# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
  <br>###Started up the app using 'rails new' command
- [X] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
  <br>###A User has many Teams
- [X] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
  <br>###A Team belongs to a User
- [X] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
  <br>###Teams have many leagues through fixtures and leagues have many teams through fixtures
- [X] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
  <br>###User can submit the opponent, the date, and the time for the fixture associated to a team and league
- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  <br>###All Models must have the appropriate attributes upon creation.
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  <br>###Included a class level scope for finding the date and time of a fixture
- [X] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
  <br>###User can create new players associated to teams using a nested form
- [X] Include signup (how e.g. Devise)
  <br>###Set up User with Devise
- [X] Include login (how e.g. Devise)
  <br>###Set up User with Devise
- [X] Include logout (how e.g. Devise)
  <br>###Set up User with Devise
- [X] Include third party signup/login (how e.g. Devise/OmniAuth)
  <br>###Set up OmniAuth with facebook and used devise
- [X] Include nested resource show or index (URL e.g. users/2/recipes
    <br>###Players are nested resource of teams
- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
  <br>###Players are nested resource of teams
- [X] Include form display of validation errors (form URL e.g. /recipes/new)
  <br>###Errors are displayed above the forms upon being activated

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
