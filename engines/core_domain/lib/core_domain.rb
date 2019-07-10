require "core_domain/engine"


module CoreDomain
  def self.table_name_prefi
    return 'core_'
  end

  def self.load_files
    return ['app/interactors']
  end
end
