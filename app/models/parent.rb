class Parent < ActiveRecord::Base
  include CachedModel
  has_many :children
end
