class User < ApplicationRecord
  include ImageUploader::Attachment(:image)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
