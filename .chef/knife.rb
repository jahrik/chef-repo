# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "wgill"
client_key               "#{current_dir}/wgill.pem"
validation_client_name   "orginc-validator"
validation_key           "#{current_dir}/orginc-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/orginc"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
encrypted_data_bag_secret "#{current_dir}/encrypted_data_bag_secret"
