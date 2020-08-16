class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def get_page_info (relation_obj)
    {recordsTotal: relation_obj.count, recordsFiltered: relation_obj.count}
  end
end
