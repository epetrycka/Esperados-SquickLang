Program wypisuje Czesc i imiona z listy

Saluton

variablo listo Lista asigini []

gis (vere) {
    skribi("Podaj imie: ")
    variablo text asigini inputo()
    se (text egala "0"){
        skribi("Koniec listy")
        haltu
    }
    Lista aldoni text
}

difini salutu(listo: names){
    por ciu name en names{
        se (names egala ""){
            reveni malvero
        } alie {
            skribi("Saluton: ", name)
        }
    }
}

funcio salutu (names = Lista)

Adiau