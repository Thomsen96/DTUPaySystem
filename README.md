# DTU Pay System

The purpose of this repository is to enable local development of all the service in DTU pay with a complete docker-compose file that starts a Rabbit MQ service and all the other services that is needed. and also builds all the projects locally.

The repositories have been added to this repo with git submodules.

## Setup of git sub modules (One time thing)

``` bash
git submodule add -b main -f git@github.com:Webservices02267/RestService.git RestService

git submodule add -b main -f git@github.com:Webservices02267/TokenService.git TokenService

git submodule add -b master -f git@github.com:Webservices02267/PaymentMicroservice.git PaymentService
```

Keep all the submodules in attached HEAD

[https://dzone.com/articles/keeping-submodules-up-to-date-in-git](https://dzone.com/articles/keeping-submodules-up-to-date-in-git)

``` bash
cd <submodule_folder>
git branch --set-upstream-to=origin/main

cd <parent_repository>
./update.sh
```
