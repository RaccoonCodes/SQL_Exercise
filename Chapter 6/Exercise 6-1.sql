USE AP

SELECT VendorName
FROM Vendors
	WHERE VendorID IN (
		SELECT VendorID FROM Invoices
		)
ORDER BY VendorName;

--VendorName
----------------------------------------------------
--Abbey Office Furnishings
--Bertelsmann Industry Svcs. Inc
--Blue Cross
--Cahners Publishing Company
--Cardinal Business Media, Inc.
--Coffee Break Service
--Compuserve
--Computerworld
--Data Reproductions Corp
--Dean Witter Reynolds
--Digital Dreamworks
--Dristas Groom & McCormick
--Edward Data Services
--Evans Executone Inc
--Federal Express Corporation
--Ford Motor Credit Company
--Franchise Tax Board
--Fresno County Tax Collector
--Gostanian General Building
--IBM
--Ingram
--Malloy Lithographing Inc
--Pacific Bell
--Pollstar
--Postmaster
--Reiter's Scientific & Pro Books
--Roadway Package System, Inc
--Suburban Propane
--United Parcel Service
--Wakefield Co
--Wang Laboratories, Inc.
--Wells Fargo Bank
--Yesmed, Inc
--Zylka Design