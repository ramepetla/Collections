PROJECT=project
PROJECT_NUMBER=1343214123423

# GKE
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:service-$PROJECT_NUMBER@container-engine-robot.iam.gserviceaccount.com --role=roles/container.serviceAgent
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:service-$PROJECT_NUMBER@containerregistry.iam.gserviceaccount.com --role=roles/editor
# Compute
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:$PROJECT_NUMBER-compute@developer.gserviceaccount.com --role=roles/editor
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:service-$PROJECT_NUMBER@compute-system.iam.gserviceaccount.com --role=roles/compute.serviceAgent
# APIs
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:$PROJECT_NUMBER@cloudservices.gserviceaccount.com --role=roles/editor
# Cloud Build
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:$PROJECT_NUMBER@cloudbuild.gserviceaccount.com --role=roles/cloudbuild.builds.builder
# App Engine
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:$PROJECT@appspot.gserviceaccount.com --role=roles/editor
gcloud projects add-iam-policy-binding $PROJECT --member=serviceAccount:service-$PROJECT_NUMBER@gae-api-prod.google.com.iam.gserviceaccount.com --role=roles/appengineflex.serviceAgent
