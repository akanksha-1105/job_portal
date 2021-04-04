class User < ApplicationRecord
  has_many :applicants
  has_many :jobposts


  def applicants?(jobpost)
    jobpost.applicants.where(user_id: id).any?
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         :lockable
end
