# ABB-APP-001: Service Consumer-Provider Integration Pattern

## Metadata
```yaml
id: ABB-APP-001
name: Service Consumer-Provider Integration Pattern
type: ABB
classification: Architecture Building Block (ABB)
domain: Application Architecture
version: 1.0
status: Approved
owner: Enterprise Architecture Team
created: 2025-01-15
modified: 2025-01-15
tags: [integration, service-pattern, consumer-provider]
```
## Relationships
```yaml
relationships:
  realized_by:
    - SBB-INT-001  # Dubbo RPC Implementation
  uses_technologies:
    - TBB-TECH-001  # Dubbo Framework
    - TBB-INFRA-001  # Zookeeper
  implemented_by:
    - drm-web-product  # Consumer Application
