This is a Demo for showcasing how to attach pdf to a model and upload it to cloudinary

1. Install active storage and migrate
```shell
rails active_storage:install
rails db:migrate
```
2. Add the relationship to your model
```ruby
class Article < ApplicationRecord
	# You can call this whatever you want
	# has_one_attached :banana
	has_one_attached :pdf
end
```
3. Add the file to the form view
```ruby
<%= simple_form_for @article do |f| %>
  <%= f.input :title %>
  <%= f.input :pdf, as: :file %>
  <%= f.button :submit %>
<% end %>
```

4. [Download or Preview the file](https://stackoverflow.com/a/51563268/10804246)

5. Config cloudinary
    1. Add it to the gemfile
    2. Set it up in config/storage.yml
    3. Configure it in config/environments/development.rb (and in production as well)
    4. Set your cloudinary api key in the `.env` like this: 
    ```
      CLOUDINARY_URL=cloudinary://64*************em
    ```
