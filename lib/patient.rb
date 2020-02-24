class Patient

    attr_reader :name
    @@all = []

    def initialize(patient_name)
        @name = patient_name
        Patient.all << self
    end

    def new_appointment(app_doctor, app_date)
        Appointment.new(app_date, self, app_doctor)
    end

    def appointments
        Appointment.all.select {|app| app.patient == self}
    end

    def doctors
        appointments.map {|app| app.doctor}.uniq
    end

    def self.all
        @@all
    end
end