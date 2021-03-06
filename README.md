# CodebreakerWeb
<a href="https://codeclimate.com/github/bestwebua/homework-05-codebreaker-web/maintainability"><img src="https://api.codeclimate.com/v1/badges/8323f51857468b277816/maintainability" /></a> <a href="https://codeclimate.com/github/bestwebua/homework-05-codebreaker-web/test_coverage"><img src="https://api.codeclimate.com/v1/badges/8323f51857468b277816/test_coverage" /></a> <a href="https://codeclimate.com/github/bestwebua/homework-05-codebreaker-web"><img src="https://img.shields.io/badge/monkey--patches-0-brightgreen.svg"></a> [![Build Status](https://travis-ci.org/bestwebua/codebreaker-web.svg?branch=master)](https://travis-ci.org/bestwebua/codebreaker-web)

Rack version of codebreaker2018 [![Gem Version](https://badge.fury.io/rb/codebreaker2018.svg)](https://badge.fury.io/rb/codebreaker2018). Try to guess 4-digit number, that consists of numbers in a range between 1 to 6.

## Features

1. Ability to change current language from anywhere in the application. English and Russian localizations.
2. Self template methods.
3. No monkey-patching codebreaker2018 gem class/methods.
4. This app uses codebreaker2018 gem modules, no double implementation.
5. Players have unique tokens and ip-addresses.
6. Smart top-players sort.
7. Player motivation messages, js implementation.
8. Guessed numbers marker, js implementation.
9. Safe methods in Web class.
10. No DB usage. Application saves all data into YAML. Reloading scores before using.
11. Implement ActionInspector middleware, restricted access for necessary application parts.
12. Implement ErrorLogger, recording all hack attempts into log-file.
13. Responsive design.
14. RSpec tests, 100% coverage.

## Demo

https://codebreaker2018.herokuapp.com

![CodebreakerWeb screenshot](https://raw.githubusercontent.com/bestwebua/codebreaker-web/develop/public/images/screenshot.png)

## Technology summary

* Ruby 2.5.0
* Rack 2.0.5
* codebreaker2018 0.3.5
* Twitter Bootstrap 4.1.1
* HTML5/CSS/JS
* Environment: CentOS 6.8/Puma 3.11
* Testing: RSpec 3.7, RspecFileChef 0.1.2, rack-test 1.0, simplecov 0.16

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bestwebua/codebreaker-web. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The application is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
