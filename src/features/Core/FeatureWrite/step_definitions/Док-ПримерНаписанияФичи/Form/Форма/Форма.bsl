﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;
 
&НаКлиенте
Перем Контекст Экспорт;
 
&НаКлиенте
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"НаДискеПоявляетсяFeature_файл()","НаДискеПоявляетсяFeature_файл","Тогда На диске появляется feature-файл");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЗапустилсяNotepad()","ЗапустилсяNotepad","Тогда запустился Notepad++");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПишуТекстFeature_файла()","ЯПишуТекстFeature_файла","И Я пишу текст feature-файла");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЭмулируюНаборТекстаИзФайла(Парам01)","ЯЭмулируюНаборТекстаИзФайла","И я эмулирую набор текста из файла ""файл""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЗапустилсяAtom()","ЗапустилсяAtom","Тогда запустился Atom");
	ДобавитьШагВМассивТестов(ВсеТесты,"СформироватьИмяВременногоФайлаФичи(Парам01)","СформироватьИмяВременногоФайлаФичи","Когда Сформировать имя временного файла фичи ""Example1""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюТекстовыйРедактор()","ЯОткрываюТекстовыйРедактор","Когда Я открываю текстовый редактор");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЗапустилсяРедакторVisualStudioCode()","ЗапустилсяРедакторVisualStudioCode","Тогда запустился редактор Visual Studio Code");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПишуЗаголовокФичи()","ЯПишуЗаголовокФичи","И Я пишу заголовок фичи");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПишуСекциюКонтекст()","ЯПишуСекциюКонтекст","И Я пишу секцию Контекст");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПишуСекциюСценарий()","ЯПишуСекциюСценарий","И Я пишу секцию Сценарий");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПишуСекциюСтруктураСценария()","ЯПишуСекциюСтруктураСценария","И Я пишу секцию Структура сценария");
	ДобавитьШагВМассивТестов(ВсеТесты,"СохраняюСделанныеИзменения()","СохраняюСделанныеИзменения","И Сохраняю сделанные изменения");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры


&НаКлиенте
//Я открываю текстовый редактор
//@ЯОткрываюТекстовыйРедактор()
Процедура ЯОткрываюТекстовыйРедактор() Экспорт
	Команда = ПолучитьСтрокуВызоваSikuli() + Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WriteText.sikuli 1";

	Результат = ВыполнитьКомандуОС(Команда);
	
	Ванесса.ПроверитьРавенство(Результат, 0 , "Выполнен шаг ЯОткрываюТекстовыйРедактор");
КонецПроцедуры

&НаКлиенте
//Я пишу текст feature-файла
//@ЯПишуТекстFeature_файла()
Процедура ЯПишуТекстFeature_файла() Экспорт
	Ванесса.Шаг("И я эмулирую набор текста из файла """ + Ванесса.Объект.КаталогИнструментов + "\features\Core\FeatureWrite\Demo._feature" + """");
КонецПроцедуры

&НаКлиенте
//Сохраняю сделанные изменения
//@СохраняюСделанныеИзменения()
Процедура СохраняюСделанныеИзменения() Экспорт
	//Команда = ПолучитьСтрокуВызоваSikuli() + Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WriteText.sikuli 3 """ + Контекст.ИмяВременнойФичи + "";
	//Результат = ВыполнитьКомандуОС(Команда);
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WriteText.sikuli 3 """ + Контекст.ИмяВременнойФичи);
	Ванесса.ПроверитьРавенство(Результат, 0 , "Выполнен шаг СохраняюСделанныеИзменения");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции();
	
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WriteText.sikuli 4 """);
КонецПроцедуры

&НаКлиенте
//на диске появляется feature-файл
//@НаДискеПоявляетсяFeature_файл()
Процедура НаДискеПоявляетсяFeature_файл() Экспорт
	ПроверяемыйФайл = Новый Файл(Контекст.ИмяВременнойФичи);
	
	Ванесса.ПроверитьИстину(ПроверяемыйФайл.Существует(), "");
КонецПроцедуры

&НаКлиенте
Функция ПолучитьСтрокуВызоваSikuli()
	Возврат """C:\Program Files (x86)\Java\jre6\bin\java.exe"" -Xms64M -Xmx512M -Dfile.encoding=UTF-8 -Dpython.path=""C:\Program Files (x86)\Sikuli Xi\sikuli-script.jar/"" -jar ""C:\Program Files (x86)\Sikuli X\sikuli-ide.jar"" -r ";
КонецФункции	

&НаКлиенте
Функция ВыполнитьКомандуОС(Стр)
	ИмяВременногоBAT = ПолучитьИмяВременногоФайла("bat");

	ЗТ = Новый ЗаписьТекста(ИмяВременногоBAT,КодировкаТекста.ANSI,,Истина); 

	ЗТ.ЗаписатьСтроку(Стр); 
	ЗТ.Закрыть();
	
	WshShell = Новый COMОбъект("WScript.Shell");

	Рез = WshShell.Run(ИмяВременногоBAT,0,-1);
	WshShell = Неопределено;
	
	Возврат Рез;
КонецФункции

&НаКлиенте
//Когда Сформировать имя временного файла фичи "Пример1"
//@СформироватьИмяВременногоФайлаФичи(Парам01)
Процедура СформироватьИмяВременногоФайлаФичи(ИмяФайла) Экспорт
	Контекст.Вставить("ИмяВременнойФичи", "C:\Temp\" + ИмяФайла + "._feature");	

	ПроверяемыйФайл = Новый Файл(Контекст.ИмяВременнойФичи);
	Если ПроверяемыйФайл.Существует() Тогда
		УдалитьФайлы(Контекст.ИмяВременнойФичи);
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
//Тогда запустился Notepad++
//@ЗапустилсяNotepad()
Процедура ЗапустилсяNotepad() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\NotePadIsOpen.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "NotePad++ открылся.");
КонецПроцедуры

&НаКлиенте
//Тогда запустился Atom
//@ЗапустилсяAtom()
Процедура ЗапустилсяAtom() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\AtomIsOpen.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Atom открылся.");
КонецПроцедуры

&НаКлиенте
//И Я пишу заголовок фичи
//@ЯПишуЗаголовокФичи()
Процедура ЯПишуЗаголовокФичи() Экспорт
	Ванесса.Шаг("И я эмулирую набор текста из файла """ + Ванесса.Объект.КаталогИнструментов + "\features\Core\FeatureWrite\Lib\Example01Header._feature" + """");
КонецПроцедуры

&НаКлиенте
//И Я пишу секцию Контекст
//@ЯПишуСекциюКонтекст()
Процедура ЯПишуСекциюКонтекст() Экспорт
	Ванесса.Шаг("И я эмулирую набор текста из файла """ + Ванесса.Объект.КаталогИнструментов + "\features\Core\FeatureWrite\Lib\Example01Context._feature" + """");
КонецПроцедуры

&НаКлиенте
//И Я пишу секцию Сценарий
//@ЯПишуСекциюСценарий()
Процедура ЯПишуСекциюСценарий() Экспорт
	Ванесса.Шаг("И я эмулирую набор текста из файла """ + Ванесса.Объект.КаталогИнструментов + "\features\Core\FeatureWrite\Lib\Example01Scenario._feature" + """");
КонецПроцедуры

&НаКлиенте
//И Я пишу секцию Структура сценария
//@ЯПишуСекциюСтруктураСценария()
Процедура ЯПишуСекциюСтруктураСценария() Экспорт
	Ванесса.Шаг("И я эмулирую набор текста из файла """ + Ванесса.Объект.КаталогИнструментов + "\features\Core\FeatureWrite\Lib\Example01ScenarioOutline._feature" + """");
КонецПроцедуры

&НаКлиенте
//И я эмулирую набор текста из файла "файл"
//@ЯЭмулируюНаборТекстаИзФайла(Парам01)
Процедура ЯЭмулируюНаборТекстаИзФайла(ИмяФайла) Экспорт
	//Команда = ПолучитьСтрокуВызоваSikuli() + Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WriteText.sikuli 2 """ + ИмяФайла +  """";
	//Результат = ВыполнитьКомандуОС(Команда);
	//Ванесса.ПроверитьРавенство(Результат, 0 , "Выполнен шаг ЯЭмулируюНаборТекстаИзФайла <" + ИмяФайла + ">");
	
	KeyboardType = Ванесса.Объект.КаталогСкриптовСборкиВидео + "\uihelper\KeyboardType\KeyboardType.exe";
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(KeyboardType) Тогда
		ВызватьИсключение "Файл " + KeyboardType + " не найден!";
	КонецЕсли;	 
	
	Команда   = KeyboardType + " typespeed=25 ""filename=" + ИмяФайла + """";
	Результат = Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(Команда);
	Ванесса.ПроверитьРавенство(Результат, 0 , "Выполнен шаг ЯЭмулируюНаборТекстаИзФайла <" + ИмяФайла + ">");
	
КонецПроцедуры

&НаКлиенте
//Тогда запустился редактор Visual Studio Code
//@ЗапустилсяРедакторVisualStudioCode()
Процедура ЗапустилсяРедакторVisualStudioCode() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\VscIsOpen.sikuli""");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Редактор ""Visual Studio Code"" открылся.");
КонецПроцедуры
