(setq data '(1891
             1975
             1987
             1923
             1928
             1993
             1946
             1947
             2005
             1897
             1971
             1929
             1875
             1945
             1680
             811
             1901
             1396
             1942
             1282
             1941
             1978
             1884
             1879
             1230
             2010
             1881
             1979
             1996
             1904
             1934
             1865
             2003
             2006
             1966
             1860
             1259
             1959
             1931
             1963
             1878
             1880
             151
             1925
             1663
             1908
             1863
             1391
             1922
             1968
             1998
             1084
             1982
             1960
             1938
             1876
             1937
             1882
             1873
             1926
             1986
             1416
             1864
             1862
             1969
             1913
             532
             1866
             1242
             1933
             1903
             965
             1927
             1890
             1991
             1388
             1992
             1902
             1907
             1964
             1394
             2009
             1920
             630
             1932
             1854
             1951
             1852
             1983
             1314
             1855
             1954
             1921
             1989
             1871
             1995
             1885
             1974
             1915
             1872
             1251
             1899
             1985
             1889
             1935
             1912
             946
             1965
             1739
             1973
             1911
             1910
             1917
             1918
             1900
             1886
             1477
             2000
             1916
             1077
             2004
             1456
             1867
             1970
             1999
             1919
             1726
             706
             1930
             1994
             1988
             1997
             1870
             1953
             652
             1893
             1898
             1883
             1957
             1972
             1874
             1977
             1955
             2001
             1906
             1389
             1848
             1940
             1877
             1962
             1948
             1887
             1924
             1403
             1408
             1861
             1892
             1990
             1222
             677
             1392
             1113
             1085
             1894
             1106
             1939
             1961
             1944
             1952
             1643
             1404
             1895
             1958
             1976
             1206
             1905
             1076
             1888
             1896
             1943
             1950
             2008
             1967
             164
             1981
             1868
             1914
             1909
             1956
             341
             1379
             2007
             1563
             1980
             1072
             1949
             1250
             1258
             1092
             2002))

;; input dataset doesn't require filtering because 1010 doesn't exist.

(car
 (-filter 'identity
          (cl-loop for e1 in data
                   collect (cl-loop
                            for e2 in data
                            if (= (+ e1 e2) 2020)
                            return (* e1 e2)))))

;;
(require 'dash.el)
(car
 (car
  (-filter 'identity
           (cl-loop for e1 in data
                    collect
                    (-filter 'identity
                             (cl-loop for e2 in data
                                      collect (cl-loop for e3 in data
                                                       if (= (+ e1 e2 e3) 2020)
                                                       return (* e1 e2 e3))))))))
