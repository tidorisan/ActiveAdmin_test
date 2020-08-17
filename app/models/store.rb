class Store < ApplicationRecord

	enum open_status: {
    open: 1,
    closed: 2
  	}
end
