require "jekyll"
require "tmpdir"

# Change your GitHub reponame
GITHUB_REPONAME = "heatherjc07/heatherjc07.github.com"

desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end


desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
    tmp = Dir.mktmpdir nil, './tmp'
    cp_r "_site/.", tmp
    Dir.chdir tmp
    system "git init"
    system "git add ."
    message = "Site_updated"
    system "git commit -m #{message.shellescape}"
    system "git remote add origin https://github.com/#{GITHUB_REPONAME}.git"
    system "git push origin master --force"
end

