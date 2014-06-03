CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
    :aws_secret_access_key  => ENV['AWS_SECRET_KEY']
  }

  config.fog_directory  = ENV["reservester1.0_#{Rails.env}"]
end

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',
#     :aws_access_key_id      => 
#     :aws_secret_access_key  => 
#     :region                 => 'us-west-2'
#   }
#   config.fog_directory  = 'reservester-1.0'
end

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',                        # required
#     :aws_access_key_id      => 'xxx',                        # required
#     :aws_secret_access_key  => 'yyy',                        # required
#     :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
#     :host                   => 's3.example.com',             # optional, defaults to nil
#     :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
#   }
#   config.fog_directory  = 'name_of_directory'                     # required
#   config.fog_public     = false                                   # optional, defaults to true
#   config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
# end


