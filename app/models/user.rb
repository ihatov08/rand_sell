class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :lands
  has_many :comments
  has_many :likes
  has_many :like_lands, through: :likes, source: :land
  def full_name
    full_name = first_name + given_name
    full_name
  end
end
