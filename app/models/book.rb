class Book < ApplicationRecord
  validates :content, {presence: true}
end
