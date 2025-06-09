#!/bin/bash

# CONFIGURACIÓN ============
NAMESPACE="ingress-nginx"
SERVICE_NAME="ingress-nginx-controller"
DOMAIN="javierum.com"
SUBDOMAIN="argocd"
API_KEY="8V5uUjjLz9mz"  # ← Reemplaza con tu API Key de DonDominio
API_URL="https://api.dondominio.com/v2/dns"
TTL=3600
# ===========================

# 1. Obtener hostname del LoadBalancer
echo "🔍 Obteniendo dirección pública del Ingress NGINX Controller..."

HOSTNAME=$(kubectl get svc $SERVICE_NAME -n $NAMESPACE -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')

if [[ -z "$HOSTNAME" ]]; then
  echo "❌ Error: No se encontró hostname en el servicio. El LoadBalancer puede no estar listo."
  exit 1
fi
echo $HOSTNAME
nslookup $HOSTNAME
