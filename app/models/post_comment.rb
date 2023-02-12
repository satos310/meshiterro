class PostComment < ApplicationRecord
  
  # why use belongs_to? => 
  belongs_to :user
  belongs_to :post_images
  
end
