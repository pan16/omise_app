module ApplicationHelper

	require 'chunky_png'

  	def qrcode_tag(text, options = {})
    	qr = ::RQRCode::QRCode.new(text)
 		return ChunkyPNG::Image.from_datastream(qr.as_png.resize(100,100).to_datastream).to_data_url
	end

end