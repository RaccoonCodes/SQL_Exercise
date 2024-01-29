USE AP

SELECT VendorContactFName + ' ' + left(VendorContactLName,1) AS [Contact],
SUBSTRING(VendorPhone,7,8) AS [Phone W/ 559]
FROM Vendors
WHERE LEFT(VendorPhone,5) = '(559)'
ORDER BY Contact;