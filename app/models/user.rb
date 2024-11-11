class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 3, maximum: 10 }
  validates :email, uniqueness: true

  before_validation :print_checking_validation
  
  def print_checking_validation
    puts "============== Checking Validation ================"
  end
end
