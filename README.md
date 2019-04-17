Started working on dummy pipeline that will demonstrate optimized build performance. 

Strategies include the following (still in progress):
a) Testing Concourse settings ("load_base"/"cache" and "cache-tag"/etc);
b) Testing with multistage Docker builds (https://docs.docker.com/develop/develop-images/multistage-build/);
c) Testing with properly versioned docker tags (i.e. without ":latest");
d) Other (research is still ongoing)

All repos are public.

Steps to deploy the build pipeline:

> cd <YOUR_CLONED_DIRECTORY>
> fly -t <YOUR_TARGET_ALIAS> sp -p navynoble -c pipeline.yml -l creds.yml
> fly -t <YOUR_TARGET_ALIAS> up -p navynoble
> fly -t <YOUR_TARGET_ALIAS> watch -j navynoble/optimized_image_build
