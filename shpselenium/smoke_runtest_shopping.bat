#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on
python -m robot.run -A chrome_args.txt --include shopping --exclude draft --loglevel TRACE --outputdir "Reports\shopping\consumer" robot-tests\shopping
::python -m robot.run -A local_args.txt --test "Consumer completes shopping - Child Only" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping


::
::python -m robot.run -A local_args.txt src/test/resources/