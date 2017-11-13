# BOSH release for kong

This BOSH release and deployment manifest deploy a cluster of kong.

## Usage

This repository includes base manifests and operator files. They can be used for initial deployments and subsequently used for updating your deployments:

```
export BOSH_ENVIRONMENT=<bosh-alias>
export BOSH_DEPLOYMENT=kong
git clone https://github.com/cloudfoundry-community/kong-boshrelease.git
bosh deploy kong-boshrelease/manifests/kong.yml
```

If your BOSH does not have Credhub/Config Server, then remember `--vars-store` to allow generation of passwords and certificates.

### Update

When new versions of `redis-boshrelease` are released the `manifests/redis.yml` file will be updated. This means you can easily `git pull` and `bosh deploy` to upgrade.

```
export BOSH_ENVIRONMENT=<bosh-alias>
export BOSH_DEPLOYMENT=kong
cd kong-boshrelease
git pull
cd -
bosh deploy kong-boshrelease/manifests/redis.yml
```
