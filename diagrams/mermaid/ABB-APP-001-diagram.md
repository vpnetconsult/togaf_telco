```mermaid
%%{init: {'theme':'base', 'themeVariables': { 'primaryColor':'#e1f5fe', 'primaryBorderColor':'#01579b', 'primaryTextColor':'#000', 'lineColor':'#01579b', 'secondaryColor':'#fff3e0', 'tertiaryColor':'#e1e4ff'}}}%%
graph TB
    subgraph Consumer_drm_web_product
        UFS[UosFlowEntryServiceImpl<br/>Entry Point]
        PS[PotService4NgportalImpl<br/>Dubbo Consumer<br/>Load Balancing: RoundRobin]
    end

    subgraph Provider_ngportal_web_product_r92
        SOS[StaffOrgServiceImpl<br/>StaffOrgService Provider<br/>Thread Pool: 200]
        US[UserServiceImpl<br/>UserService Provider<br/>Thread Pool: 200]
        CC[(Oracle CC Database<br/>Connection Pool: 100)]
    end

    subgraph Service_Registry
        ZK[Zookeeper Cluster<br/>3 Nodes]
    end

    UFS -->|Local Call| PS
    PS -->|RPC: queryStaffUserByStaffId<br/>Timeout: 3000ms| SOS
    PS -->|RPC: queryRoleListByUserId<br/>Timeout: 3000ms| US

    PS -.->|Subscribe| ZK
    SOS -.->|Register| ZK
    US -.->|Register| ZK

    SOS -->|JDBC| CC
    US -->|JDBC| CC

    style PS fill:#e1f5fe
    style SOS fill:#fff3e0
    style US fill:#fff3e0
    style CC fill:#e1e4ff
    style ZK fill:#f9f
