ApiPagination.configure do |config|
  config.paginator = :kaminari
  config.total_header = 'X-Total'
  config.per_page_header = 'X-Per-Page'
  config.page_header = 'X-Page'
  config.page_param = :page
  config.page_param do |params|
    params[:page][:number] if params[:page].is_a?(ActionController::Parameters)
  end
  config.per_page_param = :per_page
  config.per_page_param do |params|
    params[:page][:size] if params[:page].is_a?(ActionController::Parameters)
  end
  config.include_total = true
end
