class Post < ApplicationRecord
  belongs_to :parent, class_name: 'Post', optional: true
  has_many :children, class_name: 'Post', foreign_key: 'parent_id'
end
