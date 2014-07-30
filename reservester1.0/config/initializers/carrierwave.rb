#add .env file to store secret key

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                
    :aws_access_key_id      => ENV['AWS_S3_KEY_ID'],                  
    :aws_secret_access_key  => ENV['AWS_S3_ACCESS_KEY'],

    :path_style => true # now can except a dot in bucket name
   
    #:region                 => ENV['AWS_S3_REGION'],            
  }
  config.fog_directory  = 'reservesterberlin'           
  config.fog_public     = false                          
end

# # CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',
#     :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
#     :aws_secret_access_key  => ENV['AWS_SECRET_KEY']
#   }

#   config.fog_directory  = ENV["reservester1.0_#{Rails.env}"]
# end



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


