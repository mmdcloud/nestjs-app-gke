PROJECT_ID=river-clover-404404

gcloud artifacts repositories create nestjs-app --repository-format=docker --location=us-central1 --description="Docker repository"

gcloud container clusters create-auto staging --region us-central1 --project=$PROJECT_ID    
    
gcloud container clusters create-auto production --region us-central1 --project=$PROJECT_ID    

gcloud deploy apply --file=clouddeploy.yaml --region us-central1 --project=$PROJECT_ID         
