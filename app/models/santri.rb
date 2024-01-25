class Santri < ApplicationRecord
    mount_uploader :image_url, AvatarUploader
end
