# Gift-Unique-MuOnline
Regalo único para cada player de mu


Selecciona al usuario conectado
```sql
SELECT distinct(IP) FROM memb_stat where connectstat=1
```

```sql
set @login = (select top 1 memb___id from MEMB_STAT where IP = @ip and ConnectStat=1)
```

Da 100 de WCoinC & WCoinp & GoblinPoint
```sql
update CashShopData set WCoinC = WCoinC+50, WCoinP = WCoinP+100, GoblinPoint = GoblinPoint+100 where AccountID = @login
```
