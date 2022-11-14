class Store < ActiveRecord::Base

  has_many :employees

  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0,  only_integer: true}
  validates :name, length: {minimum: 3}
  validate :need_to_sell_something

  def need_to_sell_something
    if !womens_apparel && !mens_apparel
      errors.add("Validation error:", "must sell either women's or men's apparel")
    end
  end

end
