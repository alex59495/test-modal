class Testmodal < ApplicationRecord
  validates :value, presence: true
  validates :name, presence: true
end
