ActionController::Routing::Routes.draw do |map|
  map.resources :holidays

  map.resources :thoughts
  


  map.birth_certificate '/birth_certificate',:controller => "certificates",:action => "birth_certificate"

  map.resignation_certificate '/resignation_certificate',:controller => "certificates",:action => "resignation_certificate"
  map.office_order '/office_order',:controller => "certificates",:action => "office_order"
  map.joining_certificate '/joining_certificate',:controller => "certificates",:action => "joining_certificate"
  map.fee_certificate '/fee_certificate',:controller => "certificates",:action => "fee_certificate"
  map.appointment_certificate '/appointment_certificate',:controller => "certificates",:action => "appoitment_certificate"
  map.experience_certificate '/experience_certificate',:controller => "certificates",:action => "experience_certificate"
  ### =======
  map.update_bus_service '/update_bus_service/:id',:controller => "student",:action => "update_bus_service",:via => :post
  map.print '/print/:id',:controller => "student",:action => "print"
  map.card_print '/card_print/:id',:controller => "student",:action => "card_print"
  map.card_printing '/card_printing',:controller => 'student',:action => 'card_printing'
  map.take_call '/take_call',:controller => "certificates",:action => "take_call"
  map.list_of_student_ajax '/list_of_user_ajax',:controller => "certificates",:action => "list_of_student_ajax"
  map.select_certificate '/select_certificate',:controller => "certificates",:action => "select"
  map.certificate '/certificate',:controller => "certificates" ,:action => "display"
  map.error '/reasons/:id',:controller => 'reason',:action => 'display',:as => 'reason'
  map.data_import '/data_import',:controller => 'data_imports',:action => 'index',:as => 'data_import',:via => :post
  map.bulk_upload '/bulk_upload',:controller => 'student',:action => 'bulk_upload'
  map.report '/routes/pdf_report',:controller => 'routes',:action => 'pdf_report',:as=>"route_pdf_report"
  map.transport_dashboard '/transport_dashboard' ,:controller => 'bus_services',:action => 'transport_dashboard'
  map.room_lisiting '/room_listing',:controller => 'rooms',:actions => 'room_lisiting'
  map.hostel_dashboard '/hostel_dashboard',:controller => 'hostels',:action => 'hostel_dashboard'
  map.availabilty '/availabilty',:controller => 'rooms',:action => 'availabilty'
  map.allocate_room '/allocate',:controller => 'rooms',:action => 'allocate_rooms'
  map.allocate '/allocating',:controller => 'rooms',:action => 'allocate',:via => :post
  map.get_rooms '/get_rooms',:controller => 'rooms',:action => 'find_rooms'
  map.deallocate '/deallocate',:controller => 'rooms',:action => 'deallocate',:via => :post  
 
  map.resources :certificates
  map.resources :bus_settings
  

  map.resources :hostels do |hostel|
    hostel.resources :rooms
  end

  map.locate_user '/locate_user',:controller => 'routes',:action => 'locate_users'
  map.route_report '/route_search',:controller => 'routes',:action => 'search'
  map.report '/reports',:controller => 'routes',:action => 'reports'
  map.resources :routes

  map.resources :bus_services
  map.resources :journal
  
  
  map.resources :grading_levels
  map.resources :ranking_levels, :collection => {:create_ranking_level=>[:get,:post], :edit_ranking_level=>[:get,:post], :update_ranking_level=>[:get,:post], :delete_ranking_level=>[:get,:post], :ranking_level_cancel=>[:get,:post], :change_priority=>[:get,:post]}
  map.resources :class_designations
  #map.resources :exam_reports, :collection => {:course_reports_index=>[:get,:post], :batch_reports_index=>[:get,:post]}
  map.resources :class_timings
  map.resources :subjects
  map.resources :attendances, :collection=>{:daily_register=>:get,:subject_wise_register=>:get}
  map.resources :employee_attendances
  map.resources :attendance_reports
  map.resources :cce_exam_categories
  map.resources :assessment_scores,:collection=>{:exam_fa_groups=>[:get],:observation_groups=>[:get]}
  map.resources :cce_settings,:collection=>{:basic=>[:get],:scholastic=>[:get],:co_scholastic=>[:get]}
  map.resources :scheduled_jobs,:except => [:show]
  map.resources :fa_groups,:collection=>{:assign_fa_groups=>[:get,:post],:new_fa_criteria=>[:get,:post],:create_fa_criteria=>[:get,:post],:edit_fa_criteria=>[:get,:post],:update_fa_criteria=>[:get,:post],:destroy_fa_criteria=>[:post],:reorder=>[:get,:post]}
  #  do |fa|
  #    fa.resources  :fa_criterias
  #  end
  map.resources :fa_criterias do |fa|
    fa.resources :descriptive_indicators do |desc|
      desc.resources :assessment_tools
    end
  end
  map.resources :observations do |obs|
    obs.resources :descriptive_indicators do |desc|
      desc.resources :assessment_tools
    end
  end
  map.resources :observation_groups,:member=>{:new_observation=>[:get,:post],:create_observation=>[:get,:post],:edit_observation=>[:get,:post],:update_observation=>[:get,:post],:destroy_observation=>[:post],:reorder=>[:get,:post]},:collection=>{:assign_courses=>[:get,:post],:set_observation_group=>[:get,:post]}
  map.resources :cce_weightages,:member=>{:assign_courses=>[:get,:post]},:collection=>{:assign_weightages=>[:get,:post]}
  map.resources :cce_grade_sets, :member=>{:new_grade=>[:get,:post],:edit_grade=>[:get,:post],:update_grade=>[:get,:post],:destroy_grade=>[:post]}

  map.feed 'courses/manage_course', :controller => 'courses' ,:action=>'manage_course'
  map.feed 'courses/manage_batches', :controller => 'courses' ,:action=>'manage_batches'
  map.resources :courses, :has_many => :batches, :collection => {:grouped_batches=>[:get,:post],:create_batch_group=>[:get,:post],:edit_batch_group=>[:get,:post],:update_batch_group=>[:get,:post],:delete_batch_group=>[:get,:post]}

  map.resources :batches, :collection=>{:batches_ajax=>[:get]} do |batch|
    batch.resources :exam_groups
     batch.resources :homework_groups
    #batch.resources :additional_exam_groups
    batch.resources :elective_groups, :as => :electives
  end

  map.resources :exam_groups do |exam_group|
    exam_group.resources :exams, :member => { :save_scores => :post }
  end
 map.resources :homework_groups do |homework_group|
    homework_group.resources :homeworks, :member => { :save_scores => :post }
  end

#  map.resources :additional_exam_groups do |additional_exam_group|
#    additional_exam_group.resources :additional_exams , :member => { :save_additional_scores => :post }
#  end

  map.resources :timetables do |timetable|
    timetable.resources :timetable_entries
  end
  map.root :controller => 'user', :action => 'login'
  map.root :controller => 'user', :action => 'login1'

  map.fa_scores 'assessment_scores/exam/:exam_id/fa_group/:fa_group_id', :controller=>'assessment_scores',:action=>'fa_scores'
  map.observation_scores 'assessment_scores/batch/:batch_id/observation_group/:observation_group_id', :controller=>'assessment_scores',:action=>'observation_scores'
  map.scheduled_task 'scheduled_jobs/:job_object/:job_type',:controller => "scheduled_jobs",:action => "index"
  map.scheduled_task_object 'scheduled_jobs/:job_object',:controller => "scheduled_jobs",:action => "index"


  #map.connect 'parts/:number', :controller => 'inventory', :action => 'sho
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action' 
  map.connect ':controller/:action/:id/:id2'
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action/.:format'


end
