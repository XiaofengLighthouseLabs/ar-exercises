class Store < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :must_carry
  has_many :employees

    def must_carry
    if !(womens_apparel || mens_apparel)
    errors.add(:base, "Stores must carry at least one of the men's or women's apparel.")
    end
  end
end
