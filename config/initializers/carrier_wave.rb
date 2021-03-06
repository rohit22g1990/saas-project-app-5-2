if Rails.env.production? || Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => 'AWS',
      :s3_region => ENV['AWS_REGION'],
      :aws_access_key_id => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY'],
      :s3_permissions => 'public-read'
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end
  