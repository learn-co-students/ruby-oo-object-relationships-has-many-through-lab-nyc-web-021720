class Appointment

    attr_reader :date, :patient, :doctor
    @@all = []

    def initialize(app_date, app_patient, app_doctor)
        @date = app_date
        @patient = app_patient
        @doctor = app_doctor
        Appointment.all << self
    end

    def self.all
        @@all
    end
end