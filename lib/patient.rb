class Patient 
    attr_accessor :name 
    @@all = []
    
    def initialize(name)
        @name = name 
        Patient.all << self 
    end 

    def self.all 
        @@all 
    end 
    def new_appointment(doctor,date)
        new_appt = Appointment.new(date,self,doctor)
        # creates a new appointment 
        
    end 

    def appointments #iterates thro appoints ments and 
        #returns appt that belongs to patient
        #new_appt = Appointment
        Appointment.all.select{|appt|appt.patient == self}

    end 

    def doctors #iterates over patients appts and collects doctor 
        #that belongs to each appointment 

        appointments.map{|appt|appt.doctor}
    end 

end 