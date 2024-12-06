@chcp 65001

@rem формирование файла конфигурации. для включения раскомментируйте код ниже
call oscript_modules\bin\vrunner.bat compile --src src/cf --out build/1cv8.cf %*

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call oscript_modules\bin\vrunner.bat loadrepo %*
@rem call oscript_modules\bin\vrunner.bat updatedb %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call oscript_modules\bin\vrunner.bat compileepf src/epf/МояВнешняяОбработка build %*
@rem call oscript_modules\bin\vrunner.bat compileepf src/erf/МойВнешнийОтчет build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call oscript_modules\bin\vrunner.bat compileext src/cfe/МоеРасширение МоеРасширение %*
