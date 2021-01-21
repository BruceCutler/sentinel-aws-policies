module "tfplan-functions" {
  source = "modules/common_functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "modules/common_functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "modules/common_functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws_functions/aws-functions.sentinel"
}

policy "enforce-ecs-cluster-from-module-registry" {
  source = "./ecs/enforce-ecs-cluster-from-module-registry.sentinel"
  enforcement_level = "mandatory"
}