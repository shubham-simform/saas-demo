class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable

  validates :first_name, :last_name, presence: true

  has_many :memberships
  has_many :companies, through: :memberships
end
