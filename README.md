# Pixel & Process Helm Charts

Helm charts for internal and customer-facing applications.

## Usage

```bash
helm repo add pixelandprocess https://helm.pixelandprocess.de
helm repo update
helm search repo pixelandprocess/
```

## Available Charts

| Chart | Description |
|-------|-------------|
| nextjs | Generic Next.js application deployment |
| laravel | Laravel application with queue workers, scheduler, Redis |

## Contributing

1. Add or modify charts in `charts/`
2. Bump the version in `Chart.yaml`
3. Push to `main` — GitHub Actions will package and publish automatically
