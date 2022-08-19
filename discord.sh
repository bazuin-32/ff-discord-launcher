#!/bin/bash

page="$(mktemp --suffix '.html')"

cat > "${page}" << EOF
<!DOCTYPE html>

<html>
  <body>
    <script>
      window.open("https://discord.com/app", "Discord", "popup=1,menubar=0,toolbar=0,location=0,status=0")

      window.close()
    </script>
  </body>
</html>
EOF

firefox --new-window "${page}"

sleep 5
rm "${page}"
