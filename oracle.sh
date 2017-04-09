yum install zip unzip libaio bc flex
rpm -ivh Disk1/oracle-xe-11.2.0-1.0.x86_64.rpm
/etc/init.d/oracle-xe configure
su - oracle
. /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
sqlplus / as sysdba
create user VCD identified by secret default tablespace users;
grant connect to VCD;
alter user VCD quota unlimited on users;
grant dba to VCD;
commit;
exit;
