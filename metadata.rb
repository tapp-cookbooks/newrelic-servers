maintainer "Besol Soluciones S.L."
maintainer_email "contacto@besol.es"
license          "Apache 2.0"
description      "Installs/Configures newrelic"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.12"

%w(windows apt).each do |recipe_suggests|
  suggests recipe_suggests
end

%w{ ubuntu debian centos redhat scientific windows}.each do |os|
  supports os
end

