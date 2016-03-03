class Bike
  
  def initialize
    @working = true
  end


  def working?(*status)
   if status != nil
     if status.join == "true"
       @working = true
     elsif status.join == "false"
       @working = false
     end
   end
     @working
  end
  


  end
bike = Bike.new
bike.working?(false)

