class Supplier < ApplicationRecord
  has_one :address
  belongs_to :category

  validates_presence_of :name, message: "deve ser preenchido"
end
