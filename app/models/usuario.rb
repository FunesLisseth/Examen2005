class Usuario < ActiveRecord::Base
    has_many :favoritos , dependent: :destroy
    validates :nombreUsu , presence:true
end
