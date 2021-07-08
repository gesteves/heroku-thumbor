echo "Creating aws credentials file..."

mkdir -p ~/.aws
echo "[default]
aws_access_key_id=$AWS_ACCESS_KEY
aws_secret_access_key=$AWS_SECRET_KEY" > ~/.aws/credentials

echo "Start process in port $PORT"
thumbor -p $PORT
