class Package < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum:50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                     format: { with: VALID_EMAIL_REGEX }
                     # uniqueness: { case_sensitive: false }
    validates :phone, presence: true, length: { maximum: 10 }
    validates :address, presence: true, length: { maximum: 100 }
    validates :pickup_time, presence: true
    validates :package_type, presence: true
    validates :weight, presence: true
    
end
