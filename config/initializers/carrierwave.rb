CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    :aws_access_key_id => "AKIAITYYV3ZS73R6Q6AQ",
    :aws_secret_access_key => "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",
    :region => "us-west-2"
  }
  config.fog_directory = "strong-as-hell-assets"
  config.fog_public     = true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end