DELETE FROM methane_emissions WHERE `1970` IS NULL;

ALTER TABLE methane_emissions DROP `1970`, DROP `1971`, DROP `1972`, DROP `1973`, DROP `1974`, DROP `1975`, DROP `1976`,
DROP `1977`, DROP `1978`, DROP `1979`, DROP `1980`, DROP `1981`, DROP `1982`, DROP `1983`, DROP `1984`, DROP `1985`,
DROP `1986`, DROP `1987`, DROP `1988`, DROP `1989`;

ALTER TABLE population DROP `1970`, DROP `1971`, DROP `1972`, DROP `1973`, DROP `1974`, DROP `1975`, DROP `1976`,
DROP `1977`, DROP `1978`, DROP `1979`, DROP `1980`, DROP `1981`, DROP `1982`, DROP `1983`, DROP `1984`, DROP `1985`,
DROP `1986`, DROP `1987`, DROP `1988`, DROP `1989`;

ALTER TABLE population DROP `1960`, DROP `1961`, DROP `1962`, DROP `1963`, DROP `1964`, DROP `1965`, DROP `1966`,
DROP `1967`, DROP `1968`, DROP `1969`;

ALTER TABLE population DROP `2013`, DROP `2014`, DROP `2015`, DROP `2016`, DROP `2017`;

SELECT pop.Country_Name, pop.Country_Code, 
pop.`1990` AS pop_1990, meth.`1990` AS emissions_90, 
pop.`1991` AS pop_1991, meth.`1991` AS emissions_91, 
pop.`1992` AS pop_1992, meth.`1992` AS emissions_92,
pop.`1993` AS pop_1993, meth.`1993` AS emissions_93,
pop.`1994` AS pop_1994, meth.`1994` AS emissions_94,
pop.`1995` AS pop_1995, meth.`1995` AS emissions_95,
pop.`1996` AS pop_1996, meth.`1996` AS emissions_96,
pop.`1997` AS pop_1997, meth.`1997` AS emissions_97,
pop.`1998` AS pop_1998, meth.`1998` AS emissions_98,
pop.`1999` AS pop_1999, meth.`1999` AS emissions_99,
pop.`2000` AS pop_2000, meth.`2000` AS emissions_00,
pop.`2001` AS pop_2001, meth.`2001` AS emissions_01,
pop.`2002` AS pop_2002, meth.`2002` AS emissions_02,
pop.`2003` AS pop_2003, meth.`2003` AS emissions_03,
pop.`2004` AS pop_2004, meth.`2004` AS emissions_04,
pop.`2005` AS pop_2005, meth.`2005` AS emissions_05,
pop.`2006` AS pop_2006, meth.`2006` AS emissions_06,
pop.`2007` AS pop_2007, meth.`2007` AS emissions_07,
pop.`2008` AS pop_2008, meth.`2008` AS emissions_08,
pop.`2009` AS pop_2009, meth.`2009` AS emissions_09,
pop.`2010` AS pop_2010, meth.`2010` AS emissions_10,
pop.`2011` AS pop_2011, meth.`2011` AS emissions_11, 
pop.`2012` AS pop_2012, meth.`2012` AS emissions_12 
FROM population AS pop INNER JOIN methane_emissions AS meth ON pop.Country_Code = meth.Country_Code;


-- new csv emissions_population
DELETE FROM emissions_population WHERE Country_Name = "Arab World";
-- Delete Central Europe & the Baltics
DELETE FROM emissions_population WHERE Country_Code = "CEB";
-- delete "east asia and pacific excluding high income"
DELETE FROM emissions_population WHERE Country_Code = "EAP";
-- delete "east asia and pacific excluding high income"
DELETE FROM emissions_population WHERE Country_Code = "EAP";

-- delete "europe and central asia excluding high income"
DELETE FROM emissions_population WHERE Country_Code = "ECA";

-- delete "europe and central asia"
DELETE FROM emissions_population WHERE Country_Code = "ECS";

-- delete "Euro Area"
DELETE FROM emissions_population WHERE Country_Code = "EMU";

-- delete European Union
DELETE FROM emissions_population WHERE Country_Code = "EUU";

-- delete fragile and conflict affected situations
DELETE FROM emissions_population WHERE Country_Code = "FCS";

-- delete high income 
DELETE FROM emissions_population WHERE Country_Code = "HIC";

-- delete heavily indebted poor countries 
DELETE FROM emissions_population WHERE Country_Code = "HPC";

-- delete IDA total
DELETE FROM emissions_population WHERE Country_Code = "IDA";

-- delete IDA Blend
DELETE FROM emissions_population WHERE Country_Code = "IDB";

-- IDA only
DELETE FROM emissions_population WHERE Country_Code = "IDX";

-- Latin American and Carribean 
DELETE FROM emissions_population WHERE Country_Code = "LAC";

-- Latin America and Carribean 
DELETE FROM emissions_population WHERE Country_Code = "LCN";

-- least developed countries - UN Classification
DELETE FROM emissions_population WHERE Country_Code = "LDC";

-- delete low income
DELETE FROM emissions_population WHERE Country_Code = "LIC";

-- delete middle east and north africa
DELETE FROM emissions_population WHERE Country_Code = "MEA";

-- delete Middle East and North Africa
DELETE FROM emissions_population WHERE Country_Code = "MNA";

-- delete north america
DELETE FROM emissions_population WHERE Country_Code = "NAC";

-- delete OECD members
DELETE FROM emissions_population WHERE Country_Code = "OED";

-- other small states
DELETE FROM emissions_population WHERE Country_Code = "OSS";

-- pre demographic dividend
DELETE FROM emissions_population WHERE Country_Code = "PRE";

-- pacific island small states
DELETE FROM emissions_population WHERE Country_Code = "PSS";

-- post demographic dividend 
DELETE FROM emissions_population WHERE Country_Code = "PST";

-- south asia
DELETE FROM emissions_population WHERE Country_Code = "SAS";

-- sub saharan africa excluding high income
DELETE FROM emissions_population WHERE Country_Code = "SSA";

-- sub saharan africa
DELETE FROM emissions_population WHERE Country_Code = "SSF";

-- small states
DELETE FROM emissions_population WHERE Country_Code = "SST";

-- convert kt to metric tons
UPDATE emissions_population SET emissions_90 = emissions_90 * 1000;
UPDATE emissions_population SET emissions_91 = emissions_91 * 1000;
UPDATE emissions_population SET emissions_92 = emissions_92 * 1000;
UPDATE emissions_population SET emissions_93 = emissions_93 * 1000;
UPDATE emissions_population SET emissions_94 = emissions_94 * 1000;
UPDATE emissions_population SET emissions_95 = emissions_95 * 1000;
UPDATE emissions_population SET emissions_96 = emissions_96 * 1000;
UPDATE emissions_population SET emissions_97 = emissions_97 * 1000;
UPDATE emissions_population SET emissions_98 = emissions_98 * 1000;
UPDATE emissions_population SET emissions_99 = emissions_99 * 1000;
UPDATE emissions_population SET emissions_00 = emissions_00 * 1000;
UPDATE emissions_population SET emissions_01 = emissions_01 * 1000;
UPDATE emissions_population SET emissions_02 = emissions_02 * 1000;
UPDATE emissions_population SET emissions_03 = emissions_03 * 1000;
UPDATE emissions_population SET emissions_04 = emissions_04 * 1000;
UPDATE emissions_population SET emissions_05 = emissions_05 * 1000;
UPDATE emissions_population SET emissions_06 = emissions_06 * 1000;
UPDATE emissions_population SET emissions_07 = emissions_07 * 1000;
UPDATE emissions_population SET emissions_08 = emissions_08 * 1000;
UPDATE emissions_population SET emissions_09 = emissions_09 * 1000;
UPDATE emissions_population SET emissions_10 = emissions_10 * 1000;
UPDATE emissions_population SET emissions_11 = emissions_11 * 1000;
UPDATE emissions_population SET emissions_12 = emissions_12 * 1000;

-- saved new csv -- converted metric tonns

ALTER TABLE emissions_population ADD per_capita_90 DOUBLE AS (emissions_90 / pop_1990) AFTER emissions_90;
ALTER TABLE emissions_population ADD per_capita_91 DOUBLE AS (emissions_91 / pop_1991) AFTER emissions_91;
ALTER TABLE emissions_population ADD per_capita_92 DOUBLE AS (emissions_92 / pop_1992) AFTER emissions_92;
ALTER TABLE emissions_population ADD per_capita_93 DOUBLE AS (emissions_93 / pop_1993) AFTER emissions_93;
ALTER TABLE emissions_population ADD per_capita_94 DOUBLE AS (emissions_94 / pop_1994) AFTER emissions_94;
ALTER TABLE emissions_population ADD per_capita_95 DOUBLE AS (emissions_95 / pop_1995) AFTER emissions_95;
ALTER TABLE emissions_population ADD per_capita_96 DOUBLE AS (emissions_96 / pop_1996) AFTER emissions_96;
ALTER TABLE emissions_population ADD per_capita_97 DOUBLE AS (emissions_97 / pop_1997) AFTER emissions_97;
ALTER TABLE emissions_population ADD per_capita_98 DOUBLE AS (emissions_98 / pop_1998) AFTER emissions_98;
ALTER TABLE emissions_population ADD per_capita_99 DOUBLE AS (emissions_99 / pop_1999) AFTER emissions_99;
ALTER TABLE emissions_population ADD per_capita_00 DOUBLE AS (emissions_00 / pop_2000) AFTER emissions_00;
ALTER TABLE emissions_population ADD per_capita_01 DOUBLE AS (emissions_01 / pop_2001) AFTER emissions_01;
ALTER TABLE emissions_population ADD per_capita_02 DOUBLE AS (emissions_02 / pop_2002) AFTER emissions_02;
ALTER TABLE emissions_population ADD per_capita_03 DOUBLE AS (emissions_03 / pop_2003) AFTER emissions_03;
ALTER TABLE emissions_population ADD per_capita_04 DOUBLE AS (emissions_04 / pop_2004) AFTER emissions_04;
ALTER TABLE emissions_population ADD per_capita_05 DOUBLE AS (emissions_05 / pop_2005) AFTER emissions_05;
ALTER TABLE emissions_population ADD per_capita_06 DOUBLE AS (emissions_06 / pop_2006) AFTER emissions_06;
ALTER TABLE emissions_population ADD per_capita_07 DOUBLE AS (emissions_07 / pop_2007) AFTER emissions_07;
ALTER TABLE emissions_population ADD per_capita_08 DOUBLE AS (emissions_08 / pop_2008) AFTER emissions_08;
ALTER TABLE emissions_population ADD per_capita_09 DOUBLE AS (emissions_09 / pop_2009) AFTER emissions_09;
ALTER TABLE emissions_population ADD per_capita_10 DOUBLE AS (emissions_10 / pop_2010) AFTER emissions_10;
ALTER TABLE emissions_population ADD per_capita_11 DOUBLE AS (emissions_11 / pop_2011) AFTER emissions_11;
ALTER TABLE emissions_population ADD per_capita_12 DOUBLE AS (emissions_12 / pop_2012) AFTER emissions_12;

-- updating meat consumption table 

ALTER TABLE meat_consumption DROP Flag_Codes;

DELETE FROM meat_consumption WHERE `TIME` > 2012;


--  

-- united states updates

ALTER TABLE united_states_emissions DROP `1970`, DROP `1971`, DROP `1972`, DROP `1973`, DROP `1974`, DROP `1975`, DROP `1976`,
DROP `1977`, DROP `1978`, DROP `1979`, DROP `1980`, DROP `1981`, DROP `1982`, DROP `1983`, DROP `1984`, DROP `1985`,
DROP `1986`, DROP `1987`, DROP `1988`, DROP `1989`;

ALTER TABLE united_states_population DROP `1970`, DROP `1971`, DROP `1972`, DROP `1973`, DROP `1974`, DROP `1975`, DROP `1976`,
DROP `1977`, DROP `1978`, DROP `1979`, DROP `1980`, DROP `1981`, DROP `1982`, DROP `1983`, DROP `1984`, DROP `1985`,
DROP `1986`, DROP `1987`, DROP `1988`, DROP `1989`;

ALTER TABLE united_states_population DROP `1960`, DROP `1961`, DROP `1962`, DROP `1963`, DROP `1964`, DROP `1965`, DROP `1966`,
DROP `1967`, DROP `1968`, DROP `1969`;

ALTER TABLE united_states_population DROP `2013`, DROP `2014`, DROP `2015`, DROP `2016`, DROP `2017`;

SELECT uspop.Country_Name, uspop.Country_Code, 
uspop.`1990` AS pop_1990, usem.`1990` AS emissions_90, 
uspop.`1991` AS pop_1991, usem.`1991` AS emissions_91, 
uspop.`1992` AS pop_1992, usem.`1992` AS emissions_92,
uspop.`1993` AS pop_1993, usem.`1993` AS emissions_93,
uspop.`1994` AS pop_1994, usem.`1994` AS emissions_94,
uspop.`1995` AS pop_1995, usem.`1995` AS emissions_95,
uspop.`1996` AS pop_1996, usem.`1996` AS emissions_96,
uspop.`1997` AS pop_1997, usem.`1997` AS emissions_97,
uspop.`1998` AS pop_1998, usem.`1998` AS emissions_98,
uspop.`1999` AS pop_1999, usem.`1999` AS emissions_99,
uspop.`2000` AS pop_2000, usem.`2000` AS emissions_00,
uspop.`2001` AS pop_2001, usem.`2001` AS emissions_01,
uspop.`2002` AS pop_2002, usem.`2002` AS emissions_02,
uspop.`2003` AS pop_2003, usem.`2003` AS emissions_03,
uspop.`2004` AS pop_2004, usem.`2004` AS emissions_04,
uspop.`2005` AS pop_2005, usem.`2005` AS emissions_05,
uspop.`2006` AS pop_2006, usem.`2006` AS emissions_06,
uspop.`2007` AS pop_2007, usem.`2007` AS emissions_07,
uspop.`2008` AS pop_2008, usem.`2008` AS emissions_08,
uspop.`2009` AS pop_2009, usem.`2009` AS emissions_09,
uspop.`2010` AS pop_2010, usem.`2010` AS emissions_10,
uspop.`2011` AS pop_2011, usem.`2011` AS emissions_11, 
uspop.`2012` AS pop_2012, usem.`2012` AS emissions_12 
FROM united_states_population AS uspop INNER JOIN united_states_emissions AS usem ON uspop.Country_Code = usem.Country_Code;

UPDATE us_emissions_populations SET emissions_90 = emissions_90 * 1000;
UPDATE us_emissions_populations SET emissions_91 = emissions_91 * 1000;
UPDATE us_emissions_populations SET emissions_92 = emissions_92 * 1000;
UPDATE us_emissions_populations SET emissions_93 = emissions_93 * 1000;
UPDATE us_emissions_populations SET emissions_94 = emissions_94 * 1000;
UPDATE us_emissions_populations SET emissions_95 = emissions_95 * 1000;
UPDATE us_emissions_populations SET emissions_96 = emissions_96 * 1000;
UPDATE us_emissions_populations SET emissions_97 = emissions_97 * 1000;
UPDATE us_emissions_populations SET emissions_98 = emissions_98 * 1000;
UPDATE us_emissions_populations SET emissions_99 = emissions_99 * 1000;
UPDATE us_emissions_populations SET emissions_00 = emissions_00 * 1000;
UPDATE us_emissions_populations SET emissions_01 = emissions_01 * 1000;
UPDATE us_emissions_populations SET emissions_02 = emissions_02 * 1000;
UPDATE us_emissions_populations SET emissions_03 = emissions_03 * 1000;
UPDATE us_emissions_populations SET emissions_04 = emissions_04 * 1000;
UPDATE us_emissions_populations SET emissions_05 = emissions_05 * 1000;
UPDATE us_emissions_populations SET emissions_06 = emissions_06 * 1000;
UPDATE us_emissions_populations SET emissions_07 = emissions_07 * 1000;
UPDATE us_emissions_populations SET emissions_08 = emissions_08 * 1000;
UPDATE us_emissions_populations SET emissions_09 = emissions_09 * 1000;
UPDATE us_emissions_populations SET emissions_10 = emissions_10 * 1000;
UPDATE us_emissions_populations SET emissions_11 = emissions_11 * 1000;
UPDATE us_emissions_populations SET emissions_12 = emissions_12 * 1000;


ALTER TABLE us_emissions_populations ADD per_capita_90 DOUBLE AS (emissions_90 / pop_1990) AFTER emissions_90;
ALTER TABLE us_emissions_populations ADD per_capita_91 DOUBLE AS (emissions_91 / pop_1991) AFTER emissions_91;
ALTER TABLE us_emissions_populations ADD per_capita_92 DOUBLE AS (emissions_92 / pop_1992) AFTER emissions_92;
ALTER TABLE us_emissions_populations ADD per_capita_93 DOUBLE AS (emissions_93 / pop_1993) AFTER emissions_93;
ALTER TABLE us_emissions_populations ADD per_capita_94 DOUBLE AS (emissions_94 / pop_1994) AFTER emissions_94;
ALTER TABLE us_emissions_populations ADD per_capita_95 DOUBLE AS (emissions_95 / pop_1995) AFTER emissions_95;
ALTER TABLE us_emissions_populations ADD per_capita_96 DOUBLE AS (emissions_96 / pop_1996) AFTER emissions_96;
ALTER TABLE us_emissions_populations ADD per_capita_97 DOUBLE AS (emissions_97 / pop_1997) AFTER emissions_97;
ALTER TABLE us_emissions_populations ADD per_capita_98 DOUBLE AS (emissions_98 / pop_1998) AFTER emissions_98;
ALTER TABLE us_emissions_populations ADD per_capita_99 DOUBLE AS (emissions_99 / pop_1999) AFTER emissions_99;
ALTER TABLE us_emissions_populations ADD per_capita_00 DOUBLE AS (emissions_00 / pop_2000) AFTER emissions_00;
ALTER TABLE us_emissions_populations ADD per_capita_01 DOUBLE AS (emissions_01 / pop_2001) AFTER emissions_01;
ALTER TABLE us_emissions_populations ADD per_capita_02 DOUBLE AS (emissions_02 / pop_2002) AFTER emissions_02;
ALTER TABLE us_emissions_populations ADD per_capita_03 DOUBLE AS (emissions_03 / pop_2003) AFTER emissions_03;
ALTER TABLE us_emissions_populations ADD per_capita_04 DOUBLE AS (emissions_04 / pop_2004) AFTER emissions_04;
ALTER TABLE us_emissions_populations ADD per_capita_05 DOUBLE AS (emissions_05 / pop_2005) AFTER emissions_05;
ALTER TABLE us_emissions_populations ADD per_capita_06 DOUBLE AS (emissions_06 / pop_2006) AFTER emissions_06;
ALTER TABLE us_emissions_populations ADD per_capita_07 DOUBLE AS (emissions_07 / pop_2007) AFTER emissions_07;
ALTER TABLE us_emissions_populations ADD per_capita_08 DOUBLE AS (emissions_08 / pop_2008) AFTER emissions_08;
ALTER TABLE us_emissions_populations ADD per_capita_09 DOUBLE AS (emissions_09 / pop_2009) AFTER emissions_09;
ALTER TABLE us_emissions_populations ADD per_capita_10 DOUBLE AS (emissions_10 / pop_2010) AFTER emissions_10;
ALTER TABLE us_emissions_populations ADD per_capita_11 DOUBLE AS (emissions_11 / pop_2011) AFTER emissions_11;
ALTER TABLE us_emissions_populations ADD per_capita_12 DOUBLE AS (emissions_12 / pop_2012) AFTER emissions_12;