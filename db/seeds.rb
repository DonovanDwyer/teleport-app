require 'open-uri'
require 'base64'

arrayOfBackground = ["https://images8.alphacoders.com/431/431202.jpg", "https://wallpapercave.com/wp/wp3354944.jpg",
  "https://www.hdwallpaper.nu/wp-content/uploads/2016/12/fantasy-10.jpg", "https://pics.freeartbackgrounds.com/fullhd/Venice_Grand_Canal_Background-1313.jpg",
  "https://cdn1.epicgames.com/ue/product/Screenshot/1-1920x1080-a72d114a5609a4824a70cfcf164cdf8b.jpg"]

arrayOfBackground.each do |bg_img|
  web_contents  = open(bg_img) {|f| f.read }
  base64image = Base64.strict_encode64(web_contents)
  BackgroundImage.create(image_url: base64image)
end
