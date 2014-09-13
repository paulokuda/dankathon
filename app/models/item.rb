class Item < ActiveRecord::Base

    geocoded_by :address
    after_validation :geocode


    def self.search(search)  
  if search  
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"])  
  else  
    find(:all)  
  end  
end  
end
