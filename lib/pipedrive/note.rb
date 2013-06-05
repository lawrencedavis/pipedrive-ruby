module Pipedrive
  
  class Note < Base
    def create(opts = {})
      res = post "#{resource_path}/notes", :body => opts
      res.success? ? res['data'] : bad_response(res)
    end
  end
  
end