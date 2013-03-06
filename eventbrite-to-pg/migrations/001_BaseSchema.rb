
Sequel.migration do
  up do
    create_table(:attendees) do
      primary_key :attendee_
      String      :last_name,            :size => 80,  :null => false
      String      :first_name,           :size => 80,  :null => false
      String      :email,                :size => 255, :null => false
      String      :gravatar_email,       :size => 255, :null => false
      String      :github,               :size => 80,  :null => false
      String      :twitter,              :size => 80,  :null => false
      String      :tshirt_size,          :size => 20,  :null => false
      String      :company,              :size => 255, :null => false
      String      :group,                :size => 255, :null => false
      String      :ticket_type,          :size => 40,  :null => false
      String      :order_type,           :size => 40,  :null => false
      String      :total_paid_usd,       :size => 10,  :null => false
      String      :fees_paid_usd,        :size => 10,  :null => false
      String      :eventbrite_fees_usd,  :size => 10,  :null => false
      String      :cc_processing_usd,    :size => 10,  :null => false
      String      :attendee_status,      :size => 40,  :null => false
      Integer     :qty,                                :null => false
      Integer     :order_,                             :null => false
      DateTime    :date,                               :null => false
      DateTime    :date_attending,                     :null => false
    end
  end

  down do
    drop_table(:attendees)
  end
end

