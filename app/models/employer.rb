class Employer < ApplicationRecord
    def change
        create_table :employers do |t|
            t.string :company_name
            t.string :company_name_url
    
            t.timestamps
        end
    end
end