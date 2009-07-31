require 'chronic'

module Ddate
  class DiscordianDate
    #hmmm, TODO, make this private and still work!
    #private_class_method :call_ddate
    
    #################################
    # Attributes
    #################################
  
    attr :ddate_string

    #################################
    # Instance Methods
    #################################
  
    def initialize(ddate_string)
      @ddate_string = ddate_string
    end
  
    def year
      ddate_string.split(',')[2].to_i
    end
  
    def month
      ddate_string.split(',')[1].gsub(/\d/,"").strip.to_i
    end
  
    def day_of_week
      ddate_string.split(',')[0].strip
    end
    
    def day
      ddate_string.split(',')[1].gsub(/\D/,"").strip.to_i
    end
    
    def is_xday?
      day == "9827" && day == "40" && month.downcase == "confusion"
    end
  
    def to_s
      @ddate_string.to_s
    end
    
    #################################
    # Class Methods
    #################################
  
    def self.today
      parse(Time.now.to_s)
    end
    
    def self.xday
      new("blah, Confusion 40, 9827 YOLD")
    end
  
    def self.parse(date)
      date = Chronic.parse(date.to_s)
      new(call_ddate(date.day, date.month, date.year))
    end

    def self.call_ddate(day=nil, month=nil, year=nil)
      if day && month && year
        `ddate #{day} #{month} #{year}`
      elsif day.nil? && month.nil? && year.nil?
        `ddate`
      else
        nil
      end
    end  
  end
end