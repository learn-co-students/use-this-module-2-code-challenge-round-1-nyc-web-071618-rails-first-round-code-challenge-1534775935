build application that will be a superheroine character creator!

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations

## Setup

Before you begin, fork and clone this repo, run `bundle install` and `rake db:migrate` to get started.

## The Domain

make a website that will allow the fans to create [heroines, women superheroes](http://www.dictionary.com/browse/heroine)

keep track of all of the new heroines and powers created by the fans.

have model for heroines and model for powers
. Once the database is seeded, visiting `/heroines` displays all heroines
visiting `/powers` displays all powers

need a way to associate heroines with powers.

have several different powers & each power can be bestowed upon **more than one heroine**.
Each heroine can only have **one power**.

## Instructions / Deliverables

![Showcasing the basic heroines and powers routes](heroines_and_powers.gif)

1. Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run `rake db:seed` without errors, and confirm in console that the heroines and powers have been created with the proper relations.

2. On the heroines index page, a heroine's name should link to the heroine's show page.

3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.

4. The power show page should have its name and description.
->
5. As a visitor to the website, I should be able to create a new heroine with her name and super name.

6. The form should also allow each heroine to be created with **only one of the existing powers**.

  ![A form for adding a new heroine](new_heroine_form.gif)

7. Make sure no two heroines have the same super name.

-----------------------------------------------------------------------------------------
# BONUS TO BE COMPLETED IF EVERYTHING ELSE IS DONE

8. Add a filter to the index view of the heroines. This will allow the visitor to search for an existing power and display all the heroines with that power on the same view page.

![Searching on the heroines route and finding heroines by a power](search_by_power.gif)
-----------------------------------------------------------------------------------------

### Hints / Tips
+ Draw your domain model and associations before you begin. You may have to alter the current schema to get your code working.
+ A child model cannot be persisted without being associated with its parent model.
+ More than one heroine can have the same power.
+ We want to be RESTful. What URL should show info about a particular heroine? What URL should show a form to create a heroine? What controller actions are associated?
+ If you're having a hard time implementing the filter, take a look at this http://guides.rubyonrails.org/form_helpers.html#a-generic-search-form. We are asking an input field to search for powers.
