module ArtistCounterPlugin
  class Generator < Jekyll::Generator
    def generate(site)
      song_data = site.data['sotw']
      cnt = Hash.new(0)
      song_data.each do | key, value |
        artists = value['artists']
        artists.each { |artist| cnt[artist] += 1 }
      end

      sotw_artists = site.pages.find { |page| page.name == 'sotw-artists.html'}

      sotw_artists.data['num_artists'] = cnt.size
      # 'safe-invert' on a hash; see https://stackoverflow.com/questions/10989259/how-to-swap-keys-and-values-in-a-hash
      sotw_artists.data['artist_count'] = cnt.each_with_object({}){|(k,v),o|(o[v]||=[])<<k}
    end
  end
end
