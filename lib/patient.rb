class Patient

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        Patient.all << self
    end 

    def self.all
        @@all
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 

    def appointments
        Appointment.all.select do |patient_apts|
            patient_apts.patient == self
        end 
    end 

    def doctors
        appointments.map do |which_doc|
            which_doc.doctor
        end 
    end 
end 