module DefaultScope
  def default_scope scope_options
    scoped_methods << { :find => scope_options }
  end
end

ActiveRecord::Base.send(:extend, DefaultScope)
