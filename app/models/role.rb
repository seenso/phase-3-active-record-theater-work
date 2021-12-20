class Role < ActiveRecord::Base
  #has many auditions
  has_many :auditions

  def actors 
    #return arr of actor names assoc w role
    "return arr of actor names assoc w role"
    self.auditions.map do |audition|
      audition.actor
    end
  end

  def locations
    #return arr of locations from auditions assoc w role
    "return arr of locations from auditions assoc w role"
    sself.auditions.map do |location|
      audition.location
    end
  end

  def lead
    #return first instance of audition that was hired for this role or returns str 'no actor has been hired for this role'
    "return first instance of audition that was hired for this role or returns str 'no actor has been hired for this role'"
    self.auditions.first ? self.auditions.first ? 'no actor has been hired for this role'
  end

  def understudy
    #returns second instance of audition that was hired for this role or returns string 'no actor has been hired for understudy for this role'
    self.auditions[1] ? self.auditions[1] ? 'no actor has been hired for understudy for this role'
  end
end