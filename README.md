# Peer Evaluation Tool
Techbenders: Omer Alrefaai, Xinyi Chen, Bryce Polito, Ryan Shaffer

CSE 3901 (9417) AU20    

## About
The Peer Evaluation Tool is a web application that streamlines the collection, collation, and analysis of peer evaluations, which are
vital for feedback in classes with team-based components, such as CSE 3901.

In this application, users are defined as either students or instructors (administrators). Features for each type of user are listed below,
along with the documentation about setting up the web application locally, testing, and future extensions.

The application uses a database in order to store information and create relationships among entities. The complete, detailed structure 
of the database can be found in the slideshow, which can found in this repository.

As for the design process, from initialization to deployment, the first step was to create the desired database as well as figure out 
attributes and relationships. From there, Ruby on Rails was used for streamlining development. After testing, the application was deployed
out onto the web using Heroku.

## Setup
Ruby: v6.0.3.2   
Rails: v6.0.3.4

First, in the project directory, run the following commands to update and install all of the required gems:

```bash
bundle update
bundle install
```

In the project directory, run the following command in order to create a local server:

```bash
rails server
```

To view the webpage, navigate to the url given (e.g. ) in your browser (preferably Firefox).

## Features
Students
  - Able to view all groups and assignments (projects) for their class. 
  - Ability to create peer evaluations for all group members.
  - Evaluations include ratings as well as comments for each individual.
    
Administrators
  - Can populate class with students (names and emails).
  - Able to create groups (teams).
  - View evaluations (ratings, comments, etc.) assigned within groups.
  - Opportunity to detect potential problems within groups given evaluations. 
  
## Testing

A testing directory is included within the repository. 

## Extensions
As of now, the application is fairly basic in terms of functionality. There is support for multiple group structures, meaning that
users can belong to different teams (such as a project group in addition to a technology task group).

We plan to add an authentication feature using the ruby gem Devise, which will prevent any forging of evaluations, as well as 
define a boundary between the two types of users. It's likely that we will improve the styling/presentation of the application as well.
Lastly, we may add additional features that we like from other groups' versions.


