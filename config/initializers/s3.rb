#if Rails.env == "development"
  # set credentials from ENV hash
  #S3_CREDENTIALS = { :access_key_id => ENV['AKIAIQUZQ55QEWBSBAEA'], :secret_access_key => ENV['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'], :bucket => ENV['EViRTUM_IMAGES']}
#else
  # get credentials from YML file
  #S3_CREDENTIALS = Rails.root.join("config/s3.yml")
#end