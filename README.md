oc patch configs.imageregistry.operator.openshift.io/cluster \
  --type merge \
  -p '{
    "spec": {
      "managementState": "Managed",
      "storage": {
        "emptyDir": {}
      }
    }
  }'
