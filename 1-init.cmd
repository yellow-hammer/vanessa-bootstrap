@chcp 65001

@rem Сборка основной разработческой ИБ. по умолчанию в каталоге build/ib
call oscript_modules\bin\vrunner.bat init-dev --src src/cf %*

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call oscript_modules\bin\vrunner.bat loadrepo %*
@rem call oscript_modules\bin\vrunner.bat updatedb %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call oscript_modules\bin\vrunner.bat compileepf src/epf/МояВнешняяОбработка build %*
@rem call oscript_modules\bin\vrunner.bat compileepf src/erf/МойВнешнийОтчет build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call oscript_modules\bin\vrunner.bat compileext src/cfe/МоеРасширение МоеРасширение %*

@rem Обновление в режиме Предприятия
call oscript_modules\bin\vrunner.bat run --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" --execute $runnerRoot\epf\ЗакрытьПредприятие.epf %*
