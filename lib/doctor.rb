class Doctor
    attr_reader :name, :patient
    @@all = []

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointments|
            appointments.doctor == self
        end
    end

    def patients 
        Appointment.all.map do |appointment|
            appointment.patient
        end
    end

            
end