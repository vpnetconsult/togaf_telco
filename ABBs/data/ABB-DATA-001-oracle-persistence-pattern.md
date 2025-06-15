## 1. File: ABBs/data/ABB-DATA-001-oracle-persistence-pattern.md

```markdown
# ABB-DATA-001: Oracle Database Persistence Pattern

## Metadata
```yaml
id: ABB-DATA-001
name: Oracle Database Persistence Pattern
type: ABB
classification: Foundation Building Block
domain: Data Architecture
version: 1.0
status: Approved
owner: Data Architecture Team
created: 2025-01-15
modified: 2025-01-15
tags: [oracle, persistence, database, dao]
```

### 2. **Overview Section**
```markdown
## Overview
This ABB defines the standard pattern for implementing data persistence using Oracle Database in enterprise applications. It provides guidelines for data access, transaction management, and performance optimization.
```

## 3. Architecture Diagram
```mermaid
graph TB
    subgraph Application_Layer
        S[Service Layer]
        TM[Transaction Manager]
    end
    
    subgraph Data_Access_Layer
        DAO[DAO Interface]
        IMPL[DAO Implementation]
        QF[Query Factory]
    end
    
    subgraph Persistence_Layer
        CP[Connection Pool]
        ORM[MyBatis/JPA]
    end
    
    subgraph Database_Layer
        DB[(Oracle Database)]
        SP[Stored Procedures]
    end
    
    S --> TM
    TM --> DAO
    DAO --> IMPL
    IMPL --> QF
    IMPL --> ORM
    ORM --> CP
    CP --> DB
    DB --> SP
    
    style DAO fill:#e1f5fe
    style DB fill:#fff3e0
