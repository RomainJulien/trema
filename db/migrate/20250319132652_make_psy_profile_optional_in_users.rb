class MakePsyProfileOptionalInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :psy_profile_id, true
  end
end
