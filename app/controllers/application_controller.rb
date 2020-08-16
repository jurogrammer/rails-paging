class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def get_page_info (relation_obj)
    {recordsTotal: relation_obj.take.class.count, recordsFiltered: relation_obj.take.class.count}
  end
end
