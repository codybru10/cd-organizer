require('rspec')
require('artist')

describe(Artist) do
  before() do
    Artist.clear()
  end

  describe('#author') do
    it('returns the author artist name of the CD') do
      test_artist = Artist.new("Mariah")
      expect(test_artist.author()).to(eq("Mariah"))
    end
  end

  describe('.all') do
    it('array is empty at first') do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves artist to array') do
      test_artist = Artist.new("Mariah")
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved artist names") do
      Artist.new("Mariah").save()
      Artist.clear()
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#id') do
    it("returns the id of the artist") do
      test_artist = Artist.new("Mariah")
      test_artist.save()
      expect(test_artist.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("returns a artist by its ID number") do
      test_artist = Artist.new("Mariah")
      test_artist.save()
      test_artist2 = Artist.new("Taylor")
      test_artist2.save()
      expect(Artist.find(test_artist.id())).to(eq(test_artist))
    end
  end

end
