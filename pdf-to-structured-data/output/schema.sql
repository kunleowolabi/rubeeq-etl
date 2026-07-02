CREATE TABLE IF NOT EXISTS documents (
    id            VARCHAR PRIMARY KEY,
    document_type VARCHAR,
    confidence    VARCHAR,
    title         VARCHAR,
    date          DATE,
    language      VARCHAR,
    fields        JSON,
    source_file   VARCHAR,
    loaded_at     TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE IF NOT EXISTS line_items (
    id          INTEGER,
    document_id VARCHAR REFERENCES documents(id),
    position    INTEGER,
    data        JSON
);