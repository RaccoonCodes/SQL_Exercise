USE AP;

SELECT VendorName, VendorCity, VendorState
	FROM Vendors AS [FIRST_SET]
	WHERE VendorCity + VendorState NOT IN (
		SELECT VendorCity + VendorState
		FROM Vendors AS [SECOND_SET]
		WHERE [SECOND_SET].VendorID <> [FIRST_SET].VendorID)
ORDER BY VendorState, VendorCity

--VendorName                                         VendorCity                                         VendorState
---------------------------------------------------- -------------------------------------------------- -----------
--Diversified Printing & Pub                         Brea                                               CA
--Vision Envelope & Printing                         Gardena                                            CA
--Texaco                                             Inglewood                                          CA
--Publishers Marketing Assoc                         Manhatttan Beach                                   CA
--Blanchard & Johnson Associates                     Mission Viejo                                      CA
--Blue Cross                                         Oxnard                                             CA
--Golden Eagle Insurance Co                          San Diego                                          CA
--Towne Advertiser's Mailing Svcs                    Santa Ana                                          CA
--The Windows Deck                                   Santa Barbara                                      CA
--Cal State Termite                                  Selma                                              CA
--Evans Executone Inc                                Turlock                                            CA
--Bertelsmann Industry Svcs. Inc                     Valencia                                           CA
--Ascom Hasler Mailing Systems                       Shelton                                            CT
--Naylor Publications Inc                            Jacksonville                                       FL
--Open Horizons Publishing                           Fairfield                                          IA
--Zee Medical Service Co                             Washington                                         IA
--The Drawing Board                                  Carol Stream                                       IL
--Leslie Company                                     Olathe                                             KS
--Malloy Lithographing Inc                           Ann Arbor                                          MI
--Data Reproductions Corp                            Auburn Hills                                       MI
--Small Press                                        Traverse City                                      MI
--Capital Resource Credit                            Minneapolis                                        MN
--Baker & Taylor Books                               Charlotte                                          NC
--Rich Advertising                                   Fairfield                                          NJ
--Newbrige Book Clubs                                Washington                                         NJ
--United Parcel Service                              Reno                                               NV
--Cahners Publishing Company                         The Lake                                           NV
--The Mailers Guide Co                               New Rochelle                                       NY
--Venture Communications Int'l                       New York                                           NY
--American Booksellers Assoc                         Tarrytown                                          NY
--Edward Data Services                               Cleves                                             OH
--Publishers Weekly                                  Marion                                             OH
--Nat Assoc of College Stores                        Oberlin                                            OH
--Boucher Communications Inc                         Fort Washington                                    PA
--Federal Express Corporation                        Memphis                                            TN
--Ingram                                             Dallas                                             TX
--Enterprise Communications Inc                      Mclean                                             VA
--US Postal Service                                  Madison                                            
