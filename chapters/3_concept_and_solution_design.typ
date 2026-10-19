= Koncepcja i projekt rozwiązania <chapter-concept-and-solution-design>

// TODO: Przedstaw koncepcję rozwiązania oraz jego projekt.

== Wymagania funkcjonalne i przypadki użycia

// TODO: Wypisz wymagania funkcjonalne i opisz przypadki użycia.

== Wymagania niefunkcjonalne

// TODO: Opisz wymagania niefunkcjonalne.

== Uzasadnienie wyboru stosu technologicznego

// TODO: Uzasadnij wybór technologii.

== Architektura systemu

// TODO: Opisz architekturę systemu.

== Projekt bazy danych

// TODO: Przedstaw projekt bazy danych.

== Projekt interfejsu i makiety

Podstawowym założeniem projektu jest możliwość dostosowania wyglądu strony publicznej przez artystę. W związku z tym przedmiotem projektowania nie była jedna, konkretna szata graficzna, tylko system zasad, który przy dowolnych ustawieniach wybranych przez artystę pozwala uzyskać spójną stronę. W ramach tego systemu wyróżnione są dwie warstwy: stała, obejmująca strukturę stron, hierarchię treści oraz budowę komponentów, a także zmienna, obejmująca kroje pisma, kolorystykę i wybrane cechy wyglądu. Przedstawione w niniejszym podrozdziale makiety prezentują zatem jedną z możliwych konfiguracji.

Personalizacji nie podlega panel artysty. Otrzymał on stały wygląd, więc zmiany na stronie publicznej nie utrudniają artyście korzystania z samego panelu.

=== Warstwa stała

Niezmienna pozostaje struktura wszystkich podstron części publicznej, złożona z nagłówka, obszaru treści oraz stopki. Stałe położenie nawigacji i danych kontaktowych sprawia, że odwiedzający stronę zawsze wie, gdzie szukać najważniejszych informacji. Układ jest przy tym zgodny z konwencjami znanymi z innych witryn: menu znajduje się u góry strony, a dane kontaktowe w stopce.

Nagłówek i stopka pełnią różne funkcje: pierwszy służy do poruszania się po stronie, druga zachęca do nawiązania kontaktu z artystą. W nagłówku znajduje się logo, którym jest imię i nazwisko artysty zapisane zwykłym tekstem. Logo jest jednocześnie linkiem do strony głównej. Ponadto nagłówek zawiera menu nawigacyjne, umożliwiające przejście do poszczególnych części strony („O mnie”, „Portfolio”, „Kontakt”), a także przełącznik wersji językowej (PL/EN). Stopka zawiera dane kontaktowe artysty, w tym linki do jego profili w mediach społecznościowych oraz hasło zachęcające do kontaktu.

Ponieważ dane kontaktowe są dostępne w stopce każdej podstrony, w projekcie zrezygnowano z osobnej podstrony kontaktowej, a pozycja „Kontakt” w menu prowadzi do sekcji „Skontaktuj się ze mną” na stronie „O mnie”. Dane te ograniczają się do adresu e-mail i linków do mediów społecznościowych, dlatego osobna podstrona zawierałaby niewiele treści. Umieszczenie ich na tej samej stronie co opis artysty sprawia natomiast, że odwiedzający, który zapoznał się z sylwetką artysty, od razu otrzymuje możliwość nawiązania z nim kontaktu.

Swoboda w doborze krojów pisma i kolorów niesie ze sobą ryzyko, że odwiedzający nie będzie w stanie odróżnić elementów najistotniejszych od tych mniej ważnych. Dlatego, o ile artysta ma wpływ na wygląd tekstu i kolorystykę strony, o tyle kolejność i ranga poszczególnych elementów treści pozostają niezmienne. Każda sekcja rozpoczyna się dużym nagłówkiem zakończonym kropką, np. „Wybrane prace.” na stronie głównej czy „Moje prace.” na stronie portfolio, który jednoznacznie wskazuje, czego dotyczy dana część strony. Stały porządek obowiązuje również na stronie pojedynczej pracy: kategoria i data poprzedzają tytuł pracy, po którym następują tagi, a następnie opis podzielony na części „Technika i materiały” oraz „O projekcie”. Artysta może zmienić krój pisma tytułu, ale nie jego wielkość względem pozostałych elementów, dzięki czemu tytuł zawsze będzie wyróżniał się na tle pozostałej treści.

Opisane zasady obejmują również powtarzalne elementy strony, takie jak kafelki na stronie głównej, karty prac w portfolio czy etykiety tagów, które na każdej podstronie mają tę samą budowę. Ustawienie wprowadzone przez artystę w panelu zmienia zatem wygląd wszystkich wystąpień danego elementu jednocześnie, bez konieczności edytowania poszczególnych podstron. W efekcie, niezależnie od wybranej konfiguracji, strona zachowuje spójny układ, a artysta może skupić się na doborze stylistyki zamiast na projektowaniu każdej podstrony od podstaw.

=== Warstwa zmienna

Zakres zmian dostępnych dla artysty został celowo ograniczony do kilku parametrów, które w największym stopniu wpływają na charakter strony, ale nie naruszają jej układu. Obejmują one typografię, kolorystykę, gotowe motywy oraz dodatkowe opcje dotyczące wyglądu elementów strony. Wszystkie te zmiany artysta wprowadza w jednym miejscu - na stronie „Układ i Personalizacja” w panelu artysty, którego projekt został przedstawiony w dalszej części rozdziału. Zapisane ustawienia od razu pojawiają się na stronie publicznej, więc artysta może łatwo sprawdzić efekt wprowadzonych zmian. Na tym samym ekranie jest również układ kafelków strony głównej, jednak ze względu na jego złożoność został on omówiony osobno, w podrozdziale poświęconym edytorowi układu Bento Box.

Kroje pisma artysta wybiera z zamkniętej listy, a nie spośród wszystkich fontów dostępnych w internecie. Pozwala to wcześniej sprawdzić, czy każdy z nich poprawnie wyświetla polskie znaki diakrytyczne, a także przygotować pliki fontów po stronie serwera aplikacji. Pliki te ograniczone są do znaków alfabetu łacińskiego wraz z rozszerzeniem obejmującym polskie litery oraz do kilku wybranych grubości, dzięki czemu ich rozmiar pozostaje niewielki niezależnie od wyboru artysty. Wybór obejmuje trzy role: krój podstawowy, stosowany w nagłówkach i logo, krój pomocniczy, przeznaczony dla elementów nawigacji, tekstu pomocniczego i wyróżnień, oraz krój dodatkowy, używany w tekście głównym.

Artysta nie ustala koloru każdego elementu strony osobno - wybiera jedynie trzy kolory bazowe, z których pozostałe odcienie wyprowadzane są automatycznie. Kolor tekstu stosowany jest w treści głównej oraz w nagłówkach, kolor tła stosowany jest na wszystkich podstronach, a kolor akcentu używany jest do wyróżnienia drobnych elementów, takich jak krótkie podpisy nad tytułami prac czy odnośniki po najechaniu na nie kursorem. Pozostałe odcienie, m.in. kolor tekstu pomocniczego czy obramowań, powstają przez zmieszanie kolorów bazowych w ustalonych proporcjach, dzięki czemu zawsze pasują do wyborów artysty. Nagłówki nie mają osobnego koloru, ponieważ od tekstu głównego odróżnia je wielkość oraz krój pisma.

W panelu dostępne są również trzy gotowe motywy: „Domyślny”, „Ciemny” oraz „Jasny”. Każdy z nich to zestaw trzech kolorów bazowych oraz krojów pisma. Po wybraniu motywu pola kolorów i krojów w panelu wypełniają się automatycznie, a artysta może je następnie zmienić według własnego uznania. Motyw jest więc punktem wyjścia: artysta szybko uzyskuje spójny wygląd strony bez samodzielnego dobierania każdego parametru, a jeśli zechce, może na jego podstawie stworzyć własny zestaw ustawień. Motyw domyślny za to ma celowo stonowaną, neutralną kolorystykę, aby nie konkurowała ona z kolorami prezentowanych prac.

=== Makiety części publicznej

Część publiczna składa się z czterech rodzajów podstron: strony głównej, portfolio, strony pojedynczej pracy oraz strony „O mnie”. Ich makiety przygotowano w programie Figma dla szerokości ekranu 1440 px, czyli w wersji na komputery.

==== Strona główna

Strona główna jest wizytówką artysty i pierwszą stroną, którą widzi odwiedzający. Zaczyna się od razu od prac. Pod nagłówkiem strony nie umieszczono banera ani tekstu powitalnego, ponieważ w portfolio najważniejsza jest twórczość, a informacje o artyście znajdują się na stronie „O mnie”. Jedyną sekcją jest „Wybrane prace.”, w której prezentowane są prace wskazane przez artystę (@fig-home).

#figure(
  image("../img/home.png", width: 100%),
  caption: [Makieta strony głównej],
) <fig-home>

Prace ułożone są w siatce typu Bento, złożonej z kafelków o różnych rozmiarach. W odróżnieniu od siatki równych kafelków pozwala ona wyeksponować najważniejsze prace oraz dopasować kształt do proporcji dzieła, np. umieścić pionowy obraz w wysokim kafelku. Każdy kafelek wypełniony jest zdjęciem pracy, na którym znajdują się jej tytuł, rok wykonania i tagi, a kliknięcie dowolnego miejsca kafelka prowadzi do strony pracy. Aby praca była dobrze widoczna, wyświetlane są na kafelku najwyżej trzy tagi. Tekst na zdjęciu jest zawsze biały i umieszczony na ciemnym gradiencie u dołu kafelka, więc pozostaje czytelny niezależnie od zdjęcia i od kolorów wybranych przez artystę. Układ kafelków artysta ustala osobno dla komputerów i telefonów, a sposób jego tworzenia opisano w podrozdziale poświęconym edytorowi układu Bento Box.

==== Portfolio

Strona portfolio zawiera pełną listę prac artysty. Nie pojawiają się na niej prace, które artysta oznaczył w panelu jako ukryte. Pod nagłówkiem „Moje prace.” znajdują się filtry kategorii i tagów, a poniżej karty prac oraz przycisk „Załaduj więcej” (@fig-portfolio).

#figure(
  image("../img/portfolio.png", width: 100%),
  caption: [Makieta strony portfolio],
) <fig-portfolio>

Prace można filtrować według jednej kategorii oraz dowolnej liczby tagów. Wybranie więcej niż jednego tagu powoduje, że wyświetlane są prace oznaczone wszystkimi wybranymi tagami. Lista tagów zależy od wybranej kategorii i obejmuje tylko te, które występują w należących do niej pracach. Wybrane filtry zapisywane są w adresie strony, więc odwiedzający może przesłać komuś link do przefiltrowanej listy, a po odświeżeniu strony wybór nie zostaje utracony.

Każda praca prezentowana jest w formie karty zawierającej okładkę, tytuł, rok wykonania oraz tagi. Okładką zostaje pierwsze zdjęcie ustawione przez artystę podczas dodawania pracy. Prace uporządkowane są od najnowszych według roku wykonania. Na początku widocznych jest dwanaście prac, a każde kliknięcie przycisku „Załaduj więcej” dodaje kolejne dwanaście. Odwiedzający nie musi więc przechodzić między numerowanymi stronami, tylko może wczytywać kolejne prace w tym samym widoku. Kategorie, które nie zawierają żadnej pracy, nie są wyświetlane w filtrach, a jeśli w danej kategorii nie ma żadnej pracy spełniającej wybrane filtry tagów, wyświetlany jest komunikat „Brak prac spełniających kryteria wyszukiwania”.

Karty prac ułożone są w kolumnach, w układzie typu _masonry_, znanym m.in. z serwisu Pinterest. Zdjęcia nie są przycinane do jednego formatu. Każde z nich zostaje zmniejszone tak, aby jego szerokość odpowiadała szerokości kolumny, a wysokość wynika z proporcji zdjęcia. Karty mają więc różną wysokość i w obrębie kolumny układają się bezpośrednio jedna pod drugą. W siatce Bento na stronie głównej zdjęcie dopasowywane jest do kształtu kafelka, więc jego brzegi mogą zostać obcięte. Na stronie portfolio odwiedzający widzi całą pracę, co ma znaczenie szczególnie przy pracach o nietypowych proporcjach, np. wąskich pionowych obrazach czy panoramicznych fotografiach. W odróżnieniu od strony głównej artysta nie musi niczego tu ustawiać, a nowo dodane prace same pojawiają się w kolumnach.

==== Strona pracy

Każda praca ma własną podstronę, na którą odwiedzający trafia po kliknięciu kafelka na stronie głównej lub karty w portfolio. Strona podzielona jest na dwie kolumny: szersza lewa przeznaczona jest na zdjęcia pracy, a prawa zawiera jej opis (@fig-praca).

#figure(
  image("../img/praca.png", width: 100%),
  caption: [Makieta strony pojedynczej pracy],
) <fig-praca>

Zdjęcia pracy prezentowane są w formie galerii. Na górze znajduje się duże zdjęcie główne, a poniżej miniatury maksymalnie trzech kolejnych zdjęć. Jeżeli zdjęć jest więcej, na ostatniej miniaturze wyświetlany jest tekst informujący o ich liczbie. Po kliknięciu zdjęcie wyświetla się w powiększeniu na całym ekranie. W tym trybie odwiedzający może przechodzić między wszystkimi zdjęciami pracy. Podgląd zamyka się kliknięciem poza obszarem zdjęcia.

Kolejność informacji w prawej kolumnie wynika z opisanej wcześniej hierarchii treści. Nad tytułem znajdują się kategoria i rok wykonania pracy, a pod nim tagi. Niżej, między liniami oddzielającymi, podane są wymiary. Opis pracy podzielony jest na dwie części. W części „Technika i materiały” artysta podaje krótkie informacje techniczne, a w części „O projekcie” może szerzej opisać kontekst powstania pracy i swoje założenia. Odwiedzający, którego interesuje jedynie technika wykonania, nie musi więc szukać jej w dłuższym tekście. Elementy, których artysta nie uzupełnił, np. wymiary czy opis techniki, nie są wyświetlane, więc na stronie nie pojawiają się puste nagłówki.

Pod zdjęciami i opisem znajduje się odnośnik „Zobacz kolejny” z tytułem następnej pracy. Pozwala on przejść do kolejnej pracy bez powrotu do portfolio. Po ostatniej pracy odnośnik prowadzi z powrotem do pierwszej, a jeśli artysta ma tylko jedną widoczną pracę, nie jest on wyświetlany.

==== O mnie

Strona „O mnie” jest miejscem, w którym artysta przedstawia samego siebie. Na jej górze znajduje się duży nagłówek złożony z imienia i nazwiska artysty oraz napisu „O mnie”. Poniżej znajduje się krótkie wprowadzenie, w którym artysta opisuje, czym się zajmuje. Obok niego umieszczono zdjęcie artysty. Portret nie jest wymagany i jeżeli artysta go nie doda, strona wyświetli się bez niego.

#figure(
  image("../img/o_mnie.png", width: 100%),
  caption: [Makieta strony „O mnie”],
) <fig-o-mnie>

Opis artysty składa się z kilku akapitów, a ich miejsce na stronie wynika z kolejności. Sposób wprowadzania opisu omówiono przy makiecie profilu w panelu artysty. Krótkim wprowadzeniem jest pierwszy akapit opisu, a pozostałe tworzą dłuższy opis umieszczony niżej. Jeśli opis składa się z jednego akapitu, dłuższa sekcja nie jest wyświetlana.

Stronę zamyka sekcja „Skontaktuj się ze mną.”, do której prowadzi pozycja „Kontakt” w menu. Zawiera ona krótki tekst zachęcający do kontaktu, adres e-mail artysty oraz odnośniki do jego profili w mediach społecznościowych. Kliknięcie adresu e-mail otwiera program pocztowy, a profile otwierają się w nowej karcie przeglądarki, więc strona artysty pozostaje otwarta i odwiedzający może łatwo do niej wrócić. Jeśli artysta nie dodał żadnych linków do mediów społecznościowych, ta część sekcji nie jest wyświetlana.

=== Makiety panelu artysty

==== Przegląd

==== Lista prac

==== Dodawanie i edycja pracy

==== Kategorie i tagi

==== Układ i personalizacja

==== Profil

=== Powiązanie z wymaganiami

== Specyfikacja routingu

// TODO: Opisz specyfikację routingu.

== Koncepcja edytora układu Bento Box

// TODO: Przedstaw koncepcję edytora układu Bento Box.
