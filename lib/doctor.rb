class Doctor 
    attr_accessor :name 
    @@all = []
    
    def initialize(name)
        @name = name 
        Doctor.all << self 
    end 

    def self.all 
        @@all 
    end 
    
    def new_appointment(patient,date) #creates a new appointment that 
        
        #belongs to the doctor
        new_appt = Appointment.new(date,patient,self)
    end 

    def appointments #iterate thro appointments and finds
        # appointment belonging to this doc 
        
        Appointment.all.select{|appt|appt.doctor == self}
    end 

    def patients # iterates over appointments and collects patient 
        #that belongs to appopintment 
        #binding.pry
        appointments.map{|appt|appt.patient} 

    end 
end 