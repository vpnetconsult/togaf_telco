# ABB-APP-002: Service Consumer-Provider Integration Pattern

## Metadata
```yaml
id: ABB-APP-002
name: Service Consumer-Provider Integration Pattern
type: ABB
classification: Architecture Building Block (ABB)
domain: Application Architecture
version: 1.0
status: Draft
owner: Enterprise Architecture Team
created: 2025-01-15
modified: 2025-01-15
tags: [integration, service-pattern, consumer-provider]
```
## Relationships
```yaml
relationships:
  realized_by:
    - SBB-INT-003  # Message Queue Implementation
  uses_technologies:
    - TBB-TECH-003  # ZMQ (ZTE Message Queue) Framework
    - TBB-INFRA-001  # Zookeeper
  implemented_by:
    - drm-web-product  # Consumer Application
  depends_on:
    - ABB-APP-002  # Service Contract Pattern [if exists]
    - ABB-SEC-001  # Security Pattern [if exists]
    - ABB-GOV-001  # Service Governance Pattern [if exists]
```

## Pattern Description
This pattern defines the logical architecture for service-based communication where:
- Service Providers expose business capabilities through well-defined interfaces
- Service Consumers invoke these capabilities through standardized contracts
- Service Registry enables dynamic discovery and binding

## Key Components
- **Service Provider**: Exposes business functionality
- **Service Consumer**: Invokes exposed services
- **Service Contract**: Defines the interface agreement
- **Service Registry**: Enables service discovery (optional)

## Quality Attributes
- Availability: Services must be discoverable and accessible
- Scalability: Support multiple providers and consumers
- Reliability: Handle failures gracefully
- Performance: Meet latency requirements

## Implementation Options
This pattern can be realized through various technologies:
- RPC-based: See SBB-INT-001 (Dubbo implementation)
- REST-based: See SBB-INT-002 (REST implementation) [if exists]
- Message-based: See SBB-INT-003 (Message Queue implementation) [if exists]

## Anti-Patterns
- Point-to-point integration without service registry
- Tight coupling between consumer and provider
- Synchronous calls for long-running operations

## Governance
- Service contracts must be versioned
- Breaking changes require governance approval
- Performance SLAs must be defined
