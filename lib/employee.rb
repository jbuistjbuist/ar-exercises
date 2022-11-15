class Employee < ActiveRecord::Base

  belongs_to :store

  before_save :set_password

  def set_password
    password = generatePassword(8)
    self.password = password 
  end

  def generatePassword(length)
    password = ''
    length.times {
      password << (65 + rand(26)).chr
    }
    password
  end



  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

end
