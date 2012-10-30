
#require "dojo_mobile_proto/version"
require "thor"
require "thor/group"

module DojoMobileProto
  class Prototype < Thor::Group
    include Thor::Actions
    def self.source_root
     File.dirname(__FILE__)
    end
    desc "Create Sinatra app for hosting dojo mobile prototype"
    argument :name
    
    def create_gemfile
      template('templates/gemfile.tt', "#{name}/Gemfile")
    end
    
    def create_proto_ruby
      template('templates/proto.tt', "#{name}/#{name}.rb")
    end
    
    def create_basic_view
      template('templates/view.tt', "#{name}/views/index.erb")
    end
    
    def message
      say "You are now ready to run the prototype."
      say "Change into the directory 'cd #{name}'"
      say "Run 'bundle install'"
      say "Run 'ruby #{name}.rb'"
      say "Now go and build you prototype in views/index.erb"
  end
end
