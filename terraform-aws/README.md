### install aws cli

```
apt install awscli
```

### install Terraform

```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```

```
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```

```
sudo apt install terraform
```

### validate

```
terraform version
terraform init
terraform plan
terraform validate
```

### deploy

```
terraform apply
```

### destroy

```
terraform destroy 
terraform destroy --target resource.name
```
