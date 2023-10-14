SELECT count(Id) as Total_Employee FROM ClientMaster

SELECT TOP 5 C.ClientName , COUNT(*) FROM  ClientMaster AS C 
INNER JOIN EMediaROMaster AS EM ON C.Id= EM.FKClientId 
GROUP BY C.ClientName ORDER BY COUNT(*) DESC

SELECT TOP 5 C.ClientName , COUNT(*) as MAXAD FROM  ClientMaster AS C 
INNER JOIN PMediaROMaster AS PM ON C.Id= PM.FKClientId 
GROUP BY C.ClientName ORDER BY COUNT(*) DESC

SELECT DISTINCT (BroadcastCenters), COUNT(BroadcastCenters) AS AD_AOUNT
FROM  EMediaROMaster GROUP BY BroadcastCenters ORDER BY AD_AOUNT DESC


SELECT DISTINCT (Status), SUM(TotalCharges) FROM  EMediaROMaster GROUP BY Status
SELECT DISTINCT (Status), SUM (TotalAmount) FROM  PMediaROMaster GROUP BY Status

SELECT DISTINCT(BroadcastCenters), SUM(TotalCharges) INCOME FROM  EMediaROMaster GROUP BY  BroadcastCenters ORDER BY INCOME DESC

SELECT DISTINCT(BroadcastCenters), SUM(TotalCharges) INCOME FROM  EMediaROMaster GROUP BY  BroadcastCenters ORDER BY INCOME DESC

SELECT PM.PaperName, SUM(M.TotalAmount) AS  AMOUNT FROM PaperMaster AS PM 
INNER JOIN  PMediaROMaster AS M ON PM.Id = M.FKPaperId GROUP BY PM.PaperName ORDER BY AMOUNT DESC

SELECT BroadcastCenters,  COUNT(BroadcastCenters) FROM EMediaROMaster GROUP BY  BroadcastCenters
SELECT BroadcastCenters,  COUNT(BroadcastCenters) FROM EMediaROMaster GROUP BY  BroadcastCenteSELECT 

 SELECT  YEAR(RODate) , SUM(TotalCharges) AS TCharge FROM EMediaROMaster 
 GROUP BY YEAR(RODate) ORDER BY TCharge DESC 

 SELECT SUM(ComissionAmount) FROM EMediaROMaster

 SELECT YEAR(RODate) as YEARS, SUM(CGSTAmount + SGSTAmount+ IGSTAmount) AS GST 
 FROM EMediaROMaster GROUP BY YEAR(RODate)

 SELECT YEAR(RODate) as YEARS, SUM(GSTAmount) FROM PMediaROMaster GROUP BY YEAR(RODate)

SELECT TOP 30 C.ClientName , SUM(PM.NoOfDays) AS DAYS FROM ClientMaster AS C 
INNER JOIN PMediaROMaster AS PM ON C.Id = PM.FKClientId GROUP BY C.ClientName
ORDER BY DAYS DESC

SELECT   p.PublicationName, count(e.FKPublicationId) AS counts_ad FROM PublicationMaster AS p
inner join EMediaROMaster AS e ON p.Id = e.FKPublicationId
GROUP BY p.PublicationName ORDER BY counts_ad DESC
 
SELECT YEAR(RODate) AS YEARS , COUNT(*) AS NUMofAD FROM EMediaROMaster 
GROUP BY YEAR(RODate)


 SELECT P.PaperName, COUNT(PM.FKPaperId)AS AD_COUNTS FROM PaperMaster AS P  
 INNER JOIN  PMediaROMaster AS PM ON P.Id = PM.FKPaperId 
 GROUP BY P.PaperName ORDER BY AD_COUNTS DESC

 SELECT P.PaperName, MONTH(PM.RODate) AS MonthNo, COUNT(PM.FKPaperId) AS Ad_counts FROM PaperMaster  AS P
INNER JOIN PMediaROMaster AS PM ON P.Id = PM.FKPaperId 
WHERE RoDate BETWEEN '01 Apr 2022' AND '31 Mar 2023' 
GROUP BY P.PaperName, MONTH(PM.RODate) 
 ORDER BY  Ad_counts DESC 

 
 SELECT * FROM EMediaROMaster AS EMR INNER JOIN ClientMaster AS CM ON CM.Id = EMR.FKClientId 
 INNER JOIN PublicationMaster AS PM ON PM.id = EMR.FKPublicationId


 SELECT * FROM PMediaROMaster AS PMR INNER JOIN ClientMaster AS CM ON CM.Id = PMR.FKClientId 
 INNER JOIN PaperMaster AS PM ON PM.Id = PMR.FKPaperId