---
tags: forms, active record, databases, kids, ruby, advanced, challenges
language: ruby
level: 3
type: challenges
---

## Flatiron Swag Shop For REAL

People love our Flatiron swag so much they are [singing about it](https://docs.google.com/a/flatironschool.com/file/d/0B_qWLnYbXOdPS2tMbHVpOG1GUVE/edit). We desperately need your help building an app to sell our sweet Flatiron merch. Follow the steps below to get started.

**Step 1** - Time for the MVC! First things first - the M. We'll start off with one model/table for Items with the following attributes/columns:

```ruby
:name
:image_url
:price
:count
```

Set up your Item class in `item.rb` (don't forget to inherit from from ActiveRecord::Base) and create a migration for the items table `rake db:create_migration NAME="create_items"`. Fill in your `up` and `down` methods in the migration file then run it with `rake db:migrate`.

**Step 2** - Let's add some items to our database! Boot up `tux` in your terminal and create some new items. Here are some images links that you can use:

+ [hat](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hat.jpg)
+ [hoodie](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hoodie.jpg)
+ [men's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_m.jpg)
+ [women's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_w.jpg)
+ [tote](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tote.jpg)

You can set your own price and count (how much of the item is in stock) but remember these items are in HIGH demand!

**Step 3** - We've got the M covered, now let's move onto the V. In your views directory create an `items.erb` file that will display all of the merch for our store - including each item's name, photo and price.

**Step 4** - Set up your `get '/items'` route to pull all of your items from the database and display them in your new `items.erb` template.

Take a look at that swag!

## Challenges
+ Set up a form that lists all the items and allows visitors to chose how many of each item they would like to order. Hint: There is a `type="number"` attribute for form inputs. Google it!
  * When the form is submitted the order total is tallied up and the user is displayed a page with all the items being ordered and the total cost.
  * Don't forget that the items' inventory (count) should also decrease when the form is submitted!

+ Add an inventory page that displays the count for each item.
  * Set up a form on your inventory page that lets you increase the inventory for any item. When the form is submitted, the items' inventory (count) should increase.

+ Set up a User model (with attributes for name and email) and a sign up page.

+ Set up a Purchase model that will track user's purchases.
  * This table will have two columns - user_id and item_id. Tables like this are called join tables because they connect (or join) objects from other models/tables.
  * You'll also need to set up new ActiveRecord relationships for each model. The Purchase model `belongs_to` users and items. The User and Item models both `has_many` purchases. This may seem a little strange but just roll with it.
  * If you set up your `has_many` and `belongs_to` relationships properly you'll be able to get a list of everything a user has purchased from the store with something like `@user.purchases`.

+ Welcome to the wonderful world of eCommerce!

