class BehaviorLog < ActiveRecord::Base
    belongs_to :user
    validates :child_name, :child_age, :behavior_description, :caregiver_response, presence: true #at what point does activerecord validate? It's at behavior_logs.save
end 