class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :likes, dependent: :destroy
   has_many :likes, dependent: :destroy
   has_many :questions, dependent: :destroy

   validates :nickname, presence: true, length: { maximum: 6 }
   validates :email, presence: true
   validates :password, presence: true
end
