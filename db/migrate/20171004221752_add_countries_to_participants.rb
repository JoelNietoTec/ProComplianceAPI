class AddCountriesToParticipants < ActiveRecord::Migration[5.1]
  def change
    add_reference :participants, :countries, array: true, default: []
  end
end
