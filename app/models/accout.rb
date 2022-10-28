class Accout < ApplicationRecord
  belongs_to :user
  belongs_to :bank
end
