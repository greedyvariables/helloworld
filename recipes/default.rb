

log "starting to run the recipe"

log "#{node[:helloworld][:content]}"

file node[:helloworld][:file] do
  content node[:helloworld][:content]
end
