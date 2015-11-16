# My To-Do List

## Secret Token

I tried to remove these lines from these,
but then my build broke so I reverted,
even if it is probably a coincidence
(must be a coincidence?)

In secrets.yml
Remove this line:
secret_token: <%= ENV["SECRET_TOKEN"] %>

In .env
Remove the line for:
SECRET_TOKEN

## 2 Gemfile, spec_helper.rb, and rails_helper.rb

Tighten and tidy
