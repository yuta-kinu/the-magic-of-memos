class User < ApplicationRecord
  has_secure_password
  
  validates :name, {presence: true}
  # validates :email, {presence: true, uniqueness: true}
  validates :email, {format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true, uniqueness: true}
  validates :repassword, {presence: true}
  
  def posts
    return Post.where(user_id: self.id).order(created_at: :desc)
  end
  
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  
end
