
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
$var$.add( sring, real ) => integer | Добавляет трэк в список плейлиста, вовзращает позиция трэка в списке
