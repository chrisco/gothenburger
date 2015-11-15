# My To-Do List

## Secret Token

I think I can remove these lines from these files and Heroku will still work.
Try it and revert if it breaks anything.

In secrets.yml
Remove this line:
secret_token: <%= ENV["SECRET_TOKEN"] %>

In .env
Remove the line for:
SECRET_TOKEN

## 2 Gemfile, spec_helper.rb, and rails_helper.rb

Tighten and tidy
