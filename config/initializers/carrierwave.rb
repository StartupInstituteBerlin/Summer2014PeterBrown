# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',                        # required
#     :aws_access_key_id      => 'AKIAJGQB7MUETWMRTORQ',                        # required
#     :aws_secret_access_key  =>  ENV['SECRET_KEY'],                        # required
#     :region                 => 'eu-west-2',                  # optional, defaults to 'us-east-1'
#     :endpoint => 'http://s3.amazonaws.com'
#   }
#   config.fog_directory  = ENV['S3_BUCKET']                    # required
# end