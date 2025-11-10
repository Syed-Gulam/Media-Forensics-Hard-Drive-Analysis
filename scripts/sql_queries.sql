-- Sample SQL queries for Autopsy-exported sqlite artifacts

-- List deleted files (example table name, may vary by Autopsy exports)
SELECT name, path, size, meta_flags FROM t_files WHERE meta_flags LIKE '%Deleted%';

-- Top visited URLs (if browser history extracted)
SELECT url, visit_count FROM browser_history ORDER BY visit_count DESC LIMIT 50;
