case node['platform_family']
when 'rhel'
  default['libffi']['packages'] = %w{ libffi }
  default['libffi']['devel_packages'] = %w{ libffi-devel }
  default['libffi']['package_manager'] = 'yum'
when 'debian'
  default['libffi']['packages'] = %w{ libffi6 }
  default['libffi']['devel_packages'] = %w{ libffi-dev }
  default['libffi']['package_manager'] = 'apt'
else
  default['libffi']['packages'] = %w{ libffi }
  default['libffi']['devel_packages'] = %w{ libffi-devel }
  default['libffi']['package_manager'] = 'yum'
end

default['libffi']['install_devel'] = true
