-- schema/artifacts.sql
CREATE TABLE artifacts (
    id VARCHAR(50) PRIMARY KEY,
    type VARCHAR(10) NOT NULL,
    name VARCHAR(200) NOT NULL,
    version VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,
    content TEXT,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    updated_by VARCHAR(100)
);

CREATE TABLE artifact_relationships (
    id SERIAL PRIMARY KEY,
    source_id VARCHAR(50) REFERENCES artifacts(id),
    target_id VARCHAR(50) REFERENCES artifacts(id),
    relationship_type VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_artifacts_type ON artifacts(type);
CREATE INDEX idx_artifacts_status ON artifacts(status);
