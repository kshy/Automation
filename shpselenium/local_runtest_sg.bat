#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on
::python -m robot.run -A local_args.txt --test "Test Smoke test SG Quote-Enroll - Broker" --loglevel TRACE --outputdir "Reports\SG" robot-tests/sg
::python -m robot.run -A ff_args.txt --include smokeANDsgANDquote --exclude draft --loglevel TRACE --outputdir "Reports\uat\qt" robot-tests
python -m robot.run -A local_args.txt --test "Test Smoke test SG Quote-Enroll - Broker" --loglevel TRACE --outputdir "Reports\uat\SG\enr" robot-tests\sg\sgquotenroll

::python -m robot.run -A local_args.txt --test "Test Smoke test Quote from case - Broker" --loglevel TRACE --outputdir "Reports" robot-tests/sg


::Execution run
::python -m robot.run -A local_args.txt --outputdir "Reports" src/test/resources/robot-tests/sguserstories/sg_us_028919.txt

::
::python -m robot.run -A local_args.txt src/test/resources/