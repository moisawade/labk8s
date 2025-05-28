# Exécuter les manifest
oc apply -f manifests/deployment.yaml
oc apply -f manifests/service.yaml
oc apply -f manifests/route.yaml

# Vérifie la route
oc get route app_name

# Vérifie le déploiement
oc rollout status deployment/app_name

# créer le ConfigMap associé
oc create configmap app-config --from-literal=MESSAGE="Bienvenue sur app_name"

# Vérifier le HPA
oc get hpa


# Simuler le charge de trafic
# Dans un pod ou sur ta machine :
hey -z 1m -c 20 http://<URL-de-ton-app>



