class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :name
    validates :status_id
    validates :group_id
    validates :password_confirmation
  end

  has_many :room_users
  has_many :rooms, through: :room_users

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :group
  belongs_to :status
end
