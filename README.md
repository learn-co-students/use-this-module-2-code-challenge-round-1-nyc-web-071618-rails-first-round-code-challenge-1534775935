# Rails Code Challenge

It's time to put our Rails know-how to the test. Today, we are asked to build an application that will be a superheroine character creator!

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

You've just been hired by 'Marvel Comics' - congratulations! The production staff wants you to make a website that will allow the fans to create [heroines, women superheroes](http://www.dictionary.com/browse/heroine). To do this, we need a way to keep track of all of the new heroines and powers that have been created by the fans.

Luckily, another developer has already started the job. We have a model for heroines and a model for powers. Once the database is seeded, visiting `/heroines` displays all of the heroines, and visiting `/powers` displays all of the powers. We just don't have a way to associate heroines with powers.

We have several different powers and each can be bestowed upon **more than one heroine**. Each heroine can only have **one power**.

#heroine belongs to power
# power has many heroines
#


## Instructions / Deliverables

Read through the instructions to get a sense of the scope of this code challenge, and then tackle them one by one.

![Showcasing the basic heroines and powers routes](heroines_and_powers.gif)

1. Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run `rake db:seed` without errors, and confirm in console that the heroines and powers have been created with the proper relations.

#made a new migration, migrated, checked my schema, seeded database, i can call power.all and heroine.all and see that im getting everything correct. I can go to /powers and /heroines and see everything! yay!
#done

2. On the heroines index page, a heroine's name should link to the heroine's show page.

#create link to on index page
#make show.html.erb
#make show action on heroin controller
#DONE AND TESTED :)

3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.  
#make atheroine.name
#make atheroine.supername
#make atheroine.power
#JUST NEED POWER

<p>Special Power: <%= link_to @heroine.power.name, power_path(@power) %></p>

4. The power show page should have its name and description.
#done

5. As a visitor to the website, I should be able to create a new heroine with her name and super name.

6. The form should also allow each heroine to be created with **only one of the existing powers**.

  ![A form for adding a new heroine](new_heroine_form.gif)

7. Make sure no two heroines have the same super name.

# BONUS TO BE COMPLETED IF EVERYTHING ELSE IS DONE

8. Add a filter to the index view of the heroines. This will allow the visitor to search for an existing power and display all the heroines with that power on the same view page.

![Searching on the heroines route and finding heroines by a power](search_by_power.gif)

NEED TO DO
-ADD POWER TO HEROIN SHOW PAGE
-ADD NEW FORM WITH COLLECTION SELECT WITH ERRORS

### Hints / Tips
+ Draw your domain model and associations before you begin. You may have to alter the current schema to get your code working.
+ A child model cannot be persisted without being associated with its parent model.
+ More than one heroine can have the same power.
+ More than one heroine can have the same power.
+ More than one heroine can have the same power.
+ We want to be RESTful. What URL should show info about a particular heroine? What URL should show a form to create a heroine? What controller actions are associated?
+ If you're having a hard time implementing the filter, take a look at this http://guides.rubyonrails.org/form_helpers.html#a-generic-search-form. We are asking an input field to search for powers.
