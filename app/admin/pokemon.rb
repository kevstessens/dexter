ActiveAdmin.register Pokemon do



  form do |f|
    f.inputs "Pokemon Data" do
      f.input :name
      f.input :number
      f.input :admin_user
      f.input :pokedex
      f.input :version
      f.input :type
      f.input :captured
    end
    f.buttons
  end

end