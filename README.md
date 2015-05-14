#Point of Sale System

---

## Synopsis

This Point of Sale system was built by [Courtney Phillips](https://github.com/courtneymaepdx) and [Leroi Dejesa](https://github.com/leroidejesa) as part of the Spring 2015 Ruby course curriculum at [Epicodus](https://www.epicodus.com/). It utilizes ActiveRecord to create and maintain a point-of-sale system for a fictional antique shop. It tracks products, and sales, produces receipts, and generates reports depicting sales between given dates.

## Motivation

This project was created as an excercise in integrating [ActiveRecord](http://guides.rubyonrails.org/active_record_basics.html) one-to-many database relationships in Ruby/Sinatra projects.

## Installation & Setup

### Gems

The Point of Sale program uses the following gems:

  - Capybara
  - Sinatra
  - RSpec
  - Pry
  - ActiveRecord
  - PG
  - Rake

To install, run `$ gem install bundle` in the terminal.

### Databases

Additionally, Point of Sale utilizes databases via ActiveRecord. Should you clone this repository, simply do the following to establish and prepare similar databases for your own use:

  1. Launch the Postgres server by running `$ postgres` in the terminal.
  3. Navigate to the project folder and run `$ rake db:create`.
  4. Run `$ rake db:migrate` to migrate the changes detailed in db into the database.

## Tests

Before running any tests requiring databases, run `$ rake db:test:prepare` in the terminal in order to mirror changes from the development database into the test database.

Both method and integration tests for Point of Sale utilize RSpec. Simply run `$ gem install rspec`, if it's not already installed, and then the command `rspec`, while located in the project's file.

## Contribute

  - Issue Tracker: https://github.com/courtneymaepdx/point-of-sale-system-activerecord/issues
  - Source Code: https://github.com/courtneymaepdx/point-of-sale-system-activerecord
  - Pull Requests: https://github.com/courtneymaepdx/point-of-sale-system-activerecord/pulls

## Contact

Questions, concerns, fan-mail, or other grievances can be directed to Courtney at <courtney.mae.phillips@gmail.com>.

## License

[The MIT License (MIT)](http://opensource.org/licenses/MIT)

Copyright (c) 2015 Courtney Phillips

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---
