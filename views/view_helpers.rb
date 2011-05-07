require 'sass'

module ViewHelpers
  def tasks
    [
      { :text => 'Read "Founders at Work"', :complete => false },
      { :text => "Eat lunch", :complete => false },
      { :text => "Pick up Sally from the airport", :complete => false },
      { :text => "Get fresh fruit from the grocery store", :complete => false},
      { :text => "Brush your teeth", :complete => true },
      { :text => "Walk the dog", :complete => true }
    ]
  end
end
