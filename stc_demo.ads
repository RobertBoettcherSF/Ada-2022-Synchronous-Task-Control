--  Ada 2022 topic: Ada.Synchronous_Task_Control.
pragma Ada_2022;
package STC_Demo is
   --  Worker waits on Suspension_Object; caller Sets it; return True
   --  if worker observed the signal.
   function Signal_And_Wait return Boolean;
end STC_Demo;
