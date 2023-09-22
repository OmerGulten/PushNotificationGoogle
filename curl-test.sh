#!/bin/bash
SERVER_KEY='AAAAqvcqYeY:APA91bHsWa7IO93uZgUIUzovCFWSTeNCwaDigDGnwejS51-pGXc823DTRzIFBW9wKST-pxK5aEUa6ZqxgY5kAs9ZCiso5n1QP2VsnCrXaEEJoyQELGfdBrrvYGlGT8gpnKiieg7nETA5'
DEVICE_REG_TOKEN='AAAAqvcqYeY:APA91bHsWa7IO93uZgUIUzovCFWSTeNCwaDigDGnwejS51-pGXc823DTRzIFBW9wKST-pxK5aEUa6ZqxgY5kAs9ZCiso5n1QP2VsnCrXaEEJoyQELGfdBrrvYGlGT8gpnKiieg7nETA5'

CMD=$(cat <<END
curl -X POST -H "Authorization: key=$SERVER_KEY" -H "Content-Type: application/json"
   -d '{
  "data": {
    "notification": {
        "title": "FCM Message Title",
        "body": "FCM Message Body",
        "icon": "/kalfa.png",
    }
  },
  "to": "$DEVICE_REG_TOKEN"
}' https://fcm.googleapis.com/fcm/send
END
)

echo $CMD && eval $CMD