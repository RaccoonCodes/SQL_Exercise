USE AP;

SELECT VendorName,InvoiceNumber,InvoiceDate,InvoiceTotal
	FROM Vendors JOIN Invoices AS [FIRST_SET]
	ON Vendors.VendorID = [FIRST_SET].VendorID
	WHERE InvoiceDate = (
		SELECT MIN(InvoiceDate)
		FROM Invoices AS [SECOND_SET]
		WHERE [SECOND_SET].VendorID= [FIRST_SET].VendorID
		)
ORDER BY VendorName;


--VendorName                                         InvoiceNumber                                      InvoiceDate InvoiceTotal
---------------------------------------------------- -------------------------------------------------- ----------- ---------------------
--Abbey Office Furnishings                           203339-13                                          2020-01-05  17.50
--Bertelsmann Industry Svcs. Inc                     509786                                             2019-12-18  6940.25
--Blue Cross                                         547481328                                          2019-12-03  224.00
--Cahners Publishing Company                         587056                                             2019-12-28  2184.50
--Cardinal Business Media, Inc.                      133560                                             2019-12-22  175.00
--Coffee Break Service                               109596                                             2019-12-24  41.80
--Compuserve                                         21-4748363                                         2019-11-03  9.95
--Computerworld                                      367447                                             2019-12-11  2433.00
--Data Reproductions Corp                            40318                                              2019-12-01  21842.00
--Dean Witter Reynolds                               75C-90227                                          2019-12-11  1367.50
--Digital Dreamworks                                 P02-3772                                           2019-11-21  7125.34
--Dristas Groom & McCormick                          94007005                                           2019-11-23  220.00
--Edward Data Services                               972110                                             2019-11-15  207.78
--Evans Executone Inc                                125520-1                                           2019-10-24  95.00
--Federal Express Corporation                        263253241                                          2019-10-10  40.20
--Ford Motor Credit Company                          9982771                                            2020-01-24  503.20
--Franchise Tax Board                                RTR-72-3662-X                                      2019-11-25  1600.00
--Fresno County Tax Collector                        P02-88D77S7                                        2019-11-03  856.92
--Gostanian General Building                         121897                                             2019-11-19  450.00
--IBM                                                QP58872                                            2019-11-07  116.54
--Ingram                                             31359783                                           2019-12-03  1575.00
--Malloy Lithographing Inc                           0-2058                                             2019-11-28  37966.19
--Pacific Bell                                       111-92R-10096                                      2019-10-30  16.33
--Pollstar                                           77290                                              2019-11-13  1750.00
--Postmaster                                         CBM9920-M-T77109                                   2019-12-23  290.00
--Reiter's Scientific & Pro Books                    C73-24                                             2020-01-19  600.00
--Roadway Package System, Inc                        25022117                                           2019-11-01  6.00
--Suburban Propane                                   111897                                             2020-01-15  16.62
--United Parcel Service                              989319-457                                         2019-10-08  3813.33
--Wakefield Co                                       97-1024A                                           2020-01-20  356.48
--Wang Laboratories, Inc.                            MABO1489                                           2019-12-21  936.93
--Wells Fargo Bank                                   I77271-O01                                         2019-10-26  662.00
--Yesmed, Inc                                        10843                                              2019-11-11  4901.26
--Zylka Design                                       97/488                                             2019-10-24  601.95