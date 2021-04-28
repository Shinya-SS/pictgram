class User < ApplicationRecord
  #name 空白NG １５文字以内
  validates :name, presence: true, length: {maximum: 15}
  #「~ @ ~ . ~」の形式のみ許可
  valid_email_regex = /\w+@\w+.\w+/
  validates :email, presence: true, format: {with: valid_email_regex}
  #8~32文字　アルファベット・数字の混合のみ許可
  valid_password_regex = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  validates :password, length: {in: 8..32}, format: {with: valid_password_regex} 
  #8~32文字　アルファベット・数字の混合のみ許可
  validates :password_confirmation, length: {in: 8..32}, format: {with: valid_password_regex} 
  
  has_secure_password
  
  has_many :topics
end
