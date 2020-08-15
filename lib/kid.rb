require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
    
    # This is a module in dance_module.rb. include keyword allows us to use all of the methods of 
    # the included module as instance methods (extend keyword allows module to be used as class methods)

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end