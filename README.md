# kontena-whoami

A simple app to show current instance number + ENV's, deployed on each node as a daemon.

```
bin/develop
```

```
bin/deploy dockerhuborg/image:tag yourkontenaloadbalancerservicename whoami.yourkontenaloadbalancer.com
```

## pls
 - docker-compose run can not have volumes .. https://github.com/docker/compose/issues/363
