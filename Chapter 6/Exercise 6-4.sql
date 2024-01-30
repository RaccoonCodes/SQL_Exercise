USE AP 

SELECT AccountNo, AccountDescription
	FROM GLAccounts
	WHERE NOT EXISTS (
		SELECT *
		FROM InvoiceLineItems
		WHERE InvoiceLineItems.AccountNo = GLAccounts.AccountNo
		)
ORDER BY AccountNo

--AccountNo   AccountDescription
------------- --------------------------------------------------
--100         Cash
--110         Accounts Receivable
--120         Book Inventory
--162         Capitalized Lease
--167         Software
--181         Book Development
--200         Accounts Payable
--205         Royalties Payable
--221         401K Employee Contributions
--230         Sales Taxes Payable
--234         Medicare Taxes Payable
--235         Income Taxes Payable
--237         State Payroll Taxes Payable
--238         Employee FICA Taxes Payable
--239         Employer FICA Taxes Payable
--241         Employer FUTA Taxes Payable
--242         Employee SDI Taxes Payable
--243         Employer UCI Taxes Payable
--251         IBM Credit Corporation Payable
--280         Capital Stock
--290         Retained Earnings
--300         Retail Sales
--301         College Sales
--302         Trade Sales
--306         Consignment Sales
--310         Compositing Revenue
--394         Book Club Royalties
--500         Salaries and Wages
--505         FICA
--506         FUTA
--508         Medicare
--527         Computer Equipment Maintenance
--528         IBM Lease
--532         Equipment Rental
--536         Card Deck Advertising
--541         Space Advertising
--546         Exhibits and Shows
--548         Web Site Production and Fees
--550         Packaging Materials
--551         Business Forms
--555         Collection Agency Fees
--556         Credit Card Handling
--565         Bank Fees
--568         Auto License Fee
--569         Auto Expense
--576         PC Software
--590         Business Insurance
--610         Charitable Contributions
--611         Profit Sharing Contributions
--620         Interest Paid to Banks
--621         Other Interest
--630         Federal Corporation Income Taxes
--631         State Corporation Income Taxes
--632         Sales Tax