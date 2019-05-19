# ISBN Number Console App

## Description

This app converts ISBN numbers and checks their validity:
*  Users can check an ISBN-10 number's validity.
*  Users can convert any ISBN-10 numnber to its corresponding ISBN-13 number.
*  Users can check an ISBN-13 number's validity.

## Approach

I decided to use Ruby to develop this app.

I made seperate classes for both ISBN-10 and ISBN-13 objects that save serials to them.  

I made a method "valid?" for both classes to test the ISBN serial's validity.

I made a method "convert_to_isbn13" for the ISBN-10 class which converts the serial to ISBN-13.


## Tech Stack

Ruby v 2.5.1

**Linting:**

Rubocop


**Testing:**

RSpec


## Quickstart

```bash
$ git clone https://github.com/matharotheelf/ISBN-number
$ cd ISBN-number
$ bundle install

$ bundle exec rspec # Run the tests to ensure it works
$ irb
$ require "./lib/ISBNTen.rb"
$ require "./lib/ISBNThirteen.rb"
```
To run the tests, navigate to the ISBN-number directory (`$ cd ISBN-number`) and run `$ rspec`.

## How to Use

From irb, if you have required the correct files, as above, you can operate the code.

To create an ISBNTen object, input:

```isbnten = ISBNTen.new(serial)```

(Where 'isbnten' is an arbitrary name to save the object, and 'serial' is a string which should be the serial of your ISBN-10 object.)

To access the serial of your object, input:

```isbnten.number```

To find out whether your serial is valid, input:

```isbnten.valid?```

This returns true if the serial is valid and false otherwise.

To find out the corresponding ISBN-13 serial for your ISBN-10 serial, input:

```isbnten.convert_to_isbn13```

Similarly, to create an ISBNthirteen object, input:

```isbnthirteen = ISBNThirteen.new(serial)```

(Where 'isbnthirteen' is an arbitrary name to save the object, and 'serial' is a string which should be the serial of your ISBN-13 object.)

And again, to find out whether your serial is valid, input:

```isbnthirteen.valid?```

This returns true if the serial is valid and false otherwise.

## User Stories
```
1. As a user to store an ISBN-10 number, I can create an ISBN-10 number object.
2. As a user to test if my ISBN-10 number is valid, a 'valid?' method returns whether or not my number is valid.
3. As a user to calculate the corresponding ISBN-13 number for an ISBN-10 number, a 'convert_to_isbn13' method returns the corresponding ISBN-13 number
4. As a user to store an ISBN-13 number, I can create an ISBN-13 number object.
5. As a user to test if my ISBN-13 number is valid, a 'valid?' method returns whether or not my number is valid.
```

## Contributors

[Tom Lawrence](https://github.com/matharotheelf)  

## How to Contribute

If you want to improve this ISBN number console app and see your name added to the above list of contributors, simply branch this repo, add to the code, and make a pull request back to this repo explaining the contributions you made.
