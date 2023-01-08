OrdinaryGem::AnotherTypicalClass.class_eval do
  def self.a_singleton_method_that_stays_the_same
    "This is our override of a simple singleton method."
    "This method should stay the same in the next version."
  end

  def self.a_singleton_method_that_will_change
    "This is our override of a simple singleton method."
    "This method will be rewritten in the next version."
  end

  def self.a_singleton_method_that_will_be_removed
    "This is our override of a simple instance method."
    "This method will be removed in the next version."
  end

  def self.a_singleton_method_that_we_have_added
    "This is our custom singleton method."
    "This is not an override."
  end



  def a_instance_method_that_that_stays_the_same
    "This is our override of a simple instance method."
    "This method should stay the same in the next version."
  end

  def a_instance_method_that_will_change
    "This is our override of a simple instance method."
    "This method will be rewritten in the next version."
  end

  def a_instance_method_that_will_be_removed
    "This is our override of a simple instance method."
    "This method will be removed in the next version."
  end

  def a_instance_method_that_we_have_added
    "This is our custom instance method."
    "This is not an override."
  end
  
end
