class Prefecture < ApplicationRecord
  has_many :islands, dependent: :destroy
  has_many :saunas, dependent: :destroy
end