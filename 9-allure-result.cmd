@chcp 65001

@rem формирование allure отчета
call allure generate build/out/syntax-check/allure build/out/smoke/allure build/out/allure -c -o build/allure-report 
allure open build/allure-report
