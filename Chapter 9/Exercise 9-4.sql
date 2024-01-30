USE AP

SELECT
	CASE
	WHEN GROUPING(AccountDescription) = 1 THEN '*ALL*'
	ELSE AccountDescription
END AS [Account],
	CASE 
	WHEN GROUPING(VendorState)= 1 THEN '*ALL*'
	ELSE VendorState
END AS [State],
	SUM(InvoiceLineItemAmount) AS [LineItemSum]
FROM InvoiceLineItems join GLAccounts
	ON InvoiceLineItems.AccountNo = GLAccounts.AccountNo
JOIN Invoices
	ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
JOIN Vendors
	ON Invoices.VendorID = Vendors.VendorID
GROUP BY AccountDescription, VendorState WITH CUBE;

--Account                                            State LineItemSum
---------------------------------------------------- ----- ---------------------
--Direct Mail Advertising                            AZ    478.00
--Meals                                              AZ    50.00
--Office Supplies                                    AZ    134.00
--*ALL*                                              AZ    662.00
--Accounting                                         CA    220.00
--Book Printing Costs                                CA    6940.25
--Book Production Costs                              CA    6175.12
--Books, Dues, and Subscriptions                     CA    2433.00
--Building Lease                                     CA    1750.00
--Building Maintenance                               CA    450.00
--Business Licenses and Taxes                        CA    856.92
--Computer Equipment                                 CA    2137.05
--Direct Mail Advertising                            CA    765.13
--Freight                                            CA    43.67
--Furniture                                          CA    17.50
--Group Insurance                                    CA    564.00
--Office Supplies                                    CA    41.80
--Other Equipment                                    CA    356.48
--Outside Services                                   CA    12026.60
--Postage                                            CA    290.00
--Telephone                                          CA    266.01
--Travel and Accomodations                           CA    503.20
--UCI                                                CA    1600.00
--Utilities                                          CA    16.62
--*ALL*                                              CA    37453.35
--Books, Dues, and Subscriptions                     DC    600.00
--*ALL*                                              DC    600.00
--Outside Services                                   MA    1367.50
--*ALL*                                              MA    1367.50
--Book Printing Costs                                MI    141819.72
--*ALL*                                              MI    141819.72
--Direct Mail Advertising                            NV    2184.50
--Freight                                            NV    23177.96
--*ALL*                                              NV    25362.46
--Books, Dues, and Subscriptions                     OH    19.90
--Direct Mail Advertising                            OH    207.78
--*ALL*                                              OH    227.68
--Direct Mail Advertising                            PA    265.36
--*ALL*                                              PA    265.36
--Freight                                            TN    4378.02
--*ALL*                                              TN    4378.02
--Books, Dues, and Subscriptions                     TX    2154.42
--*ALL*                                              TX    2154.42
--*ALL*                                              *ALL* 214290.51
--Accounting                                         *ALL* 220.00
--Book Printing Costs                                *ALL* 148759.97
--Book Production Costs                              *ALL* 6175.12
--Books, Dues, and Subscriptions                     *ALL* 5207.32
--Building Lease                                     *ALL* 1750.00
--Building Maintenance                               *ALL* 450.00
--Business Licenses and Taxes                        *ALL* 856.92
--Computer Equipment                                 *ALL* 2137.05
--Direct Mail Advertising                            *ALL* 3900.77
--Freight                                            *ALL* 27599.65
--Furniture                                          *ALL* 17.50
--Group Insurance                                    *ALL* 564.00
--Meals                                              *ALL* 50.00
--Office Supplies                                    *ALL* 175.80
--Other Equipment                                    *ALL* 356.48
--Outside Services                                   *ALL* 13394.10
--Postage                                            *ALL* 290.00
--Telephone                                          *ALL* 266.01
--Travel and Accomodations                           *ALL* 503.20
--UCI                                                *ALL* 1600.00
--Utilities                                          *ALL* 16.62