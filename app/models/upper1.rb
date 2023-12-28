class Upper1 < ApplicationRecord
  def as_json(options = {})
    super(options.merge({
      except: [:id, :created_at, :updated_at]
    }))
  end
end
