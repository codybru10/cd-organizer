require('rspec')
require('cd')

describe(Organizer) do
  before() do
    Organizer.clear()
  end

  describe('#title') do
    it('returns the title of the CD') do
      test_organizer = Organizer.new("Greatest Hits")
      expect(test_organizer.title()).to(eq("Greatest Hits"))
    end
  end

  describe('.all') do
    it('array is empty at first') do
      expect(Organizer.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves CD to array') do
      test_organizer = Organizer.new("Greatest Hits")
      test_organizer.save()
      expect(Organizer.all()).to(eq([test_organizer]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved CDs") do
      Organizer.new("Greatest Hits").save()
      Organizer.clear()
      expect(Organizer.all()).to(eq([]))
    end
  end

  describe('#id') do
    it("returns the id of the title") do
      test_organizer = Organizer.new("Greatest Hits")
      test_organizer.save()
      expect(test_organizer.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("returns a CD by its ID number") do
      test_organizer = Organizer.new("Greatest Hits")
      test_organizer.save()
      test_organizer2 = Organizer.new("Greatest Hits 2")
      test_organizer2.save()
      expect(Organizer.find(test_organizer.id())).to(eq(test_organizer))
    end
  end

end
