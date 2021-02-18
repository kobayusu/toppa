class User < ApplicationRecord
  # has_many :aspiration
  # has_many :record
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :aspirations
  has_many :records
end
