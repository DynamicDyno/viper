#encoding: UTF-8

desc 'lints scss'
task :lint_scss do
  sh "scss-lint app/assets/stylesheets/ -e 'app/assets/stylesheets/application.css'"
end

desc 'commit all changes'
task :commit_all, [:comment] do |t, arghash|
  sh "git add -A"
  sh "git commit -am '#{arghash.comment}'"
end

desc 'lints scss files and commits all changes'
task :commit => [:lint_scss, :commit_all] do

end