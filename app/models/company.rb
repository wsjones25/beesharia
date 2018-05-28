class Company < ApplicationRecord
  belong_to :user
  mount_uploader :photo, PhotoUploader
end
