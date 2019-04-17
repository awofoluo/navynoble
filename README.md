## OPTIMIZING PIPELINE PERFORMANCE

Started working on dummy pipeline that will demonstrate optimized build performance. 

Strategies include the following (still in progress):

+ Testing Concourse settings (**load_base**, **cache/cache-tag**, etc);
+ Testing with [multistage Docker builds](https://docs.docker.com/develop/develop-images/multistage-build/);
+ Testing with properly versioned docker tags (i.e. instead of **:latest**)^1^;
+ Other (research is still ongoing)

^1^: might not necessarily improve performance

Steps to deploy the build pipeline:

```
> cd <YOUR_CLONED_DIRECTORY>
> fly -t <YOUR_TARGET_ALIAS> sp -p navynoble -c pipeline.yml -l creds.yml
> fly -t <YOUR_TARGET_ALIAS> up -p navynoble
> fly -t <YOUR_TARGET_ALIAS> watch -j navynoble/optimized_image_build
```
