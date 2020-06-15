module "db" {
  source        = "../modules"
  subnetgroup   = "Subnet_Id"
  engine        = "databasetype"
  engineversion = "dbVersion"
  storage       = "storagesize"
  name          = "dbname"
  instanceclass = "dbtype"
}