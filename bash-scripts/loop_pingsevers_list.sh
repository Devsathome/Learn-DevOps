# Let's define a list of servers to check
SERVERS="google.com github.com amazon.com"

echo "--- Pinging Servers ---"
for srv in $SERVERS; do
  echo "Pinging ${srv}..."
  # ping -c 1 sends only one packet
  ping -c 1 "${srv}" > /dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    echo "Result: ${srv} is REACHABLE."
  else
    echo "Result: ${srv} is UNREACHABLE."
  fi
  echo "-----------------------"
done
