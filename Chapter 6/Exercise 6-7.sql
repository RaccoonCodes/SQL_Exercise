USE AP;

SELECT VendorName, VendorCity, VendorState
	FROM Vendors AS [FIRST_SET]
	WHERE VendorCity + VendorState NOT IN (
		SELECT VendorCity + VendorState
		FROM Vendors AS [SECOND_SET]
		WHERE [SECOND_SET].VendorID <> [FIRST_SET].VendorID)
ORDER BY VendorState, VendorCity