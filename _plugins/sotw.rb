module SongOfTheWeekPlugin
  class Generator < Jekyll::Generator
    # TZ = timezone("America/Los_Angeles")
    WEEK_ONE_TIME = Time.new(2018, 12, 28, in: "-0700")
    DAY_IN_SECONDS = 60 * 60 * 24
    WEEK_IN_SECONDS = DAY_IN_SECONDS * 7

    def generate(site)
      cnt = Hash.new(0)

      site.data["sotw"].each_with_index { |song, index|
        song["index"] = index
        song["start_date"] = WEEK_ONE_TIME + index * WEEK_IN_SECONDS
        song["end_date"] = WEEK_ONE_TIME + index * WEEK_IN_SECONDS + 6 * DAY_IN_SECONDS


        # artist counts
        song["artists"].each { |artist| cnt[artist] += 1 }
      }

      sotw_artists = site.pages.find { |page| page.name == 'sotw-artists.html'}

      sotw_artists.data['num_artists'] = cnt.size
      # 'safe-invert' on a hash; see https://stackoverflow.com/questions/10989259/how-to-swap-keys-and-values-in-a-hash
      sotw_artists.data['artist_count'] = cnt.each_with_object({}){|(k,v),o|(o[v]||=[])<<k}
      sotw_artists.data['top_artist'] = sotw_artists.data['artist_count'].keys.max
    end
  end
end
