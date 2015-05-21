class Favorito < ActiveRecord::Base
    belongs_to :usuario
    validates :name, presence: true
end
