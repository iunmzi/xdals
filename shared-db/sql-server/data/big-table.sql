use [sandbox]
go

declare @i int;
set @i = 0;
while @i < 1000 * 1000
begin
  insert into [TestLargeTable] (TestCol1, TestCol2)
  values ('Test col-1 ' + cast(@i as nvarchar), 'Test col-2 ' + cast(@i as nvarchar));

  set @i += 1;
end;
go