class Doctor
attr_accessor :name, :doctors, :appointments, :patients
@@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    @patients << patient
    appointment
  end 
end