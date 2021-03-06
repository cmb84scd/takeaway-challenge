[![Build Status](https://travis-ci.org/cmb84scd/takeaway-challenge.svg?branch=master)](https://travis-ci.org/cmb84scd/takeaway-challenge)

## This is my takeaway challenge!
This is Makers Academy's week 2 weekend challenge.

### How to use
To use clone this repo and then do the following:
```
run 'bundle'
open 'irb'
require './lib/takeaway.rb'
require './lib/ordering.rb'
order = Ordering.new
chippy = Takeaway.new(order)
```

### User stories and requirements
These are <a href="#userstories">here</a>

### How it went
I completed the first 3 user stories and I'm very happy with what I've done. I feel my tests are a lot better than last week, along with the way I went about doing it. I started by having everything in one class but knew I would need to split it down. After doing the first 3 user stories I then split the original class into 2 but still in the same file until I knew all my tests were passing again. Once that happened I then moved the Ordering class, along with its tests into their own respective files and yes, everything still worked! Having had issues with getting classes to work together last weekend, I found this process works better as it meant I could ensure everything worked before splitting the class.

It will work in IRB but just note that to 'order' you will need to type `orders.order` after your class name as otherwise it won't work.

4th user story not done as I need more time to work out Twilio.

##### Edit: 10/7/2020
I have amended the tests slightly so that they now use doubles. I also removed `require 'ordering'` from the top of the takeaway file as it is not needed due to dependency injection. Just remember when in IRB, to require both files and inject your ordering instance into your takeaway instance! I feel these minor changes have improved it and in due course I hope to work out Twilio.

Takeaway Challenge
==================
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```
<a name="userstories"></a>
Task
-----
* Write a Takeaway program with the following user stories:

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices
```
```
As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes
```
```
As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order
```
```
As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```

* Hints on functionality to implement:
  * Ensure you have a list of dishes with prices
  * Place the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
  * The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
  * Use the twilio-ruby gem to access the API
  * Use the Gemfile to manage your gems
  * Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
  * However, if your Takeaway is loaded into IRB and the order is placed, the text should actually be sent
  * Note that you can only send texts in the same country as you have your account. I.e. if you have a UK account you can only send to UK numbers.

* Advanced! (have a go if you're feeling adventurous):
  * Implement the ability to place orders via text message.

* A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.

> :warning: **WARNING:** think twice before you push your **mobile number** or **Twilio API Key** to a public space like GitHub :eyes:
>
> :key: Now is a great time to think about security and how you can keep your private information secret. You might want to explore environment variables.

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance will make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Notes on Test Coverage
------------------

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you run your tests.
