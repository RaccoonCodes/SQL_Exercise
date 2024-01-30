USE AP

SELECT InvoiceNumber, 
       InvoiceTotal - CreditTotal - PaymentTotal AS [Balance]
FROM Invoices
WHERE InvoiceTotal - CreditTotal - PaymentTotal > 0
AND InvoiceDueDate < DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, -1);

                            --OUTPUT
--InvoiceNumber                                      Balance
---------------------------------------------------- ---------------------
--39104                                              85.31
--963253264                                          52.25
--31361833                                           579.42
--263253268                                          59.97
--263253270                                          67.92
--263253273                                          30.75
--P-0608                                             19351.18
--9982771                                            503.20
--134116                                             90.36
--0-2436                                             10976.06
--547480102                                          224.00
