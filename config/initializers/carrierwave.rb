CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    :aws_access_key_id => ENV["aws_access_key_id"],
    :aws_secret_access_key => ENV["aws_secret_access_key"],
    :region => "us-west-2"
  }
  config.fog_directory = "strong-as-hell-assets"
  config.fog_public     = true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end