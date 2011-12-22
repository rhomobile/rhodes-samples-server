class Application < Rhoconnect::Base
  class << self
    def authenticate(login,password,session)
      true
    end
    
    # Add hooks for application startup here
    # Don't forget to call super at the end!
    def initializer(path)
      super
    end
    
    def store_blob(obj,field_name,blob)
      obj['filename'] = blob[:filename]
      super
    end
  end
end

Application.initializer(ROOT_PATH)
