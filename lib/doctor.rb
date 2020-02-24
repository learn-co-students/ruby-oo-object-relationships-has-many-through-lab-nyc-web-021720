class Doctor

    attr_reader :name
    @@all = []

    def initialize(doctor_name)
        @name = doctor_name
        Doctor.all << self
    end

    def appointments
        Appointment.all.select{|app| app.doctor == self}
    end

    def new_appointment(app_patient, app_date)
        Appointment.new(app_date, app_patient, self)
    end

    def patients
        appointments.map{|app| app.patient}.uniq
    end

    def self.all
        @@all
    end
end