# Игра "Камень-Ножницы-Бумага"

Игра написана с помощью `rails 5.1.4`.

Для запуска:

    bundle exec rails s

Игроки одновременно выбирают один из трех предметов: камень, ножницы или бумагу.

Победитель определяется по следующим правилам:

    Камень побеждает ножницы («камень слишком крепок для ножниц»)
    Бумага побеждает камень («бумага накрывает камень»)
    Ножницы побеждают бумагу («ножницы разрезают бумагу»)

Если игроки показали одинаковый знак, то засчитывается ничья и игра переигрывается.

Подробнее можно почитать [тут](https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%BC%D0%B5%D0%BD%D1%8C,_%D0%BD%D0%BE%D0%B6%D0%BD%D0%B8%D1%86%D1%8B,_%D0%B1%D1%83%D0%BC%D0%B0%D0%B3%D0%B0)

Сыграть в "Камень-Ножницы-Бумага" можно [здесь](http://r-s-p-game.herokuapp.com/)
