resource "aws_db_instance" "db" {
  allocated_storage       = var.storage
  storage_type            = var.storagetype
  engine                  = var.engine
  engine_version          = var.engineversion
  instance_class          = var.instanceclass # use micro if you want to use the free tier
  identifier              = var.identifier
  name                    = var.name
  username                = var.username # username
  password                = var.password # password
  db_subnet_group_name    = var.subnetgroup
  parameter_group_name    = var.parametergroup
  availability_zone       = var.azone # prefered AZ 
  multi_az                = "false"        # set to true to have high availability: 2 instances synchronized with each other
    backup_retention_period = 30   # how long we are going to keep your backups 
  skip_final_snapshot     = true # skip final snapshot when doing terraform destroy
   vpc_security_group_ids  = [
