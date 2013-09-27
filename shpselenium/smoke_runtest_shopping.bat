#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on
python -m robot.run -A local_args.txt --test "Test Smoke test - Producer sends proposal and completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A local_args.txt --test "Consumer completes shopping - Child Only" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping

::
::python -m robot.run -A local_args.txt src/test/resources/