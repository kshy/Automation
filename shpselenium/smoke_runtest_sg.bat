#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on
::python -m robot.run -A local_args.txt --test "Test Smoke test Quote - Broker" --loglevel TRACE --outputdir "Reports\SG\quote" robot-tests\sg\sgquote
::python -m robot.run -A local_args.txt --test "Test Smoke test Enrollment from case - Broker" --loglevel TRACE --outputdir "Reports\SG\enr" robot-tests\sg\sgenrollment
python -m robot.run -A local_args.txt --include smokeANDsgANDquote --exclude draft --loglevel TRACE --outputdir "Reports\stg\qt" robot-tests
python -m robot.run -A local_args.txt --include smokeANDsgANDenrollment --exclude draft --loglevel TRACE --outputdir "Reports\stg\enr" robot-tests


::Execution run
::python -m robot.run -A local_args.txt --outputdir "Reports" src/test/resources/robot-tests/sguserstories/sg_us_028919.txt

::
::python -m robot.run -A local_args.txt src/test/resources/