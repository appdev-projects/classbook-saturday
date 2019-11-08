class ApplicationController < ActionController::Base
  def directory
    
    render({ :template => "people/index.html" })
  end

  def first

    render({ :template => "people/first_t.html" })
  end

  def second

    render({ :template => "people/second_t.html" })
  end
end
