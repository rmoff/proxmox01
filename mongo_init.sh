HOSTNAME=`hostname`

mongo localhost:27017/ace <<-EOF
    rs.initiate({
        _id: "rs0",
        members: [ { _id: 0, host: "${HOSTNAME}:27017" } ]
    });
EOF

mongorestore unifi-mongodump/
