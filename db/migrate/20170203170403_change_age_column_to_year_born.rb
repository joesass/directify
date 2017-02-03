class ChangeAgeColumnToYearBorn < ActiveRecord::Migration[5.0]
  def change
    rename_column :directors, :age, :year_born
  end
end
