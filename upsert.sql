# https://myadventuresincoding.wordpress.com/2016/01/05/sql-server-how-to-write-an-upsert-using-merge/
MERGE dbo.ClientData AS [Target]
USING (SELECT 12345 AS clientId) AS [Source] 
ON [Target].clientId = [Source].clientId
WHEN MATCHED THEN
  UPDATE SET [Target].data='Update', [Target].updatedDateUtc = GetUtcDate()
WHEN NOT MATCHED THEN
  INSERT (clientId, data) VALUES ([Source].clientId, 'Insert');
