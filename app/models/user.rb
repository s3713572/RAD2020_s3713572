class User < ApplicationRecord
  # attr_accessor :name, :email
  # TODO it lead to nil
  # before_save {self.email=self.email.downcase! }
  has_many :microposts
  # <!--learn web development with rails page 319-321 -->
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive:false}
  has_secure_password
  validates :password, presence:true, length: {minimum:6}

  def User.digest(string)
    cost=ActiveModel::SecurePassword.min_cost  ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string,cost: cost)
  end
end
