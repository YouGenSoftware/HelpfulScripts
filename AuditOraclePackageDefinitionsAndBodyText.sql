--Get list of package definitions and body text. Replace the <owner> text with the Schema you want to audit
SELECT
    LISTAGG(TEXT, ' ') WITHIN GROUP(
    ORDER BY
        LINE
    ) PackageDefinition
FROM
    dba_source
WHERE OWNER = '<owner>'
    AND TYPE = 'PACKAGE'
GROUP BY
    NAME
ORDER  BY
NAME;

SELECT
    LISTAGG(TEXT, ' ') WITHIN GROUP(
    ORDER BY
        LINE
    ) PackageDefinition
FROM
    dba_source
WHERE OWNER = '<owner>'
    AND TYPE = 'PACKAGE BODY'
GROUP BY
    NAME
ORDER  BY
NAME;
