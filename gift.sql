Use Muonline
Go

Declare @login varchar(20),@ip varchar(20), @count int

set @count = 0
DECLARE LISTA CURSOR LOCAL FOR 
SELECT distinct(IP) FROM memb_stat where connectstat=1
OPEN LISTA 
FETCH NEXT FROM LISTA INTO @ip 
WHILE @@FETCH_STATUS = 0 
begin 
 
set @login = (select top 1 memb___id from MEMB_STAT where IP = @ip and ConnectStat=1)

update CashShopData set WCoinC = WCoinC+100, WCoinP = WCoinP+100, GoblinPoint = GoblinPoint+100 where AccountID = @login

print @ip
print @login

set @count = @count+1

FETCH NEXT FROM LISTA INTO @ip
end 
CLOSE LISTA 
DEALLOCATE LISTA 

print @count
