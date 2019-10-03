class sudo {
    package { 'sudo':
        ensure => present,
    }

    if $operatingsystem == 'Ubuntu' {
        package { 'sudo-ldap':
            ensure => present,
            require => Package["sudo"],
        }
    }

    file { '/tmp/sudoers':
        owner => 'root',
        group => 'root',
        mode => 0440,
        source => "puppet://$puppetserver/modules/sudo/etc/sudoers",
        require => Package["sudo"],
    }
}
