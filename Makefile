.PHONY: all
default: all;

install:
	gem install bundler

bundle:
	bundle check --path=vendor/bundle || bundle install --path=vendor/bundle --retry=3

kitchen:
	bundle exec kitchen test

style:
	cookstyle -D

all: bundle kitchen
