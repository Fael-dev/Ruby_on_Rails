class Produto < ApplicationRecord
    belongs_to :departamento

    validates :preco, presence: true
    validates :nome, length: { minimum: 4}
end
