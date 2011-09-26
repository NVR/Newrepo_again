class Eventswithname < ActiveRecord::Base
attr_accesible :content, :name
belongs_to :user
validates :content, :presence => true
validates :name , :presence => true, :length =>{:maximum=>40}
validates :user_id , :presence => true
default_scope :order => 'eventswithname.created_at DESC'
end
