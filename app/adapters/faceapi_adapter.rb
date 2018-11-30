class FaceapiAdapter

  def self.sendBodyData(bodyData)
    response = RestClient.post("https://api-us.faceplusplus.com/humanbodypp/v2/segment",
    {
    api_key: '3qigSUuZzHp3k05QQU7iJz5am_5OjPcN',
    api_secret: 'nWjgstEB1NRh6aRdr3O9CKgq2VFNwpWb',
    image_url: "https://i.pinimg.com/736x/8f/03/45/8f0345b062dd00c0e9e20168b50d319c.jpg"
    }
      )
    json_response = JSON.parse(response.body)
    return json_response
  end

end
