# Разписани теми и задачи за ДИ

[![CI](https://github.com/v--/se2018/workflows/Build/badge.svg)](https://github.com/v--/se2018/actions?query=workflow%3ABuild)

Това е хранилище за .tex файлове за учебни материали за летен държавен изпит 2019 (който всъщност е поправка за ДИ 2018) за спец. статистика във ФМИ на СУ. Актуални PDF файлове могат да бъдат намерени [тук](https://ivasilev.net/files/ДИ2018). Темите включват и основни задачи, свързани с материала.

Всякакъв вид сътрудничество е добре дошло, препоръчително чрез "Issues" или "Pull request" системите на GitHub. Съдържанието е лицензирано под CC0, така че всякакви копия и модификации на файловете са напълно законни и етични.

## Информация за ДИ

* [Агрегирана информация](https://www.fmi.uni-sofia.bg/sites/default/files/documents/exams/info_state_exam_01.09.2017pdf.pdf)
* [Конспект](https://intranet.fmi.uni-sofia.bg/index.php/s/KOTdUnmqbrnd0sX)
* [Теми, давани на ДИ](https://www.fmi.uni-sofia.bg/bg/node/7347)

## Източници

Източниците за всеки един от материалите е посочен в съответният файл. Някои полезни връзки:

* [Учебници на сайта на ФМИ](https://www.fmi.uni-sofia.bg/bg/econtent)
* [Учебни материали от следването ми](https://ivasilev.net/files/ФМИ)
* [Учебни материали за ДИ на Х. Марков](https://github.com/hristiyanmarkov/stat_di)
* [Разписани лекции за някои предмети](https://debian.fmi.uni-sofia.bg/study/materials/va/)

## Построяване

Поради спецификите на някои UNIX инструменти, имената на изходните файлове в `topics/` съдържат само номерата на темите. Файловете в `named/` са symlink-ове към `index.pdf` в съответните директории в `topics/` (които файлове се създава при построяване). Имената на файловете в `named/` са базирани на имената на темите, но не съвпадат тях.

За да се поддържат публично достъпните PDF файлове се използва системата GitHub Actions.

За да си построите PDF файловете, можете да използвате [GNU Make](https://www.gnu.org/software/make/), да използвате директно [latexmk](https://mg.readthedocs.io/latexmk.html) или даже специализиран TeX редактор като [TeXstudio](https://www.texstudio.org/).

```bash
# За построяване на всички цели
make
# За индивидуални цели
make build/01.pdf
# За зачистване на всичко построено
make clean
```

## Допълнителен софтуер

При възможност си проверявам решените задачи и разни други сметки със софтуер. Даже си проверявам и частни случаи на някои теореми.

* [SageMath](http://www.sagemath.org/) за символни сметки (например за диференциране и антидиференциране) и разни графики.
* [random](https://docs.python.org/3/library/random.html) модулът в python 3 за Монте-Карло симулации. Полезни са за проверки на задачи по теория на вероятностите и сродни дисциплини. Писал съм си и собствени генератори на псевдослучайни числа и симулации на разни разпределения [тук](https://github.com/v--/nsm).
* [numpy](http://www.numpy.org/) за сметки с матрици.
* [scipy](https://scipy.org/), в частност [linprog](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.linprog.html) за симплекс метода.
* [GeoGebra](https://www.geogebra.org/) за геометрични построения и графики.
