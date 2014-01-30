class Friend
  def greeting(someone = nil)
    if someone == nil
      "Hello!"
    else
      "Hello, #{someone}!"
    end
  end
end

=begin
===================================  

$ rake
Friend
  says hello
  says hello to someone
         
Finished in 0.002 seconds
2 examples, 0 failures

===================================
=end