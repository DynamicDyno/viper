#encoding: UTF-8

desc 'lints scss'
task :lint_scss do
  sh "scss-lint app/assets/stylesheets/ -e 'app/assets/stylesheets/application.css'"
end

desc 'commit all changes'
task :commit_all, [:comment] do |t, args|
  sh "git add -A"
  sh "git commit -am '#{args.comment}'"
end

desc 'lints scss files and commits all changes'
task :commit, [:comment] do |t, args|
  Rake::Task["lint_scss"].execute
  Rake::Task["commit_all"].execute(args)
end