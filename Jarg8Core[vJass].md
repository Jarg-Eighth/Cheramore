
### General.jass `[Library General]`
Функция | Описание
------------ | -------------
B2I( boolean ) => integer | Логическое в целоев
B2R( boolean ) => real | Логическое в вещественное
B2S( boolean ) => string | Логическое строку ( для debug )
GetPointZ( real, real ) => real | Получение высоты Z в координатах X,Y
limx( integer, integer ) => integer | Ограничение числа до наибольшего
limm( integer, integer ) => integer | Ограничение числа до наименьшего
lims( integer, integer, integer ) => integer | Ограничение числа от наименьшего для наибольшего

### Soundator.jass `[Library Soundator]`
#### → playlist struct
Функция | Описание
------------ | -------------
playlist.create() => playlist | Создание нового плейлиста
$var$.add( sring, real ) => integer | Добавляет трэк в список плейлиста, возвращает позицию трэка в списке
$var$.stop() | Останавливает текущую музыку
$var$.play() | Прогрывает последний указанный или первый трэк
$var$.playById( integer ) => integer | Проигрывает трэк по индексу в списке
$var$.settrack( integer )| Устанавливает позицию трэка, который нужно проиграть
$var$.setrandom()| Устанавливает случайную позицию трэка, которая будет проиграна
$var$.startlist()| Запускает плейлист, что листает треки поочерёдно.
$var$.stoplist()| Останавливает плейлист, а также текущую музыку
$var$.destroy()| Удаляет плейлист
$var$.destroyex()| Удаляет плейлист, а также останавливает текущую музыку
