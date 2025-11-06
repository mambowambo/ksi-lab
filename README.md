# ksi-lab

# 🧩 CNCF Lab – Docker Desktop GitOps Playground

Dieses Repository stellt eine **komplette CNCF-Testumgebung** auf Basis von **Docker Desktop Kubernetes** bereit.  
Es kombiniert **GitOps mit Argo CD**, **Observability mit Prometheus / Grafana / Loki**,  
sowie Security-, Registry- und Policy-Komponenten wie **Kyverno**, **Keycloak** und **Harbor**.

---

## 🚀 Ziele

- Aufbau einer reproduzierbaren, Git-basierten Kubernetes-Laborumgebung  
- Kennenlernen zentraler CNCF-Tools (Monitoring, GitOps, Policies, Security)  
- Basis für Tests, Workshops oder Prototypen mit realistischen Komponenten  

---

## 🧱 Architekturüberblick

| Kategorie | Tool | Zweck |
|------------|------|-------|
| **GitOps** | Argo CD | Steuerung aller Deployments über Git |
| **Ingress** | ingress-nginx | Routing von `*.lab.local`-Hosts |
| **Monitoring** | Prometheus + Grafana | Metriken und Dashboards |
| **Logging** | Loki + Promtail | Zentrale Log-Aggregation |
| **Security** | Kyverno + Policies | Policy Enforcement |
| **Identity** | Keycloak | Auth / SSO (optional) |
| **Registry** | Harbor | Container-Registry (optional) |
| **Database** | PostgreSQL (Bitnami) | Datenbank für Test-Apps |
| **Demo** | Hello-World | Beispiel-App inkl. Ingress |