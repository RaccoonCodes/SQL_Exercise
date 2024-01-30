USE AP;

WITH MaxInvoiceCTE AS ( 
	SELECT VendorID, MAX(InvoiceTotal) AS [Largest Unpaid]
	FROM Invoices
	WHERE InvoiceTotal - CreditTotal-PaymentTotal > 0
		GROUP BY VendorID
)

	SELECT SUM([Largest Unpaid]) AS [Sum Unpaid]
		FROM MaxInvoiceCTE;

--Sum Unpaid
-----------------------
--22101.39
