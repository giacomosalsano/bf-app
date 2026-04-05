echo "------------------------------------------------"
echo "🚀 STARTING BEAUTY-FLOW (BF) INFRASTRUCTURE"
echo "------------------------------------------------"

echo "🔍 Step 1: Checking for Docker daemon..."
if ! docker info > /dev/null 2>&1; then
    echo "❌ Error: Docker is not running. Please start Docker Desktop."
    exit 1
fi

echo "📦 Step 2: Fetching/Updating PostgreSQL image..."
docker compose pull bf-db

echo "🔌 Step 3: Mapping ports 5432:5432 for Postgres..."
echo "💾 Step 4: Mounting persistent volume 'bf_db_data'..."

echo "⚡ Step 5: Spinning up the database container..."
docker compose up -d bf-db

echo "⏳ Step 6: Waiting for Database to be healthy..."
until [ "$(docker inspect -f {{.State.Health.Status}} bf-postgres-container)" == "healthy" ]; do
    printf "."
    sleep 1
done

echo -e "\n✅ DATABASE IS READY!"
echo "------------------------------------------------"