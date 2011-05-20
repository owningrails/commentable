require "rails"

module OwningEngine
  class Engine < Rails::Engine
    initializer "commentable.something_to_initialize" do
      # ...
    end
  end
end
