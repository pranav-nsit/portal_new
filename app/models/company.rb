class Company < ActiveRecord::Base
	 
    attr_accessor :coe,:ece,:ice,:it,:mpae,:bt,:is,:pc,:sp
	 before_save :combine_branches   # or choose other callback type respectively
  def combine_branches
    self.branchesAllowed = ""
    if coe=="COE"
        self.branchesAllowed += "COE" 
      end
    
    if ece=="ECE"
      if (self.branchesAllowed=="")
        self.branchesAllowed += "ECE"
      elsif 
        self.branchesAllowed += ", ECE"
      end
        
  end
   if ice=="ICE"
    if (self.branchesAllowed=="")
        self.branchesAllowed += "ICE"
      elsif 
    self.branchesAllowed += ", ICE"
  end
  end
     if it=="IT"
      if (self.branchesAllowed=="")
        self.branchesAllowed += "IT"
      elsif 
    self.branchesAllowed += ", IT" 
  end
  end
     if mpae=="MPAE"
          if (self.branchesAllowed=="")
            self.branchesAllowed += "MPAE"
          elsif 
        self.branchesAllowed += ", MPAE"
      end
    end
     if bt=="BT"
      if (self.branchesAllowed=="")
        self.branchesAllowed += "BT"
      elsif 
    self.branchesAllowed += ", BT" 
  end
    end
     if is=="IS"
      if (self.branchesAllowed=="")
        self.branchesAllowed += "IS"
      elsif 
    self.branchesAllowed += ", IS" 
  end
    end
     if is=="IS"
      if (self.branchesAllowed=="")
        self.branchesAllowed += "SP"
      elsif 
    self.branchesAllowed += ", SP" 
  end
    end
     if pc=="PC"
      if (self.branchesAllowed=="")
        self.branchesAllowed += "PC"
      elsif 
    self.branchesAllowed += ", PC" 
  end
    end
  end
	 validate :deadline_on_or_before_now

  def deadline_on_or_before_now
    errors.add(:deadline, "can't be in the past") if
      !deadline.blank? and deadline < (Time.zone.now+19800).to_datetime
  end

	validates :name, presence: true,
                    length: { minimum: 2 };
    validates :grade,:beCutoff,:details,:package, presence: true;
    validates_inclusion_of :beCutoff,:xiiCutoff,:xCutoff, :in=> 0..100,:message=>"Out of Range";

end
