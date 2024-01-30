USE AP

SELECT VendorContactFName + ' ' + left(VendorContactLName,1) AS [Contact],
SUBSTRING(VendorPhone,7,8) AS [Phone W/ 559]
FROM Vendors
WHERE LEFT(VendorPhone,5) = '(559)'
ORDER BY Contact;

                        --OUTPUT--
--Contact                                              Phone W/ 559
------------------------------------------------------ ------------
--Alexandro A                                          555-2993
--Anders R                                             555-5570
--Anne B                                               555-7900
--Bill L                                               555-9375
--Caitlin J                                            555-2420
--Deangelo S                                           555-6621
--Demetrius H                                          555-1534
--Derek C                                              555-3005
--Erick K                                              555-1551
--Fyodor F                                             555-7785
--Harold S                                             555-2770
--Jaime R                                              555-8625
--Jeffrey S                                            555-8700
--Johnathon M                                          555-1881
--Kaitlin H                                            555-5106
--Kaylea C                                             555-0765
--Kendall M                                            555-9999
--Kila B                                               555-3482
--Kyle M                                               555-6151
--Kyra F                                               555-8300
--Leah C                                               555-4442
--Leann R                                              555-7473
--Marvin Q                                             555-9586
--Moises J                                             555-3801
--Nathanael R                                          555-4744
--Quentin W                                            555-3112
--Rachael D                                            555-1704
--Reba H                                               555-0600
--Robert A                                             555-2631
--Rowan K                                              555-8060
--Salina E                                             555-7070
--Thom A                                               555-8484
--Trisha A                                             555-6643
--Walter B                                             555-5100

