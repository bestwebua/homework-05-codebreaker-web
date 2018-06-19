module Codebreaker
  module Session
    private
    def define_session_accessors
      Codebreaker::GameConfiguration.members.each do |method|
        self.class.class_eval do
          define_method "#{method}" do
            request.session[method]
          end

          define_method "#{method}=" do |value|
            request.session[method] = value
          end
        end
      end
    end
  end
end