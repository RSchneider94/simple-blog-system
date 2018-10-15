class Post < ApplicationRecord
  belongs_to :category
  # Number of posts to show in each page
  self.per_page = 4
end
