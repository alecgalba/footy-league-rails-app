# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
  <br>###Started up the app using 'rails new' command
- [X] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
  #A User has many Teams
- [X] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
  # A Team belongs to a User
- [ ] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  # All Models must have the appropriate attributes upon creation.
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [ ] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [X] Include signup (how e.g. Devise)
  # Set up User with Devise
- [X] Include login (how e.g. Devise)
  # Set up User with Devise
- [X] Include logout (how e.g. Devise)
  # Set up User with Devise
- [X] Include third party signup/login (how e.g. Devise/OmniAuth)
  #Set up OmniAuth with facebook and used devise
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [X] Include form display of validation errors (form URL e.g. /recipes/new)
  # Erros are displayed above the forms upon being activated

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
