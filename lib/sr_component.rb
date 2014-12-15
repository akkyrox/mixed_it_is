class SrComponent
debugger
  cattr_accessor :component_argument_hashes
@@component_argument_hashes = []

def self.create(args)
  base_component=SrComponent.find({:name=>args[:base]}) || {}
  @@component_argument_hashes << base_component.merge(args)
end

def self.find(conditions)
  component_hash = defined?(COMPONENT_ARGUMENT_HASHES)? COMPONENT_ARGUMENT_HASHES : @@component_argument_hashes
  component_hash.find{|component| component.merge(conditions) == component }
end

def self.find_component_by_name(name)
  puts "loading component #{name}"
  SrComponent.find({:name=>name}).clone
end
#This function is used to load all the components
def self.define_component(name,args)
  SrComponent.create args.merge({:name=>name})
end


end