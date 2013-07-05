namespace :fedena_data_import do
  desc "Install Fedena Data Import Module"
  task :install do
    system "rsync --exclude=.svn -ruv vendor/plugins/fedena_data_import/db/migrate db"
    system "rsync --exclude=.svn -ruv vendor/plugins/fedena_data_import/public ."
  end
end
