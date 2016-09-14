# Chat Emoji

# About / Approach
* This app was designed by Zach Mason, Jimmy Kim, Boet Waldbjorn, and Jeremy Wallace to assist users to find and live chat with like-minded patrons with similiar states of mind. The chat consists of four emotions: Happy, Sad, Angry, and Calm; users can share their emotions with each other via chat and emoticons. Users can also update their contact info and destroy their chat on log out. Our aim is to solve world loneliness.

# Technologies Used
* Ruby on Rails + Active Record
* Web Socket / Action Cable
* User Authentication
* HTML / CSS
* Postgres
* Coffee Script
* Wireframes
* Emoji Picker Gem
* Bcrypt

# Installation
* Fork and clone repository. Run rake db:create , then rake db:migrate , then bundle install for all gems. Run rails s to initiate app.

# User Story
* Imagine you are having the best or worst day of your life, and there is no one around to talk to. Enter: Chat Emoji to solve all your celebrations or woes. Chat Emoji is your friend for life and centers around the idea that no one should ever feel alone in life; you have a friend in me - Chat Emoji! :)

# Issues 
* When you sign out, messages are all destroyed. While this could be a good thing since it keeps the site minimal, it also erases any evidence of a negative chat experience occuring. 

# Wifeframe Prototype Mockups
* Front Page: http://i64.tinypic.com/2j27xhs.png
* Needs Page: http://i66.tinypic.com/2reqtyq.png
* Chat Page: http://i66.tinypic.com/t4z90k.png