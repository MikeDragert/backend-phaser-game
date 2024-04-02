# Labber

Labber is a 2d platformer game, where a player can collect functions, numbers, and operators that alter those functions. To give their character different abilities which enable the mto move around the map in different ways. 

It was created by Ryan Gardner, Jonas Kunz, and Mike Dragert as our final project at lighthouse labs. We utilized React, Node Js, and Phaser Primarily as our frontend, and Ruby on Rails, and Postgresql for our backend.
We decided to split the project into two repositories, this is where the backend is and [Our Frontend Repo](https://github.com/Jonas-Kunz/Phaser-react-template) which we used for our user experience.

The frontend of the game was built on the Phaser React template available on the Phaser github, though we heavily modifed it and added a lot of new stuff to it.

We had a lot of fun learning Phaser, a completley new framework for us and experimenting and solving problems to make our little game.

In the future we would like to work some more on the game, and polish some existing features, and add new ones like more puzzles, different functions etc..

## Our Githubs

[Jonas Kunz](https://github.com/Jonas-Kunz)
[Ryan Garner](https://github.com/GardRyan)
[Mike Dragert](https://github.com/MikeDragert)

## Screenshots

Our HomePage:

![Home Page](https://github.com/Jonas-Kunz/Phaser-react-template/blob/main/docs/HomePage.png)

Our Tutorial Level:

![Tutorial Level](https://github.com/Jonas-Kunz/Phaser-react-template/blob/main/docs/TutorialLevel.png)

The Workbench where you change your functions:

![WorkBench](https://github.com/Jonas-Kunz/Phaser-react-template/blob/main/docs/Workbench22.png)

## Requirements

- Ruby on Rails
- PostgreSQL
- Puma
- Bcrypt 

## How to install

- Clone this Repo
- bundle install
- setup .env file with database information
- bin/rails db:reset
- bin/rails db:migrate
- bin/rails db:seed
- Run with ```rails s```
- Go [here](https://github.com/Jonas-Kunz/Phaser-react-template) for our frontend repository.

## Available Commands

| Command | Description |
|---------|-------------|
| `bundle install` | Install project dependencies |
| `rails s` | Launch a development web server |
