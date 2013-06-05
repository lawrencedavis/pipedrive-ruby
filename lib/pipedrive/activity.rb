module Pipedrive
  
  class Activity < Base
    def create(opts = {})
      res = post "#{resource_path}/activities", :body => opts
      res.success? ? res['data'] : bad_response(res)
    end
  end
  
end