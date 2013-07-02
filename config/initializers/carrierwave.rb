CarrierWave.configure do |config|
  # In production, use S3
  # In development, use filesystem and processing
  # In testing, use filesystem and no processing

  # To use S3 CNAME, set bucket name to the CNAME:
  # photos.example.com
  # Set s3_cnamed to true.
  # Set CNAME on your DNS:
  # cdn.example.com => cdn.example.com.s3.amazonaws.com

  if Rails.env.production?
    config.storage =                :s3
    config.fog_credentials = {
      provider:                    'AWS',                        # required
      aws_access_key_id:           'xxx',                        # required
      aws_secret_access_key:       'yyy',                        # required
      region:                      'eu-west-1',                  # optional, defaults to 'us-east-1'
      host:                        's3.example.com',             # optional, defaults to nil
      endpoint:                    'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory  =         'name_of_directory'                     # required
    config.fog_public     =         false                                   # optional, defaults to true
    config.fog_attributes =         {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  elsif Rails.env.development?
    config.storage =                :file
  else
    config.storage =                :file
    config.enable_processing =      false
  end
end