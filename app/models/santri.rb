class Santri < ApplicationRecord
    mount_uploader :image_url, AvatarUploader
    belongs_to :user
    has_many :comments, dependent: :destroy
end
