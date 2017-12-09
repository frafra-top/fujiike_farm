class Image < ApplicationRecord
  belongs_to :item
  attachment :file
end
