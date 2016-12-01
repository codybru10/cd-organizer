class Artist

  @@artist_array = []

  define_method(:initialize) do |author|
    @author = author
    @id = @@artist_array.length().+(1)
  end

  define_method(:author) do
    @author
  end

  define_singleton_method(:all) do
    @@artist_array
  end

  define_method(:save) do
    @@artist_array.push(self)
  end

  define_singleton_method(:clear) do
    @@artist_array = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_artist = nil
    @@artist_array.each() do |artist|
      if artist.id().eql?(id)
        found_artist = artist
      end
    end
    found_artist
  end

end
