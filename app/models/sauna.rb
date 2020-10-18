class Sauna < ApplicationRecord
  belongs_to :prefecture

  HOT_BORDER = 90
end