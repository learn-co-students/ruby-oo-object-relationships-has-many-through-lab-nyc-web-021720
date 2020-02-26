require 'pry'
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

    def new_appointment(patient, date)
         #date / patient / doctor
        Appointment.new(date, patient, self)
    end 

    # we want to make a list of all appointments related to 
    # this (self) doctor
    def appointments
        # binding.pry
        Appointment.all.select do |dr_apts|
            dr_apts.doctor == self 
        end
    end 

    def patients
        # binding.pry
        appointments.map do |dr_pat|
            dr_pat.patient
        end 
        # appointments.map(&:patient)
    end 


end 