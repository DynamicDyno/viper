#encoding: UTF-8

desc 'lints scss'
task :lint_scss do
  sh "scss-lint app/assets/stylesheets/ -e 'app/assets/stylesheets/application.css'"
end

task :commit_all, [:comment] do |t, comment|
  sh "git add -A"
  sh "git commit -am #{comment}"
end
