class { "mysql": }
class { "mysql::php": }
class { "mysql::server":
    config_hash => {
        "root_password" => "root",
        "bind_address"  => "0.0.0.0",
    }
}

class mysql_setup {
    database { "website_db":
        charset => "utf8",
    }

    database_user { "website@%":
        password_hash => mysql_password("website"),
    }

    database_grant { "website@%/website_db":
        privileges => ["all"],
    }
}

include mysql_setup