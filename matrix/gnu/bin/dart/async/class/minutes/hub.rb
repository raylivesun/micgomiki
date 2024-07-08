class File
  def initialize(options = {stream: true})
   ...
    @stream = options[:stream]
  end

  def get_data(url)
    response = RestClient.get(url)
    if @stream
      response.body
    else
      JSON.parse(response.body)
    end
  end
end
