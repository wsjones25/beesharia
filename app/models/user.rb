class User < ApplicationRecord
  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :companies
  has_many :topups
  has_many :investments

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end



end
