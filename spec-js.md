# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements
- [X] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
  <br>###Users click the next fixture button which uses jquery and AJAX to render the info to the divs without a page refresh
- [X] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
  <br>###Users click the more info button which uses jquery and AJAX to render the info to the divs without a page refresh
- [X] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
  <br>###Teams have many fixtures in the AMS serializer
  <br>###Users have many comments in the AMS serializer
- [X] Use your Rails API and a form to create a resource and render the response without a page refresh.
  <br>###Users can add comments which render to the page without a refresh
- [X] Translate JSON responses into js model objects.
  <br>###When users submit a comment, the comment is turned into a JS object and appended to the DOM
- [X] At least one of the js model objects must have at least one method added by your code to the prototype.
  <br>###Comment objects have a renderDisplay() method which helps with formatting the rendered comment

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message
