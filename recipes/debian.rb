include_recipe "apt"

apt_repository "newrelic" do
  uri "http://apt.newrelic.com/debian/"
  distribution "newrelic"
  components [ "non-free" ]
  #keyserver 'pgp.mit.edu'
  key node[:newrelic][:gpg_key_url]
  action :add
end

package "newrelic-sysmond" do
  options "--allow-unauthenticated"
  action :upgrade
end
