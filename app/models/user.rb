class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :items

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, presence: true, with: PASSWORD_REGEX, message: 'Include both letters and numbers'

  validates :nickname,               presence: true
  # validates :password,               presence: true, format: { with: /\A[a-z0-9]+\z/ }
  # validates :password_confirmation,  presence: true, length: { minimum: 6 }
  validates :family_name,            presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :family_name_kana,       presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name,             presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :first_name_kana,        presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birth_day, presence: true
end
