class Audition < ActiveRecord::Base
  #has one role
  belongs_to :role

  def call_back
    self.hired = true
  end
end