module "db" {
  source        = "../modules"
  subnetgroup   = "Subnet_Id"
  engine        = "databasetype"
  securitygroup = "sgids" 
  engineversion = "dbVersion"
  storage       = "storagesize"
  name          = "dbname"
  instanceclass = "dbtype"
  username      = "dbusername"
  password      = "dbuserpwd" 
}
