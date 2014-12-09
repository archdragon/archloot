FactoryGirl.define do
  factory :drop, :class => Archloot::Drop do
    initialize_with do
      new("Magical ring of Spec")
    end    
    factory :drop_lucky do
      chance 1
    end
    factory :drop_unlucky do
      chance 0
    end
  end
end