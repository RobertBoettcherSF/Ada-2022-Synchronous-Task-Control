pragma Ada_2022;
with Ada.Synchronous_Task_Control;
package body STC_Demo is
   package STC renames Ada.Synchronous_Task_Control;

   function Signal_And_Wait return Boolean is
      Gate : STC.Suspension_Object;
      Seen : Boolean := False;

      task Worker;
      task body Worker is
      begin
         STC.Suspend_Until_True (Gate);
         Seen := True;
      end Worker;
   begin
      delay 0.05;
      STC.Set_True (Gate);
      delay 0.1;
      return Seen;
   end Signal_And_Wait;

end STC_Demo;
