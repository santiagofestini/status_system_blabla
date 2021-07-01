# frozen_string_literal: true

require_relative "status_system_blabla/version"
#require 'status_system_blabla/activity_status'

module StatusSystemBlabla
  class StatusSystem

    def get_actives all_items
      all_items.select { |an_item| item_status(an_item).is_active? }
    end
  
    def activate an_item
      item_status(an_item).activate
    end
  
    def deactivate an_item
      item_status(an_item).deactivate
    end
  
    private
  
    def item_status an_item
      status = an_item.status
      status_object_class = activity_status.of status
      return status_object_class.new.for an_item
    end
  
    def activity_status
      ActivityStatus
    end
  
  end
end
