class User < ApplicationRecord
  # attr_accessor :name, :email
  attr_accessor :remember_token
  before_save {self.email= email.downcase }
  has_many :microposts, dependent: :destroy
  has_many :comments, dependent: :destroy
  # <!--learn web development with rails page 319-321 -->
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive:false}
  has_secure_password
  validates :password, presence:true, length: {minimum:8, maximum: 20},allow_nil:true
  validates :name, presence: true
  validates :mobile, length: {minimum: 10, maximum: 13}
  mount_uploader :picture,::PictureUploader
  mount_uploader :verification,::PictureUploader

  def self.digest(string)
    cost=ActiveModel::SecurePassword.min_cost  ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string,cost: cost)
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token= User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest,nil)
  end

  def feed
    microposts
  end
end
