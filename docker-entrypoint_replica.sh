echo "STOP SLAVE;" | "${mysql[@]}"
echo "CHANGE MASTER TO master_host='$MYSQL_MASTER_SERVICE_HOST', master_user='$MYSQL_REPLICATION_USER', master_password='$MYSQL_REPLICATION_PASSWORD' ;" | "${mysql[@]}"
echo "START SLAVE;" | "${mysql[@]}"