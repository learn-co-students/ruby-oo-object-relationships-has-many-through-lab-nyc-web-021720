# The Doctor model:

# The Doctor class needs a class variable @@all that begins as an empty array.
# The Doctor class needs a class method .all that lists each doctor in the class variable.
# A doctor should be initialized with a name and be saved in the @@all array.
# The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor
# The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.
# The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.


class Doctor

  attr_accessor :name 

  @@all = []

  def initialize(name)
    @name = name 
    save
  end

  def self.all 
    @@all 
  end

  def save 
    self.class.all << self 
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end
  end 

  def patients 
    appointments.map do |appointment|
      appointment.patient 
    end
  end

end