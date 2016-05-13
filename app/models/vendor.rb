class Vendor < ActiveRecord::Base
  has_secure_password

  validates :company, presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
            }
  def to_s
    "#{company}"
  end
end
