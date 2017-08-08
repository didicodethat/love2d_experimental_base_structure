# Love 2d Base Game

This is my experimental setup for making games with love2d.

## Setup

You will need love2d installed to try out this project.
To install the dependencies you will need to use bower.

### Installing dependencies

```sh
$ bower install
```

## Why Bower?

With Bower i have a more flexible setup on my dependencies, 
i can add not prepared github projects and also straight `.lua` files.

## What is this architecture?

I am planning on doing a some kind of ECS, but in a more database
like oriented models.

Not really using entities but using the data like a relational database.

I call it "**MERS**"".

 * **M**odels, relational database like structures that represnts the
 state of the game
 * **E**vents, works like a routing system, and they are like any events
 in any other game structure.
 * **R**enderes, access models in a read-only fashion, should not mutate
 the game state.
 * **S**ystems, they are responsible to edit the game state, listening 
 to events.


## Does it work?

I have no idea, that's why i am testing it, it makes sense on my mind but
i need to really try it out to be sure that it works.


## Isn't making your own "testing framework" a bad idea?

Yes it is, but making my own test structure i can test the code using the
love2d functions and libraries.

## How to run the code?

```sh
$ love .
```

# How to run the tests?

Change `RUN_TESTS` to true in `configurations.lua` and then run the "game"
as you would normally.