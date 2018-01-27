require 'base64'
require 'flickraw'

class Photo
  STR = "OTQ5N2M2Yjk2OTUxODAzZmM4MjRhNmQ2ZWJmNDY2NTg=\nBODE4ZjVmNjIwNzMwYTY1MA==\n"

  def initialize
    setup
  end

  def photo_url
    FlickRaw.url_b(info)
  end

  def profile_name
    info['owner']['username'] || 'Flickr User'
  end

  def profile_url
    flickr.
      urls.
      getUserProfile(
        user_id: info['owner']['nsid']
      )['url'] rescue nil
  end

private

  def info
    @_info ||= begin
      flickr.
        photos.
        getInfo(
          photo_id: photo['id'],
          secret: photo['secret']
        )
    end
  end

  def photo
    @_photo ||= begin
      flickr.
        photos.
        search(
          tags: '#landscape, #nature, #beautiful',
          sort: 'interestingness-desc',
          safe_search: 3,
          page: 1,
          per_page: 50
        ).
        to_a.
        shuffle.
        first
    end
  end

  def setup
    ['yek_ipa', 'terces_derahs'].each_with_index do |str, i|
      FlickRaw.public_send("#{str.reverse}=", Base64.decode64(STR.split('B')[i]))
    end
  end
end