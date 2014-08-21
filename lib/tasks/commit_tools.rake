#encoding: UTF-8

desc 'commit all changes'
task :commit_all, [:comment] do |t, args|
  sh "git add -A"
  sh "git commit -am '#{args.comment}'"
  sh "git push origin master"
end

desc 'lints scss files and commits all changes'
task :commit, [:comment] do |t, args|
  Rake::Task["lint_scss"].execute
  Rake::Task["lint_ruby"].execute
  Rake::Task["jshint"].execute
  Rake::Task["optimize_images_no_jpegmini"].execute
  Rake::Task["commit_all"].execute(args)
end

desc 'lints scss'
task :lint_scss do
  sh "scss-lint app/assets/stylesheets/ -c 'config/scss-lint.yml'"
end

desc 'lints ruby'
task :lint_ruby do
  sh "rubocop ./ -c 'config/rubocop.yml'"
  puts "test"
end

desc 'optimize images'
task :optimize_images do
  sh "imageoptim -a -j -q -d #{Rails.root}/app/assets/images/"
end

desc 'optimize images, no jpegmini'
task :optimize_images_no_jpegmini do
  sh "imageoptim -a -q -d #{Rails.root}/app/assets/images/"
end
