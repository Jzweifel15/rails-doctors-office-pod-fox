# rails-doctors-office-pod-fox
 
# Models and REST

1. Decide on a domain for your pod project (this domain will then be off-limits for your portfolio project)
  * eg. Med appointments app, 
  * School class tracker
2. Decide what models you'll need and the attributes for your models
  * Patient (User) => Appointment => Doctor
  * Student (User) => Class => Professor
3. Create a new rails project
4. Create the first model which will have full CRUD (it's ok to use the model generator)
5. Run your migration
6. Test the model and DB table in console by adding some test resources
7. Create a controller for your resource
## Index
8. Draw a route for the path `/resources` that maps to the `index` action on your controller
9. Add the corresponding `index` action to your controller
10. Have the `index` action pull a list of all the resources and store it in an instance variable
11. Create an `index.html.erb` view in the proper directory and render it from your `Resource#index` action.
12. In your view, iterate over the list of resources and display them.
## Show
13. Draw a route that will map to a `show` action on your controller an use a dynamic variable
14. Add the corresponding 'show' action on your controller
15. Use the routes variable in params to look up the right resource object and assign it to an instance variable
16. Create a `show.html.erb` view in the proper directory and render it from your `Resource#show` action.
17. In the view, display details about the requested object
18. Add a link back to the index page
