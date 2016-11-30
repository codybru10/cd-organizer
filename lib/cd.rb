class Organizer

  @@cd_array = []

  define_method(:initialize) do |title|
    @title = title
    @id = @@cd_array.length().+(1)
  end

  define_method(:title) do
    @title
  end

  define_singleton_method(:all) do
    @@cd_array
  end

  define_method(:save) do
    @@cd_array.push(self)
  end

  define_singleton_method(:clear) do
    @@cd_array = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_cd = nil
    @@cd_array.each() do |cd|
      if cd.id().eql?(id)
        found_cd = cd
      end
    end
    found_cd
  end

end
