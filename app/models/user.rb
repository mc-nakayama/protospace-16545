class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  valiadates :email, presence: true
  valiadates :encrypted_password, presence: true
  valiadates :name, presence: true
  valiadates :profile, presence: true
  valiadates :occupation, presence: true
  valiadates :position, presence: true
end
