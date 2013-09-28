#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on
::python -m robot.run -A local_args.txt --test "Test Smoke test Quote - Broker" --loglevel TRACE --outputdir "Reports\SG" robot-tests\sg\sgquote
::python -m robot.run -A local_args.txt --test "Test Smoke test Enrollment - Broker" --loglevel TRACE --outputdir "Reports" robot-tests\sg\sgenrollment
::python -m robot.run -A local_args.txt --test "Test Smoke test - Producer completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A local_args.txt --test "Test Smoke test - Consumer completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping" robot-tests\shopping
::python -m robot.run -A local_args.txt --test "Test Smoke test - Producer completes shopping - Primary" --loglevel TRACE --outputdir "Reports\shopping\broker" robot-tests\shopping
::python -m robot.run -A local_args.txt --test "Test Smoke test Enrollment via Quote - Broker" --loglevel TRACE --outputdir "Reports" robot-tests\sg\sgenrollment
::python -m robot.run -A local_args.txt --test "Test Smoke test Quote from case - Broker" --loglevel TRACE --outputdir "Reports\SG\quote1" robot-tests\sg\sgquote
python -m robot.run -A local_args.txt --include smokeANDsgANDquote --exclude draft --loglevel TRACE --outputdir "Reports\qa\qt" robot-tests
::python -m robot.run -A local_args.txt --include smokeANDshopping --exclude draft --loglevel TRACE --outputdir "Reports" robot-tests

::python -m robot.run -A local_args.txt src/test/resources/