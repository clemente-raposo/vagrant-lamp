class { "apache":
    mpm_module => "prefork",
}

include apache::mod::php
include apache::mod::rewrite

apache::vhost { "local.website.dev":
    port     => "80",
    docroot  => "/vagrant",
    override => ["All"],
}