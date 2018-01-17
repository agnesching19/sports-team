# README


## Operate this app under development

1. run 'rails server' in the terminal
2. run 'localhost:3000' in the browser

.
.
.

## Rules Explanation

1. Making teams

We want to create a piece of software that allows people to manage their amateur sports teams.

We want people to be able to create a list of their team members and how they can be contacted.

You can solve this challenge by implementing a UI, creating a command-line or just demonstrating the solution through a test suite.

2. The basic model

A Team has a Name and Team Members.

Team Members have: a Name, a Position on the Team and a Telephone Number

3. Creating a team

We want the user to be able to create a team from scratch or alternatively be able to use a template, such Football Team or Netball Team that creates the Positions in the team without have the team member's details.

The user can then add people's details to the team.

Once the team has been created we want people to create a list of all the Team Members organised by their name, alphabetically A to Z (Unicode ascending order).

4. Adding more information

We want to now be able to add an optional email to the Team Member and also a flag to indicate whether they are a Reserve player or not.

In the team list we want to show which members are reserves by adding the string "(R)" after their name.

Given a telephone number for a Team Member we also want to be able to list what Teams they are in. This can be a simple list of the Team names or it can also include that person's position in the team. You can make the choice.
