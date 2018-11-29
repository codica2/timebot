module ApiHelper

  def json
    JSON.parse(response.body)
  end

end