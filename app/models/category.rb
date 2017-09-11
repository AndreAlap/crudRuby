class Category < ApplicationRecord
    has_many :suppliers

    validates_presence_of :nome, message: "deve ser preenchido"
end
