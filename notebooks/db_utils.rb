require 'active_record'

def get_database_url_from_ssm
  `aws ssm get-parameter --name /some-key/from-ssm/with-db-connection-string --with-decryption --output text  --query 'Parameter.Value'`
end

DATABASE_URL = ENV.fetch("DATABASE_URL", get_database_url_from_ssm)

ActiveRecord::Base.establish_connection(DATABASE_URL)
