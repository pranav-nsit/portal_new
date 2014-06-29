class Student < ActiveRecord::Base
	validates :name,:rollNo,:category,:email,:dob,:contactNo,:bePercent,:bePercentDrop,
	:sem1Percent,:sem2Percent,:sem3Percent,:sem4Percent,:sem5Percent,:xPercent,:xYear,:xiiPercent,
	:xiiYear,:xBoard,:xiiBoard,:fathersName,:mothersName,:backs,:currentAddress,:permanentAddress,	presence: true;
	validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :multiline => true;

end
