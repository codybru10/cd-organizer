require('rspec')
require('cd')

describe(Organizer) do

  describe('#title') do
    it('returns the title of the CD') do
      test_organizer = Organizer.new("Greatest Hits")
      expect(test_organizer.title()).to(eq("Greatest Hits"))
    end
  end

end
