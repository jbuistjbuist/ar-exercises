class Store < ActiveRecord::Base

  has_many :employees

  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0,  only_integer: true}
  validates :name, length: {minimum: 3}
  validate :need_to_sell_something

  before_destroy :permission_to_destroy?, prepend: true

  private

  def need_to_sell_something
    if !womens_apparel && !mens_apparel
      errors.add("Validation error:", "must sell either women's or men's apparel")
    end
  end

  def permission_to_destroy?
    if self.employees.length() > 0
      self.errors.add(:base, "Cannot destroy a store with employees")
      throw :abort
    end
  end


end
