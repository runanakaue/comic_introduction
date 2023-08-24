class Cartoonist < ApplicationRecord
  has_many :comics
  has_many :users
end
