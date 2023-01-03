require "aws-sdk-rds"

client = Aws::RDS::Client.new(region: "us-east-1")
client.stop_db_cluster(db_cluster_identifier: "byte-storm-labs-test-database-mysql-dbcluster-aokwp4zjg6rd")
# client.start_db_cluster(db_cluster_identifier: "byte-storm-labs-test-database-mysql-dbcluster-aokwp4zjg6rd")
