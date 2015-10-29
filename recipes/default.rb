include_recipe node['libffi']['package_manager']


node['libffi']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

if node['libffi']['install_devel'] == true
  node['libffi']['devel_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
