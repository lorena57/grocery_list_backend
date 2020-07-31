class Market < ApplicationRecord

    has_many :groceries

end

# If you set the :dependent option to: :destroy, when the object is destroyed, 
# destroy will be called on its associated objects. :delete, when the object is 
# destroyed, all its associated objects will be deleted directly from the database 
# without calling their destroy method
