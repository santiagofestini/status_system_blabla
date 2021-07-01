class StatusSystemBlabla::ActiveStatus < StatusSystemBlabla::ActivityStatus

  def deactivate
    @object.update({status: 'inactive'}) 
  end

  def is_active?
    true
  end

end