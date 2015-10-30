path = File.join(Rails.root, 'config', 'avalara.yml')

if File.exists?(path)
  begin
    AVALARA_CONFIGURATION = YAML.load_file(path)
    Avalara.configure do |config|
      config.username = AVALARA_CONFIGURATION['username'] || abort("Avalara configuration file (#{path}) is missing the username value.")
      config.password = AVALARA_CONFIGURATION['password'] || abort("Avalara configuration file (#{path}) is missing the password value.")
      config.version = AVALARA_CONFIGURATION['version'] if AVALARA_CONFIGURATION.has_key?('version')
      config.endpoint = AVALARA_CONFIGURATION['endpoint'] if AVALARA_CONFIGURATION.has_key?('endpoint')
    end
  end
else
  abort "Avalara configuration not found."
end
