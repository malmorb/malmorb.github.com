desc "Publish"
task :publish do
  unless ENV["RUBYOPT"].to_s.include?("logger")
    abort "Oh, I could not see a workaround RUBYOPT=-rlogger on the command line. See the README if stuff does not work."
  end
  # Delete the old build
  FileUtils.rm_r('build') if File.exist?('build')

  # Build the website
  sh "middleman build"

  # Add the domain
  File.open("build/CNAME", 'w+') do |f|
    f.puts("malmorb.se")
  end

  # We don't wan't github to think this is a jekyll page
  sh "touch build/.nojekyll"

  # Copy the README file
  sh "cp README.md build/"

  # Checkin the build in master branch
  ENV['GIT_DIR'] = File.expand_path(`git rev-parse --git-dir`.chomp)
  old_sha = `git rev-parse refs/remotes/origin/master`.chomp
  Dir.chdir('build') do
    ENV['GIT_INDEX_FILE'] = gif = '/tmp/dev.gh.i'
    ENV['GIT_WORK_TREE'] = Dir.pwd
    File.unlink(gif) if File.file?(gif)
    `git add -A`
    tsha = `git write-tree`.strip
    puts "Created tree   #{tsha}"
    if old_sha.size == 40
      csha = `echo 'boom' | git commit-tree #{tsha} -p #{old_sha}`.strip
    else
      csha = `echo 'boom' | git commit-tree #{tsha}`.strip
    end
    puts "Created commit #{csha}"
    puts `git show #{csha} --stat`
    puts "Updating master from #{old_sha}"
    `git update-ref refs/heads/master #{csha}`
    `git push origin master`
  end

  # Delete the old build, again
  FileUtils.rm_r('build') if File.exist?('build')
end
