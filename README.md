# FINAL

I come from a big family. 7 siblings and we all have very different tastes when it comes to food. But we also like to hangout together for the holidays. All of us. Brothers, Sisters, Wifes, Husbands, Father, Mother, grandsons and granddaughters. Even boyfriends and girlfriends come to the mix.

As you may imagine, building a food Menu for the hole week or weekend, can prove very difficult. That is a job that has historically fall upon my mother, and she has complain forever. Apparently, in a picky family, is no easy to leave everybody family.

## The problem

Different members of the family like or dislike different types of food and not all of them come to the same weekend holidays. Having a Menu that everyone likes is becoming an almost impossible task.

## The Project

I want to build a website, where:
- A set of Dished and Desserts can be entered into a Database
- Each member of the family can register himself and value each meal, whether they like it or not.
- Each member of the family can record which days will they be on the family vacation home.
- Build up a Menu that will tell you if someone who's attending doesn't like something that will be served.
- Suggest a meal that everyone will like [Not sure yet]

## The Models

- User: the users table that will register each member of the family

- Dish: the main dish that will be served for either a lunch or a dinner. We'll keep it simple, so just the name. Everyone will know what it is.

- Dessert: equivalent to the dish.

- Score_dish: a table that will have a user and a dish, and the score value that family member assigns to that dish.

- Score_dessert: equivalent to the score_dish but for desserts.

- Menu_lunch: the actual menu, with a dish, a dessert and a date, for a lunch.

- Menu_dinner: the actual menu, with a dish, a dessert and a date, for a dinner.
