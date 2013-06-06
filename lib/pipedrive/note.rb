module Pipedrive
  
  class Activity < Note
    def create(opts = {})
      res = post "#{resource_path}", :body => opts
      res.success? ? res['data'] : bad_response(res)
    end
  end
  
end