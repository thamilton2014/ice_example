# Example Framework

## About

This is just an example framework. Selenium stand alone server comes with the setup as well as a docker image. The testing environments are setup using the cucumber.yml file and the associated yaml files located in the config/environments folder.

You can use the docker image supplied by this Dockerfile to execute all the tests against Chrome. Directions are listed below. Also keep in mind that results from running the tests with the docker image will get generated in their respective results folders, so keep an eye out for them!

## Installation

pending

## Usage

Using this locally on Mac

```ruby
# Run all tests
cucumber -p production features/

# Run specific feature
cucumber -p production features/<folder>
```

Using this on Selenium Chrome Docker insance

```bash
# Build the image first
sh build_docker.sh

# Run the test suite
sh run_test.sh
```
