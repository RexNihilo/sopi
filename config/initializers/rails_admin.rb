# config/initializers/rails_admin.rb
RailsAdmin.config do |config|
  config.authorize_with do
    unless current_user.admin?
      redirect_to(
        main_app.root_path,
        alert: "You are not permitted to view this page"
      )
    end
  end
  
  config.model "User" do
    edit do
      field :admin
      field :email
      field :password
    end
  end
  
  config.current_user_method { current_user }
end