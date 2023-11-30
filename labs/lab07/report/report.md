---
## Front matter
title: "Отчёта по лабораторной работе №7"
subtitle: "НПИ-03-23"
author: "Махмудов Суннатилло Баходир угли"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы


Изучение команд условного и безусловного переходов. Приобретение навыков написания
программ с использованием переходов. Знакомство с назначением и структурой файла
листинга.



# Задание


Реализация переходов в NASM.

Изучение структуры файлы листинга.

Задание для самостоятельной работы.


# Теоретическое введение


Для реализации ветвлений в ассемблере используются так называемые команды передачи
управления или команды перехода. Можно выделить 2 типа переходов:
• условный переход – выполнение или не выполнение перехода в определенную точку
программы в зависимости от проверки условия.
• безусловный переход – выполнение передачи управления в определенную точку про-
граммы без каких-либо условий.


# Выполнение лабораторной работы


 Реализация переходов в NASM



 Создал каталог для программам лабораторной работы № 7, перейдите в него и со-
здайте файл lab7-1.asm: (рис. @fig:001).


![файл lab7-1.asm](image/1.jpg){#fig:001 width=70%}



Перешол в него и создал файл lab7-1.asm: (рис. @fig:002).


![файл lab7-1.asm](image/1.1.jpg){#fig:002 width=70%}


Инструкция jmp в NASM используется для реализации безусловных переходов. 
Ввел в файл lab7-1.asm текст программы из листинга 7.1. (рис. @fig:003).


![текст программы из листинга 7.1.](image/2.jpg){#fig:003 width=70%}




Создал исполняемый файл и запустил его. Результат работы данной программы будет
следующим:(рис. @fig:004).


![Результат работы данной программы](image/2.1.jpg){#fig:004 width=70%}



Инструкция jmp позволяет осуществлять переходы не только вперед но и назад. Изменим
программу таким образом, чтобы она выводила сначала ‘Сообщение № 2’, потом ‘Сообщение
№ 1’ и завершала работу. Для этого в текст программы после вывода сообщения № 2 добавим
инструкцию jmp с меткой _label1 (т.е. переход к инструкциям вывода сообщения № 1)
и после вывода сообщения № 1 добавим инструкцию jmp с меткой _end (т.е. переход к
инструкции call quit). 


Изменил текст программы в соответствии с листингом 7.2.(рис. @fig:005)


![Текс](image/2.2.jpg){#fig:005 width=70%}



На текст программы добавив или изменив инструкции jmp, чтобы вывод программы был следующим:(рис. @fig:006)


![Результат работы данной программы](image/2.3.jpg){#fig:006 width=70%}


![Результат работы данной программы](image/888.jpg){#fig:007 width=70%}


Создал файл lab7-2.asm в каталоге ~/work/arch-pc/lab07.(рис. @fig:008)


![Файл lab7-2.asm](image/3.jpg){#fig:008 width=70%}



На файл lab7-2.asm ввел текс из листинга 7.3.(рис. @fig:008)


![Файл lab7-2.asm](image/3.1.jpg){#fig:009 width=70%}


Изучение структуры файлы листинга.


Обычно nasm создаёт в результате ассемблирования только объектный файл. Получить
файл листинга можно, указав ключ -l и задав имя файла листинга в командной строке.



Создал файл листинга для программы из файла lab7-2.asm (рис. @fig:0010)



![Для программи файл](image/4.jpg){#fig:0010 width=70%}



Откройте файл листинга lab7-2.lst с помощью любого текстового редактора, например
mcedit:


Открил файл с помощю (mcedit:)(рис. @fig:0011)


![Открито файл lab7-2.lst](image/4.1.jpg){#fig:0011 width=70%}


Открил файл с программой lab7-2.asm и удалил один операнд.(рис. @fig:0012)


![файл lab7-2.asm](image/9.jpg){#fig:0012 width=70%}



Выполнил трансляцию с получением файла листинга:(рис. @fig:0013)


![файл lab7-2.asm](image/4.2.jpg){#fig:00133 width=70%}




#Задание для самостоятельной работы



Написал программу нахождения наименьшей из 3 целочисленных переменных 𝑎,𝑏 и .
Значения переменных выбрал из табл. 7.5 в соответствии с вариантом, полученным
при выполнении лабораторной работы № 7. 



Создал исполняемый файл (рис. @fig:0014)


![Создал файл lab7-3.asm](image/5.jpg){#fig:0014 width=70%}



Написал свою вариант на файл lab7-3.asm (рис. @fig:0014)




![Свой ваиант](image/5.1.jpg){#fig:0015 width=70%}



Проверял работу (рис. @fig:0016)




![Проверял](image/5.2.jpg){#fig:0016 width=70%}



# Выводы

Я выучил команды условного и безусловного перехода. Овладение навыками письма
программы, использующие переходы. Я определил назначение и структуру файла.

# Список литературы{.unnumbered}


