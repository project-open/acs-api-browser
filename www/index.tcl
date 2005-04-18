ad_page_contract {
    
    Offers links to other pages, and lets the user type the name of a specific procedure.
    
    @author Jon Salz (jsalz@mit.edu)
    @author Lars Pind (lars@pinds.com)
    @cvs-id $Id$
} {
} -properties {
    title:onevalue
    context:onevalue
    installed_packages:multirow
    disabled_packages:multirow
    uninstalled_packages:multirow
}

set title "API Browser"
set context [list]

db_multirow installed_packages installed_packages_select {
    select version_id, pretty_name, version_name
      from apm_package_version_info
     where installed_p = 't'
       and enabled_p = 't'
  order by upper(pretty_name)
}

db_multirow disabled_packages disabled_packages_select {
    select version_id, pretty_name, version_name
      from apm_package_version_info
     where installed_p = 't'
       and enabled_p = 'f'
  order by upper(pretty_name)
}

db_multirow uninstalled_packages uninstalled_packages_select {
    select version_id, pretty_name, version_name
      from apm_package_version_info
     where installed_p = 'f'
       and enabled_p = 'f'
  order by upper(pretty_name)
}

