module CoreDomain
  class Engine < ::Rails::Engine
    isolate_namespace CoreDomain
    config.generators.api_only = true

    initializer "foo_bar", after: :load_config_initializers do |app|
      # To load the no defaults directories of Rails
      CoreDomain.load_files.each do |file|
        require_relative File.join("../..", file)
      end

      # To add the migration in main app
      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
  end
end
