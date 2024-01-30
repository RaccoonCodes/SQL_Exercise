USE AP

SELECT VendorName, Invoices.InvoiceID, InvoiceSequence,InvoiceLineItemAmount
	FROM InvoiceLineItems 
	JOIN Invoices
	ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
	JOIN Vendors
	ON Invoices.VendorID = Vendors.VendorID
	WHERE Invoices.InvoiceID IN (
		SELECT InvoiceID
		FROM InvoiceLineItems
		WHERE InvoiceSequence > 1
		)

--		VendorName                                         InvoiceID   InvoiceSequence InvoiceLineItemAmount
---------------------------------------------------- ----------- --------------- ---------------------
--Wells Fargo Bank                                   12          1               50.00
--Wells Fargo Bank                                   12          2               75.60
--Wells Fargo Bank                                   12          3               58.40
--Wells Fargo Bank                                   12          4               478.00
--Zylka Design                                       78          1               1197.00
--Zylka Design                                       78          2               765.13
