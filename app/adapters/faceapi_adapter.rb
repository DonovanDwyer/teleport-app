class FaceapiAdapter

  def self.sendBodyData(bodyData)
    response = RestClient.post("https://api-us.faceplusplus.com/humanbodypp/v2/segment",
    {
    api_key: '3qigSUuZzHp3k05QQU7iJz5am_5OjPcN',
    api_secret: 'nWjgstEB1NRh6aRdr3O9CKgq2VFNwpWb',
    image_base64: bodyData
    }
      )
    json_response = JSON.parse(response.body)
    return json_response
  end

end
