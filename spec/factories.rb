puts "---- FACTORIES.RB"

FactoryGirl.define do
  factory :drop do
    item "Magical ring of Spec"
    factory :drop_lucky do
      chance 1
    end
    factory :drop_unlucky do
      chance 0
    end
  end
end