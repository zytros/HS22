; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_args2004 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_args2004
  %_locRef2006 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args2004
  %_idxUID2007 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef2006, i32 0, i32 1, i32 1
  %_getArrUID2008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID2007
  %_idxUID2009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID2008, i32 0, i32 1, i32 1
  %_getArrUID2010 = load i64, i64* %_idxUID2009
  ret i64 %_getArrUID2010
}

define i64 @g(i64 %x) {
  %_args1946 = alloca i64
  %_localId1997 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_args1946
  %_locRef1948 = load i64, i64* %_args1946
  %_locRef1949 = load i64, i64* %_args1946
  %_locRef1950 = load i64, i64* %_args1946
  %_atomArrUID1952 = alloca { i64, [3 x i64] }
  %_idxUID1959 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1952, i32 0, i32 0
  store i64 3, i64* %_idxUID1959
  %_gep1953 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1952, i32 0, i32 1, i32 0
  %_gep1954 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1952, i32 0, i32 1, i32 1
  %_gep1955 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1952, i32 0, i32 1, i32 2
  store i64 %_locRef1948, i64* %_gep1953
  store i64 %_locRef1949, i64* %_gep1954
  store i64 %_locRef1950, i64* %_gep1955
  %_arrayUID1951 = bitcast { i64, [3 x i64] }* %_atomArrUID1952 to { i64, [0 x i64] }*
  %_locRef1961 = load i64, i64* %_args1946
  %_locRef1962 = load i64, i64* %_args1946
  %_locRef1963 = load i64, i64* %_args1946
  %_atomArrUID1965 = alloca { i64, [3 x i64] }
  %_idxUID1972 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1965, i32 0, i32 0
  store i64 3, i64* %_idxUID1972
  %_gep1966 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1965, i32 0, i32 1, i32 0
  %_gep1967 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1965, i32 0, i32 1, i32 1
  %_gep1968 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1965, i32 0, i32 1, i32 2
  store i64 %_locRef1961, i64* %_gep1966
  store i64 %_locRef1962, i64* %_gep1967
  store i64 %_locRef1963, i64* %_gep1968
  %_arrayUID1964 = bitcast { i64, [3 x i64] }* %_atomArrUID1965 to { i64, [0 x i64] }*
  %_locRef1974 = load i64, i64* %_args1946
  %_locRef1975 = load i64, i64* %_args1946
  %_locRef1976 = load i64, i64* %_args1946
  %_atomArrUID1978 = alloca { i64, [3 x i64] }
  %_idxUID1985 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1978, i32 0, i32 0
  store i64 3, i64* %_idxUID1985
  %_gep1979 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1978, i32 0, i32 1, i32 0
  %_gep1980 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1978, i32 0, i32 1, i32 1
  %_gep1981 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1978, i32 0, i32 1, i32 2
  store i64 %_locRef1974, i64* %_gep1979
  store i64 %_locRef1975, i64* %_gep1980
  store i64 %_locRef1976, i64* %_gep1981
  %_arrayUID1977 = bitcast { i64, [3 x i64] }* %_atomArrUID1978 to { i64, [0 x i64] }*
  %_atomArrUID1988 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID1995 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1988, i32 0, i32 0
  store i64 3, i64* %_idxUID1995
  %_gep1989 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1988, i32 0, i32 1, i32 0
  %_gep1990 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1988, i32 0, i32 1, i32 1
  %_gep1991 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1988, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID1951, { i64, [0 x i64] }** %_gep1989
  store { i64, [0 x i64] }* %_arrayUID1964, { i64, [0 x i64] }** %_gep1990
  store { i64, [0 x i64] }* %_arrayUID1977, { i64, [0 x i64] }** %_gep1991
  %_arrayUID1987 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1988 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1987, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1997
  %_locRef1999 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1997
  %_idxUID2000 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1999, i32 0, i32 1, i32 1
  %_getArrUID2001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID2000
  %_idxUID2002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID2001, i32 0, i32 1, i32 1
  %_getArrUID2003 = load i64, i64* %_idxUID2002
  ret i64 %_getArrUID2003
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1743 = alloca i64
  %_args1744 = alloca { i64, [0 x i8*] }*
  %_localId1787 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1877 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1928 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_args1743
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1744
  %_atomArrUID1748 = alloca { i64, [3 x i64] }
  %_idxUID1755 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1748, i32 0, i32 0
  store i64 3, i64* %_idxUID1755
  %_gep1749 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1748, i32 0, i32 1, i32 0
  %_gep1750 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1748, i32 0, i32 1, i32 1
  %_gep1751 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1748, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep1749
  store i64 1, i64* %_gep1750
  store i64 2, i64* %_gep1751
  %_arrayUID1747 = bitcast { i64, [3 x i64] }* %_atomArrUID1748 to { i64, [0 x i64] }*
  %_atomArrUID1758 = alloca { i64, [3 x i64] }
  %_idxUID1765 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1758, i32 0, i32 0
  store i64 3, i64* %_idxUID1765
  %_gep1759 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1758, i32 0, i32 1, i32 0
  %_gep1760 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1758, i32 0, i32 1, i32 1
  %_gep1761 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1758, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep1759
  store i64 1, i64* %_gep1760
  store i64 2, i64* %_gep1761
  %_arrayUID1757 = bitcast { i64, [3 x i64] }* %_atomArrUID1758 to { i64, [0 x i64] }*
  %_atomArrUID1768 = alloca { i64, [3 x i64] }
  %_idxUID1775 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1768, i32 0, i32 0
  store i64 3, i64* %_idxUID1775
  %_gep1769 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1768, i32 0, i32 1, i32 0
  %_gep1770 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1768, i32 0, i32 1, i32 1
  %_gep1771 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1768, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep1769
  store i64 1, i64* %_gep1770
  store i64 2, i64* %_gep1771
  %_arrayUID1767 = bitcast { i64, [3 x i64] }* %_atomArrUID1768 to { i64, [0 x i64] }*
  %_atomArrUID1778 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID1785 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1778, i32 0, i32 0
  store i64 3, i64* %_idxUID1785
  %_gep1779 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1778, i32 0, i32 1, i32 0
  %_gep1780 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1778, i32 0, i32 1, i32 1
  %_gep1781 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1778, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID1747, { i64, [0 x i64] }** %_gep1779
  store { i64, [0 x i64] }* %_arrayUID1757, { i64, [0 x i64] }** %_gep1780
  store { i64, [0 x i64] }* %_arrayUID1767, { i64, [0 x i64] }** %_gep1781
  %_arrayUID1777 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1778 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1777, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1787
  %_bop1789 = mul i64 0, 0
  %_bop1790 = mul i64 0, 1
  %_bop1791 = mul i64 0, 2
  %_bop1792 = mul i64 0, 3
  %_bop1793 = mul i64 0, 4
  %_atomArrUID1795 = alloca { i64, [5 x i64] }
  %_idxUID1806 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1795, i32 0, i32 0
  store i64 5, i64* %_idxUID1806
  %_gep1796 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1795, i32 0, i32 1, i32 0
  %_gep1797 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1795, i32 0, i32 1, i32 1
  %_gep1798 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1795, i32 0, i32 1, i32 2
  %_gep1799 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1795, i32 0, i32 1, i32 3
  %_gep1800 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1795, i32 0, i32 1, i32 4
  store i64 %_bop1789, i64* %_gep1796
  store i64 %_bop1790, i64* %_gep1797
  store i64 %_bop1791, i64* %_gep1798
  store i64 %_bop1792, i64* %_gep1799
  store i64 %_bop1793, i64* %_gep1800
  %_arrayUID1794 = bitcast { i64, [5 x i64] }* %_atomArrUID1795 to { i64, [0 x i64] }*
  %_bop1808 = mul i64 1, 0
  %_bop1809 = mul i64 1, 1
  %_bop1810 = mul i64 1, 2
  %_bop1811 = mul i64 1, 3
  %_bop1812 = mul i64 1, 4
  %_atomArrUID1814 = alloca { i64, [5 x i64] }
  %_idxUID1825 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1814, i32 0, i32 0
  store i64 5, i64* %_idxUID1825
  %_gep1815 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1814, i32 0, i32 1, i32 0
  %_gep1816 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1814, i32 0, i32 1, i32 1
  %_gep1817 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1814, i32 0, i32 1, i32 2
  %_gep1818 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1814, i32 0, i32 1, i32 3
  %_gep1819 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1814, i32 0, i32 1, i32 4
  store i64 %_bop1808, i64* %_gep1815
  store i64 %_bop1809, i64* %_gep1816
  store i64 %_bop1810, i64* %_gep1817
  store i64 %_bop1811, i64* %_gep1818
  store i64 %_bop1812, i64* %_gep1819
  %_arrayUID1813 = bitcast { i64, [5 x i64] }* %_atomArrUID1814 to { i64, [0 x i64] }*
  %_bop1827 = mul i64 2, 0
  %_bop1828 = mul i64 2, 1
  %_bop1829 = mul i64 2, 2
  %_bop1830 = mul i64 2, 3
  %_bop1831 = mul i64 2, 4
  %_atomArrUID1833 = alloca { i64, [5 x i64] }
  %_idxUID1844 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1833, i32 0, i32 0
  store i64 5, i64* %_idxUID1844
  %_gep1834 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1833, i32 0, i32 1, i32 0
  %_gep1835 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1833, i32 0, i32 1, i32 1
  %_gep1836 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1833, i32 0, i32 1, i32 2
  %_gep1837 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1833, i32 0, i32 1, i32 3
  %_gep1838 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1833, i32 0, i32 1, i32 4
  store i64 %_bop1827, i64* %_gep1834
  store i64 %_bop1828, i64* %_gep1835
  store i64 %_bop1829, i64* %_gep1836
  store i64 %_bop1830, i64* %_gep1837
  store i64 %_bop1831, i64* %_gep1838
  %_arrayUID1832 = bitcast { i64, [5 x i64] }* %_atomArrUID1833 to { i64, [0 x i64] }*
  %_bop1846 = mul i64 3, 0
  %_bop1847 = mul i64 3, 1
  %_bop1848 = mul i64 3, 2
  %_bop1849 = mul i64 3, 3
  %_bop1850 = mul i64 3, 4
  %_atomArrUID1852 = alloca { i64, [5 x i64] }
  %_idxUID1863 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1852, i32 0, i32 0
  store i64 5, i64* %_idxUID1863
  %_gep1853 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1852, i32 0, i32 1, i32 0
  %_gep1854 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1852, i32 0, i32 1, i32 1
  %_gep1855 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1852, i32 0, i32 1, i32 2
  %_gep1856 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1852, i32 0, i32 1, i32 3
  %_gep1857 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID1852, i32 0, i32 1, i32 4
  store i64 %_bop1846, i64* %_gep1853
  store i64 %_bop1847, i64* %_gep1854
  store i64 %_bop1848, i64* %_gep1855
  store i64 %_bop1849, i64* %_gep1856
  store i64 %_bop1850, i64* %_gep1857
  %_arrayUID1851 = bitcast { i64, [5 x i64] }* %_atomArrUID1852 to { i64, [0 x i64] }*
  %_atomArrUID1866 = alloca { i64, [4 x { i64, [0 x i64] }*] }
  %_idxUID1875 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID1866, i32 0, i32 0
  store i64 4, i64* %_idxUID1875
  %_gep1867 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID1866, i32 0, i32 1, i32 0
  %_gep1868 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID1866, i32 0, i32 1, i32 1
  %_gep1869 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID1866, i32 0, i32 1, i32 2
  %_gep1870 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID1866, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_arrayUID1794, { i64, [0 x i64] }** %_gep1867
  store { i64, [0 x i64] }* %_arrayUID1813, { i64, [0 x i64] }** %_gep1868
  store { i64, [0 x i64] }* %_arrayUID1832, { i64, [0 x i64] }** %_gep1869
  store { i64, [0 x i64] }* %_arrayUID1851, { i64, [0 x i64] }** %_gep1870
  %_arrayUID1865 = bitcast { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID1866 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1865, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1877
  %_bop1879 = mul i64 0, 0
  %_bop1880 = mul i64 0, 1
  %_bop1881 = mul i64 0, 2
  %_atomArrUID1883 = alloca { i64, [3 x i64] }
  %_idxUID1890 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1883, i32 0, i32 0
  store i64 3, i64* %_idxUID1890
  %_gep1884 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1883, i32 0, i32 1, i32 0
  %_gep1885 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1883, i32 0, i32 1, i32 1
  %_gep1886 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1883, i32 0, i32 1, i32 2
  store i64 %_bop1879, i64* %_gep1884
  store i64 %_bop1880, i64* %_gep1885
  store i64 %_bop1881, i64* %_gep1886
  %_arrayUID1882 = bitcast { i64, [3 x i64] }* %_atomArrUID1883 to { i64, [0 x i64] }*
  %_bop1892 = mul i64 1, 0
  %_bop1893 = mul i64 1, 1
  %_bop1894 = mul i64 1, 2
  %_atomArrUID1896 = alloca { i64, [3 x i64] }
  %_idxUID1903 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1896, i32 0, i32 0
  store i64 3, i64* %_idxUID1903
  %_gep1897 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1896, i32 0, i32 1, i32 0
  %_gep1898 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1896, i32 0, i32 1, i32 1
  %_gep1899 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1896, i32 0, i32 1, i32 2
  store i64 %_bop1892, i64* %_gep1897
  store i64 %_bop1893, i64* %_gep1898
  store i64 %_bop1894, i64* %_gep1899
  %_arrayUID1895 = bitcast { i64, [3 x i64] }* %_atomArrUID1896 to { i64, [0 x i64] }*
  %_bop1905 = mul i64 2, 0
  %_bop1906 = mul i64 2, 1
  %_bop1907 = mul i64 2, 2
  %_atomArrUID1909 = alloca { i64, [3 x i64] }
  %_idxUID1916 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1909, i32 0, i32 0
  store i64 3, i64* %_idxUID1916
  %_gep1910 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1909, i32 0, i32 1, i32 0
  %_gep1911 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1909, i32 0, i32 1, i32 1
  %_gep1912 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1909, i32 0, i32 1, i32 2
  store i64 %_bop1905, i64* %_gep1910
  store i64 %_bop1906, i64* %_gep1911
  store i64 %_bop1907, i64* %_gep1912
  %_arrayUID1908 = bitcast { i64, [3 x i64] }* %_atomArrUID1909 to { i64, [0 x i64] }*
  %_atomArrUID1919 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID1926 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1919, i32 0, i32 0
  store i64 3, i64* %_idxUID1926
  %_gep1920 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1919, i32 0, i32 1, i32 0
  %_gep1921 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1919, i32 0, i32 1, i32 1
  %_gep1922 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1919, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID1882, { i64, [0 x i64] }** %_gep1920
  store { i64, [0 x i64] }* %_arrayUID1895, { i64, [0 x i64] }** %_gep1921
  store { i64, [0 x i64] }* %_arrayUID1908, { i64, [0 x i64] }** %_gep1922
  %_arrayUID1918 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1919 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1918, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1928
  %_locRef1930 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1877
  %_idxUID1931 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1930, i32 0, i32 1, i32 3
  %_getArrUID1932 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1931
  %_idxUID1933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1932, i32 0, i32 1, i32 4
  %_getArrUID1934 = load i64, i64* %_idxUID1933
  %_locRef1935 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1787
  %_idxUID1936 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1935, i32 0, i32 1, i32 1
  %_getArrUID1937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1936
  %_idxUID1938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1937, i32 0, i32 1, i32 2
  %_getArrUID1939 = load i64, i64* %_idxUID1938
  %_bop1940 = add i64 %_getArrUID1934, %_getArrUID1939
  %_locRef1941 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1928
  %_callUID1942 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef1941)
  %_bop1943 = add i64 %_bop1940, %_callUID1942
  %_callUID1944 = call i64 @g(i64 4)
  %_bop1945 = add i64 %_bop1943, %_callUID1944
  ret i64 %_bop1945
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
