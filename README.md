# FINAL

I come from a big family. 7 siblings and we all have very different tastes when it comes to food. But we also like to hangout together for the holidays. All of us. Brothers, Sisters, Wifes, Husbands, Father, Mother, grandsons and granddaughters. Even boyfriends and girlfriends come to the mix.

As you may imagine, building a food Menu for the hole week or weekend, can prove very difficult. That is a job that has historically fall upon my mother, and she has complain forever. Apparently, in a picky family, is no easy to leave everybody family.

## The problem

Different members of the family like or dislike different types of food and not all of them come to the same weekend holidays. Having a Menu that everyone likes is becoming an almost impossible task.

## The Project

- Users are family members
- There are a set of food meals (with CRUD).
- Each user must value or assign a score to each meal and a boolean value for not liking it.
- Each user must register the dates when they will be attending.
- By building up the Menu, you select a food for a given date. And it will automatically tell you, from the people registered for attending that day, a list of those who do not like that food and an average value score for the meal. **It does not take into account those who will not be attending.**

## The Models

- User: the users table that will register each member of the family

- Food: food that will be served for either a lunch or a dinner. We'll keep it simple, so just the name, picture and comments.

- Attendance: each user registers when are they going to be attending. The is no reason to not serve some food because someone doesn't like it, when that someone won't be attending lunch or dinner.

- Score: each user assigns a Score from 1 to 10, of how much the like or dislike that food. They also report a boolean values if the dislike that food.

- Menu: the actual menu; For a date, we can select a food to be served, either for lunch or dinner and add some comments. The App will show a list of people that don't like that food (boolean dont_like = True) and an average score of the meal. But this 2 things will **ONLY be computed among the users who have registered attendance for that day**. So the same food can have different scores and dislikes lists for different dates. This is the crucial part of the App.


_Any questions? slarrain@uchicago.edu_
