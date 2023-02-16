class PostComment < ApplicationRecord
  
  # why use belongs_to? => :user,:post_image両方から見て1:NのN側
  belongs_to :user
  belongs_to :post_image
  
end
