require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: 'cloudstorage101',
  api_key:    '376597832291554',
  api_secret: 'mbEOrp22UCM8Xxjk2ZtQa7C86v4',
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "zombie_app/cache"),
  store: Shrine::Storage::Cloudinary.new(prefix: "zombie_app"),
}

Shrine.plugin :activerecord           
Shrine.plugin :cached_attachment_data 
Shrine.plugin :restore_cached_data    
Shrine.plugin :validation_helpers 
Shrine.plugin :validation