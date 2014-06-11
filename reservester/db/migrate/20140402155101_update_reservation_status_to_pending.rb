class UpdateReservationStatusToPending < ActiveRecord::Migration
  def change
    Reservation.reset_column_information
    reversible do |dir|
      dir.up { Reservation.update_all status: 'Pending' }
    end
  end
end
