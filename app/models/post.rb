class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :catagary_id

  has_many :comments
  belongs_to :catagary

end
