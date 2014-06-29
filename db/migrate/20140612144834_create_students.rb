class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :rollNo
      t.string :name
      t.string :gender
      t.string :category
      t.string :branch
      t.timestamp :dob
      t.string :email
      t.string :contactNo
      t.string :altContactNo
      t.decimal :bePercent
      t.decimal :bePercentDrop
      t.decimal :sem1Percent
      t.decimal :sem2Percent
      t.decimal :sem3Percent
      t.decimal :sem4Percent
      t.decimal :sem5Percent
      t.decimal :sem6Percent
      t.decimal :xPercent
      t.integer :xYear
      t.decimal :xiiPercent
      t.integer :xiiYear
      t.string :xBoard
      t.string :xiiBoard
      t.string :fathersName
      t.string :fathersOccupation
      t.string :fathersContact
      t.string :mothersName
      t.string :mothersOccupation
      t.string :mothersContact
      t.integer :backs
      t.string :currentAddress
      t.string :permanentAddress

      t.timestamps
    end
  end
end
