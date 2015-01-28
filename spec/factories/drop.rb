FactoryGirl.define do
  factory :drop, :class => Archloot::Drop do
    initialize_with do
      new({item: "Magical ring of Spec"})
    end
  end

  factory :drop_lucky, :class => Archloot::Drop do
    initialize_with do
      new({item: "Lucky Item", chance: 1})
    end
  end

  factory :drop_unlucky, :class => Archloot::Drop do
    initialize_with do
      new({item: "Lucky Item", chance: 0})
    end
  end
end