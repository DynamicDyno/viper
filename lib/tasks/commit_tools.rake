#encoding: UTF-8

desc 'commit all changes'
task :commit_all, [:comment] do |t, args|
  sh "git add -A"
  sh "git commit -am '#{args.comment}'"
  sh "git push origin master"
end

desc 'lints scss files and commits all changes'
task :commit, [:comment] do |t, args|
  puts "### linting scss ###"
  Rake::Task["lint_scss"].execute
  puts "### finished linting scss ###"
  puts ""

  puts "### linting ruby ###"
  Rake::Task["lint_ruby"].execute
  puts "### finished linting ruby ###"
  puts ""

  puts "### linting javascript ###"
  Rake::Task["jshint"].execute
  puts "### finished linting javascript ###"
  puts ""

  puts "### optimizing images ###"
  Rake::Task["optimize_images_no_jpegmini"].execute
  puts "### finished optimizing images ###"
  puts ""

  puts "### committing changes ###"
  Rake::Task["commit_all"].execute(args)
  puts "### finished committing changes ###"
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
