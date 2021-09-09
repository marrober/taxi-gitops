# Webhook for the application code - identified by the environment and service definitions in the pipeline.yaml manifest file.
kam webhook create --git-host-access-token $(oc get secret/git-host-access-token -o=custom-columns=NAME:.data.token --no-headers | base64 -d) --env-name dev --service-name taxi
# Webhook for the cicd pipeline process - identified by the cicd tag in the pipeline.yaml manifest file.
kam webhook create --git-host-access-token $(oc get secret/git-host-access-token -o=custom-columns=NAME:.data.token --no-headers | base64 -d) --cicd
