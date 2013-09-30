#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on
python -m robot.run -A chrome_args.txt --include shoppingANDconsumer --exclude draft --loglevel TRACE --outputdir "Reports\shopping\consumer" robot-tests\shopping
python -m robot.run -A chrome_args.txt --include shoppingANDagent --exclude draft --loglevel TRACE --outputdir "Reports\shopping\agent" robot-tests\shopping
::python -m robot.run -A chrome_args.txt --test "Test Smoke test - Consumer completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A chrome_args.txt --test "Consumer completes shopping - Primary, Spouse, 2 Children" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A chrome_args.txt --test "Consumer completes shopping - Child Only" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A chrome_args.txt --test "Producer completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A chrome_args.txt --test "Test Smoke test - Producer sends proposal and completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A chrome_args.txt --test "Producer completes shopping - Family of 4" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::
::python -m robot.run -A local_args.txt src/test/resources/