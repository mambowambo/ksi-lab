# 1) Sicherstellen, dass wir auf docker-desktop arbeiten
kubectl config use-context docker-desktop

# 2) Namespace argocd erstellen (idempotent durch apply)
kubectl create ns argocd --dry-run=client -o yaml | kubectl apply -f -

# 3) Helm Repo hinzufügen (nur falls noch nicht vorhanden)
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

# 4) Argo CD installieren/aktualisieren anhand deiner values.yaml
helm upgrade --install argocd argo/argo-cd -n argocd -f cncf-lab/cluster/argocd/values.yaml

# 5) Root-App anwenden (startet App-of-Apps)
kubectl apply -n argocd -f cncf-lab/cluster/platform-root.yaml

Write-Host ""
Write-Host "✅ Bootstrap done."
Write-Host "Argo UI:  kubectl -n argocd port-forward svc/argocd-server 8080:80"
Write-Host "Password: kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath=""{.data.password}"" | base64 -d; echo"