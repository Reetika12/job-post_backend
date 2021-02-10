class UpdateJobsTimestamp < ActiveRecord::Migration[5.2]
  def change
    add_column(:jobs, :created_at, :datetime, null: true )
    add_column(:jobs, :updated_at, :datetime, null: true )    
    time=Time.now
    Job.update_all(created_at: time, updated_at: time )
    change_column_null(:jobs, :created_at, false)
    change_column_null(:jobs, :updated_at, false)

  end
end
