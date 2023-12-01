# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  username               :string
#  avatar_url             :string
#  person_id              :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :signup_email

  belongs_to :person, optional: true

  has_many :photos, class_name: "Photo", foreign_key: "owner_id"


  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  validates :password, confirmation: true, if: -> { password.present? }

  mount_uploader :avatar_url, AvatarUrlUploader
  
  def signup_email
  ApplicationMailer.with(user: self).signup_email.deliver_now 
end 
end
