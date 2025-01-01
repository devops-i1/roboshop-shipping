source /data/secrets

if [ -z "$CART_ENDPOINT" ]; then
  echo Environment Variable CART_ENDPOINT is mising
  exit 1
fi
if [ -z "$DB_HOST" ]; then
  echo Environment Variable DB_HOST is mising
  exit 1
fi

java -javaagent:newrelic/newrelic.jar -jar /app/shipping.jar


