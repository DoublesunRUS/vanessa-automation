﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@ExportScenarios
@IgnoreOnCIMainBuild


Функциональность: Я вызываю экспортный сценарий для проверки вставок подсценариев
 

Сценарий: Я вызываю экспортный сценарий для проверки вставок подсценариев

	И Я запоминаю значение выражения '1+1' в переменную "ИмяПеременной1"
	И Я вызываю экспортный сценарий для проверки вставок подсценариев вложенный
	

Сценарий: Я вызваю исключение в подсценарии "ТекстИсключения"
	
	И я вызываю исключение "ТекстИсключения"
	

Сценарий: Я вызваю исключение в подсценарии "ТекстИсключения" уровень один
	
	И я вызываю исключение "ТекстИсключения" уровень два
	
