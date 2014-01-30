require "time"

def measure(n=1)
  #initialize initial time
  initial_time = Time.now
  n.times do
    yield
  end
  # final_time after the loop
  final_time = Time.now
  #calculate the averate time taken
   (final_time - initial_time)/n
end


=begin
================================================

Performance Monitor
  takes about 0 seconds to run an empty block
  takes exactly 0 seconds to run an empty block (with stubs)
  takes about 1 second to run a block that sleeps for 1 second
  takes exactly 1 second to run a block that sleeps for 1 second (with stubs)
  runs a block N times
  returns the average time, not the total time, when running multiple times
  returns the average time when running a random number of times for random lengths of time

Finished in 1.01 seconds
7 examples, 0 failures

================================================  
=end