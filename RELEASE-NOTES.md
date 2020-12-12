## Major Changes
* Switched databse to PostgreSQL (local sqlite does not work because the sqlite3 gem is incompatible with Heroku)
* Hid links to admin pages for non-admin users
* Displayed username in nav bar if the user is signed in
* Changed "Update Roster" and "Edit Roster" to point to the roles/index page instead of hardcoded roles/1/edit
* Changed styling on Assignments, Users, and Evaluations pages
* Added footer

## Important Notes
PROFESSORS ARE NOT NECESSARILY ADMINS! Right now, admin users can only be created in the command line, presumably by the developers

To create an admin user, run `heroku run rails console`, then
`user=User.create!(:email=>'name@email.com',:name=>'name',:password=>'password',:role_id=>2,:admin=>true)`

There is currently one admin user, with username="admin@yahoo.com" and password="password"

## Accessing the site

You can find the site at: https://techbenders-peer-evaluation.herokuapp.com/