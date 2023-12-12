# Family Book

Welcome to my family-centric platform designed for documenting genealogy and fostering connections beyond mainstream social media. The homepage greets you with a mission to weave family narratives. Click on the family tree link to explore a mobile-friendly overview, from grandparents to aunts and uncles. Dive into individual family views, complete with personal profiles, shared recipes, and tagged family photos. The platform also features collaborative birthday celebrations and an efficient search function for easy family member discovery.

## Table of Contents

- [Main Features](#main-features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)

## Main Features

### Family Tree

The heart of the app is a mobile friendly view of your family tree. The initial view is the starting node for your family. In my case, I started with my grandparents. This view shows my grandparents and all their children. When you click on any of the children, this opens the second family tree view. If my father is clicked, it will show my immediate family. From there you can click on individuals and be taken to their profile pages.

![Family Tree Screenshot](https://res.cloudinary.com/dr27gi28j/image/upload/c_scale,h_500/jqe3nbanigamz8dm8lgt.jpg))

### Profile pages

Every person in the family tree has a profile page associated with them. When a user signs up for the site, they can link their user account with their profile on the site. Here they can add individual information that they wish to share with their family.

- email
- address
- phone number

Also included in a persons profile page is a link to any recipes that they have contributed.

Finally, every profile page has a wall of photos where they have been tagged. This will update automatically as new images are uploaded and tagged.

![Profile page screenshot](https://res.cloudinary.com/dr27gi28j/image/upload/c_scale,h_500/ankjqohb7tx7kbop0ifn.jpg)

### Photos

The photos tab shows all the photos that have been uploaded to the site and a button to upload a new photo. When you click on any photo you are taken to that photos page and can see a lot of different information. It has a similar feeling to Instagram. At the top of the photo you can see the avatar and name of the person who uploaded the picture. Below the picture you can see a small avatar representation of people that have been tagged in a picture. Directly below that you can see a caption for the photo and any comments that have been left by other users. Finally, below that you can see the date the photo was uploaded and a input box for adding a new comment.

![Photos page screenshot](https://res.cloudinary.com/dr27gi28j/image/upload/c_scale,h_500/lbrj7bvuybs9khyyzxx7.jpg)

### Birthdays

The birthday tab allows users to see any people that are celebrating a birthday in the current month. These people are listed in order of their birthday and if they have shared a phone number, a button will be available that will launch your messaging app with their number and a brief birthday message ready to go.

![screenshot](https://res.cloudinary.com/dr27gi28j/image/upload/c_scale,h_500/efxqfogbqk5pc3c0qjda.jpg)

### Recipes

The recipes tab allows users to upload and share a family recipe. Similar to photos, each recipe includes the info of the user that uploaded it and a picture of the item. Below that you can see a description of the item as well as an ingredient list and directions for the recipe.

![screenshot](https://res.cloudinary.com/dr27gi28j/image/upload/c_scale,h_500/dqm8qbv1cfnt42zhrvrk.jpg)

### Search

This tab lists all the people in our family in alphabetical order (first name). At the top is a search field where you can add the first few letters of a persons name to narrow down the search. Clicking on any results takes you to their profile page.

![screenshot](https://res.cloudinary.com/dr27gi28j/image/upload/c_scale,h_500/lzwj5y2y4tgamduscivh.jpg)

## Technologies Used

- Rails 7
- Tailwind
- DaisyUI

## Installation

To install and run, please use the following commands:

```sh
bundle install
yarn install
rails db:create
rails db:migrate
bin/dev
```

### Entity Relationship Diagram
![diagram](https://res.cloudinary.com/dr27gi28j/image/upload/v1702334031/wfhg2b2850bwrjp3npgs.png)
