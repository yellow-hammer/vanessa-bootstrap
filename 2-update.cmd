@chcp 65001

@rem обновление конфигурации основной разработческой ИБ без поддержки или на поддержке. по умолчанию в каталоге build/ib
call oscript_modules\bin\vrunner.bat update-dev --src src/cf --disable-support

@rem обновление конфигурации основной разработческой ИБ из хранилища. для включения раскомментируйте код ниже
@rem call oscript_modules\bin\vrunner.bat loadrepo %*
@rem call oscript_modules\bin\vrunner.bat updatedb %*

@rem собрать внешние обработчики и отчеты в каталоге build
@rem call oscript_modules\bin\vrunner.bat compileepf src/epf/МояВнешняяОбработка build %*
@rem call oscript_modules\bin\vrunner.bat compileepf src/erf/МойВнешнийОтчет build %*

@rem собрать расширения конфигурации внутри ИБ
@rem call oscript_modules\bin\vrunner.bat compileext src/cfe/МоеРасширение МоеРасширение %*

@rem обновление в режиме Предприятие
call oscript_modules\bin\vrunner.bat run --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" --execute $runnerRoot\epf\ЗакрытьПредприятие.epf %*
