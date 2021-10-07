class AddColumnSubjects < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :opening_year, :string
    add_column :subjects, :subject_name, :string
    add_column :subjects, :date, :date
    add_column :subjects, :start_time, :string
    add_column :subjects, :target, :string
    add_column :subjects, :teacher_id, :integer
  end
end
