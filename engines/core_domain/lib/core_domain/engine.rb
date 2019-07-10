module CoreDomain
  class Engine < ::Rails::Engine
    isolate_namespace CoreDomain
    config.generators.api_only = true

    initializer "core_domain", after: :load_config_initializers do |app|
      # To load the no defaults directories of Rails
      Dir[ "./interactors/*.rb" ].each { |file| require file }
      Dir[ "./boundaries/*.rb" ].each { |file| require file }

      # To add the migration in main app
      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
  end
end