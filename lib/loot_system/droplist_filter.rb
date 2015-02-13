class DroplistFilter
  def initialize(droplist)
    @droplist = droplist
  end

  def limit(count)
    @droplist.sample(count)
  end
end
