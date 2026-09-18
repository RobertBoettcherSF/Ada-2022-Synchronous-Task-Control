pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with STC_Demo;
procedure Tests is
begin
   Assert (STC_Demo.Signal_And_Wait);
   Put_Line ("PASS Suspension_Object Set_True / Suspend_Until_True");
   Put_Line ("All Synchronous_Task_Control topic tests passed.");
end Tests;
