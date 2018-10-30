class Patient
attr_accessor :name, :doctors, :date, :appointments
@@all = []

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @doctors << doctor
    @appointments << appointment
    appointment
  end
end