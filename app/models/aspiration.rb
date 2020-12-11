class Aspiration < ApplicationRecord
  belongs_to :user
  has_many :record
end