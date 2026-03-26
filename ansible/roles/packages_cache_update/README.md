packages_cache_update
=====================

Updates package manager cache.
This role ignores `meta__run_package_cache_update` variable.

How to use it: just add the role at the begining of the playbook.
To make it update the cache and just don't care about it later in
other roles.

### supported platforms
- Amazon Linux 2023
- CentOS 7
- Debian 13
