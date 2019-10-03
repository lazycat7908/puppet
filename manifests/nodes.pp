# node 'node1.example.com' {
#     include sudo
#     package { 'vim-enhanced':ensure => present }
# }

node 'puppet.example.com' {
}

node 'mail.example.com' inherits base {
}

node 'db.example.com' {
}

node 'web.example.com' {
}

node default {
    include defaultclass
}

node base {
    include sudo,mailx
}
