authorization do

  role :data_imports_admin do
    has_permission_on [:data_imports],:to=>[:index]
  end

  role :masteradmin do
    includes  :data_imports_admin
  end

  role :admin do
    includes  :data_imports_admin
  end
 
end