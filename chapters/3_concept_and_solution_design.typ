= Koncepcja i projekt rozwiązania (Lidia Zawrzykraj) <chapter-concept-and-solution-design>

== Projekt interfejsu i makiety <sec-interfejs>

Podstawowym założeniem projektu jest możliwość dostosowania wyglądu strony publicznej przez artystę. W związku z tym przedmiotem projektowania nie była jedna, konkretna szata graficzna, tylko system zasad, który przy dowolnych ustawieniach wybranych przez artystę pozwala uzyskać spójną stronę. W ramach tego systemu wyróżnione są dwie warstwy: stała, obejmująca strukturę stron, hierarchię treści oraz budowę komponentów, a także zmienna, obejmująca kroje pisma, kolorystykę i wybrane cechy wyglądu. Przedstawione w niniejszym podrozdziale makiety prezentują zatem jedną z możliwych konfiguracji.

Personalizacji nie podlega panel artysty. Otrzymał on stały wygląd, więc zmiany na stronie publicznej nie utrudniają artyście korzystania z samego panelu.

=== Warstwa stała <sec-warstwa-stala>

Niezmienna pozostaje struktura wszystkich podstron części publicznej, złożona z nagłówka, obszaru treści oraz stopki. Stałe położenie nawigacji i danych kontaktowych sprawia, że odwiedzający stronę zawsze wie, gdzie szukać najważniejszych informacji. Układ jest przy tym zgodny z konwencjami znanymi z innych witryn: menu znajduje się u góry strony, a dane kontaktowe w stopce.

Nagłówek i stopka pełnią różne funkcje: pierwszy służy do poruszania się po stronie, druga zachęca do nawiązania kontaktu z artystą. W nagłówku znajduje się logo, którym jest imię i nazwisko, bądź pseudonim artysty zapisane zwykłym tekstem. Logo jest jednocześnie linkiem do strony głównej. Ponadto nagłówek zawiera menu nawigacyjne, umożliwiające przejście do poszczególnych części strony („O mnie”, „Portfolio”, „Kontakt”), a także przełącznik wersji językowej (PL/EN). Stopka zawiera dane kontaktowe artysty, w tym linki do jego profili w mediach społecznościowych oraz hasło zachęcające do kontaktu.

Ponieważ dane kontaktowe są dostępne w stopce każdej podstrony, w projekcie zrezygnowano z osobnej podstrony kontaktowej, a pozycja „Kontakt” w menu prowadzi do sekcji „Skontaktuj się ze mną.” na stronie „O mnie”. Dane te ograniczają się do adresu e-mail i linków do mediów społecznościowych, dlatego osobna podstrona zawierałaby niewiele treści. Umieszczenie ich na tej samej stronie co opis artysty sprawia natomiast, że odwiedzający, który zapoznał się z sylwetką artysty, od razu otrzymuje możliwość nawiązania z nim kontaktu.

Swoboda w doborze krojów pisma i kolorów niesie ze sobą ryzyko, że odwiedzający nie będzie w stanie odróżnić elementów najistotniejszych od tych mniej ważnych. Dlatego, o ile artysta ma wpływ na wygląd tekstu i kolorystykę strony, o tyle kolejność i ranga poszczególnych elementów treści pozostają niezmienne. Sekcje rozpoczynają się dużym nagłówkiem zakończonym kropką, np. „Wybrane prace.” na stronie głównej czy „Moje prace.” na stronie portfolio, który jednoznacznie wskazuje, czego dotyczy dana część strony. Stały porządek obowiązuje również na stronie pojedynczej pracy: kategoria i rok wykonania poprzedzają tytuł pracy, po którym następują tagi, a następnie opis podzielony na części „Technika i materiały” oraz „O projekcie”. Artysta może zmienić krój pisma tytułu, ale nie jego wielkość względem pozostałych elementów, dzięki czemu tytuł zawsze będzie wyróżniał się na tle pozostałej treści.

Opisane zasady obejmują również powtarzalne elementy strony, takie jak kafelki na stronie głównej, karty prac w portfolio czy etykiety tagów, które na każdej podstronie mają tę samą budowę. Ustawienia wprowadzone przez artystę w panelu zmieniają zatem wygląd wszystkich wystąpień danego elementu jednocześnie, bez konieczności edytowania poszczególnych podstron. W efekcie, niezależnie od wybranej konfiguracji, strona zachowuje spójny układ, a artysta może skupić się na doborze stylistyki zamiast na projektowaniu każdej podstrony od podstaw.

=== Warstwa zmienna <sec-warstwa-zmienna>

Zakres zmian dostępnych dla artysty został celowo ograniczony do kilku parametrów, które w największym stopniu wpływają na charakter strony, ale nie naruszają jej układu. Obejmują one typografię, kolorystykę, gotowe motywy oraz dodatkowe opcje dotyczące wyglądu elementów strony. Wszystkie te zmiany artysta wprowadza w jednym miejscu – na stronie „Układ i personalizacja” w panelu artysty, którego projekt przedstawiono w podrozdziale @sec-makiety-panelu. Zapisane ustawienia od razu pojawiają się na stronie publicznej, więc artysta może łatwo sprawdzić efekt wprowadzonych zmian. Na tym samym ekranie jest również układ kafelków strony głównej, jednak ze względu na jego złożoność został on omówiony osobno, w podrozdziale @sec-bento.

Kroje pisma artysta wybiera z zamkniętej listy, a nie spośród wszystkich fontów dostępnych w internecie. Pozwala to wcześniej sprawdzić, czy każdy z nich poprawnie wyświetla polskie znaki diakrytyczne, a także przygotować pliki fontów po stronie serwera aplikacji. Pliki te ograniczone są do znaków alfabetu łacińskiego wraz z rozszerzeniem obejmującym polskie litery oraz do kilku wybranych grubości, dzięki czemu ich rozmiar pozostaje niewielki niezależnie od wyboru artysty. Wybór obejmuje trzy role: krój podstawowy, stosowany w nagłówkach i logo, krój pomocniczy, przeznaczony dla elementów nawigacji, tekstu pomocniczego i wyróżnień, oraz krój dodatkowy, używany w tekście głównym.

Artysta nie ustala koloru każdego elementu strony osobno – wybiera jedynie trzy kolory bazowe, z których pozostałe odcienie wyprowadzane są automatycznie. Kolor tekstu stosowany jest w treści głównej oraz w nagłówkach, kolor tła obowiązuje na wszystkich podstronach, a kolor akcentu używany jest do wyróżnienia drobnych elementów, takich jak krótkie podpisy nad tytułami prac czy odnośniki po najechaniu na nie kursorem. Pozostałe odcienie, m.in. kolor tekstu pomocniczego czy obramowań, powstają przez zmieszanie kolorów bazowych w ustalonych proporcjach, dzięki czemu zawsze pasują do wyborów artysty. Nagłówki nie mają osobnego koloru, ponieważ od tekstu głównego odróżnia je wielkość oraz krój pisma.

W panelu dostępne są również trzy gotowe motywy: „Domyślny”, „Ciemny” oraz „Jasny”. Każdy z nich to zestaw trzech kolorów bazowych oraz krojów pisma. Po wybraniu motywu pola kolorów i krojów w panelu wypełniają się automatycznie, a artysta może je następnie zmienić według własnego uznania. Motyw jest więc punktem wyjścia: artysta szybko uzyskuje spójny wygląd strony bez samodzielnego dobierania każdego parametru, a jeśli zechce, może na jego podstawie stworzyć własny zestaw ustawień. Motyw domyślny za to ma celowo stonowaną, neutralną kolorystykę, aby nie konkurowała ona z kolorami prezentowanych prac.

=== Makiety części publicznej <sec-makiety-publiczne>

Część publiczna składa się z czterech rodzajów podstron: strony głównej, portfolio, strony pojedynczej pracy oraz strony „O mnie”. Ich makiety przygotowano w programie Figma dla szerokości ekranu 1440 px, czyli w wersji na komputery.

==== Strona główna

Strona główna jest wizytówką artysty i pierwszą stroną, którą widzi odwiedzający. Zaczyna się od razu od prac. Pod nagłówkiem strony nie umieszczono banera ani tekstu powitalnego, ponieważ w portfolio najważniejsza jest twórczość, a informacje o artyście znajdują się na stronie „O mnie”. Jedyną sekcją jest „Wybrane prace.”, w której prezentowane są prace wskazane przez artystę (@fig-home).

#figure(
  image("../img/home.png", width: 100%),
  caption: [Makieta strony głównej],
) <fig-home>

Prace ułożone są w siatce typu Bento, złożonej z kafelków o różnych rozmiarach. W odróżnieniu od siatki równych kafelków pozwala ona wyeksponować najważniejsze prace oraz dopasować kształt do proporcji dzieła, np. umieścić pionowy obraz w wysokim kafelku. Każdy kafelek wypełniony jest zdjęciem pracy, na którym znajdują się jej tytuł, rok wykonania i tagi, a kliknięcie dowolnego miejsca kafelka prowadzi do strony pracy. Aby praca była dobrze widoczna, wyświetlane są na kafelku najwyżej trzy tagi. Tekst na zdjęciu jest zawsze biały i umieszczony na ciemnym gradiencie u dołu kafelka, więc pozostaje czytelny niezależnie od zdjęcia i od kolorów wybranych przez artystę. Układ kafelków artysta ustala osobno dla komputerów i telefonów, a sposób jego tworzenia opisano w podrozdziale @sec-bento.

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

Strona „O mnie” jest miejscem, w którym artysta przedstawia samego siebie. Na jej górze znajduje się duży nagłówek złożony z imienia i nazwiska artysty oraz napisu „O mnie” (@fig-o-mnie). Napis ten jest domyślny i artysta może zastąpić go własnym w profilu. Poniżej znajduje się krótkie wprowadzenie, w którym artysta opisuje, czym się zajmuje. Obok niego umieszczono zdjęcie artysty. Portret nie jest wymagany i jeżeli artysta go nie doda, strona wyświetli się bez niego.

#figure(
  image("../img/o_mnie.png", width: 100%),
  caption: [Makieta strony „O mnie”],
) <fig-o-mnie>

Niżej znajduje się dłuższy opis podzielony na dwie kolumny. W lewej wyświetlany jest wyróżniony fragment, zapisany większą czcionką w kroju nagłówków, a w prawej dalsza część opisu. Wprowadzenie, wyróżniony fragment i dalsza część opisu mają w profilu osobne pola, a sposób ich wprowadzania omówiono przy makiecie profilu w panelu artysty. Jeśli artysta nie uzupełni ani wyróżnionego fragmentu, ani dalszej części opisu, ta sekcja nie jest wyświetlana.

Stronę zamyka sekcja „Skontaktuj się ze mną.”, do której prowadzi pozycja „Kontakt” w menu. Zawiera ona krótki tekst zachęcający do kontaktu, adres e-mail artysty oraz odnośniki do jego profili w mediach społecznościowych. Kliknięcie adresu e-mail otwiera program pocztowy, a profile otwierają się w nowej karcie przeglądarki, więc strona artysty pozostaje otwarta i odwiedzający może łatwo do niej wrócić. Jeśli artysta nie dodał żadnych linków do mediów społecznościowych, ta część sekcji nie jest wyświetlana.

=== Makiety panelu artysty <sec-makiety-panelu>

Panel jest częścią aplikacji dostępną po zalogowaniu, w której artysta zarządza treścią swojej strony: pracami, kategoriami, tagami, profilem i ustawieniami wyglądu. W odróżnieniu od części publicznej, która służy prezentacji prac odwiedzającym, panel jest narzędziem pracy. Artysta korzysta z niego za każdym razem, gdy chce dodać nową pracę, poprawić jej opis lub zmienić wygląd strony, dlatego najważniejsze było to, żeby bez szukania trafiał do potrzebnej funkcji. Z tego powodu ekrany zbudowano według podobnego schematu, np. na górze ekranów prac i kategorii znajduje się tytuł z krótkim objaśnieniem, a obok niego przycisk dodawania nowego elementu. Po wprowadzeniu zmian artysta może od razu sprawdzić ich efekt, otwierając stronę publiczną za pomocą odnośnika „Podgląd portfolio” w menu.

Podział panelu na sekcje odpowiada temu, co artysta robi najczęściej. W sekcji „Prace” dodaje nowe prace, edytuje je i decyduje, które z nich mają być widoczne w portfolio. Kategorie i tagi znajdują się na wspólnym ekranie „Kategorie”, ponieważ oba służą do porządkowania prac, a na stronie publicznej pojawiają się obok siebie w filtrach portfolio. Wygląd strony artysta ustawia w sekcji „Układ i personalizacja”, a opis, zdjęcie i linki do mediów społecznościowych uzupełnia w „Profilu”. Pierwszą pozycją menu jest „Przegląd”, na którym artysta widzi liczbę dodanych prac, kategorii i tagów, miniaturę strony głównej oraz swoje profile w mediach społecznościowych.

Panel utrzymano w bieli i odcieniach szarości. Jedynym wyrazistym kolorem jest niebieski, którym oznaczono aktywną pozycję menu oraz zaznaczone elementy, np. pole formularza, w którym artysta właśnie wpisuje tekst. Cały panel korzysta z jednego bezszeryfowego kroju pisma, a ikony pochodzą z tego samego zestawu, przez co wszystkie ekrany zachowują spójny wygląd. Przy tak oszczędnej kolorystyce najbardziej rzucają się w oczy zdjęcia prac, czyli to, czym artysta w panelu zarządza. Panel wygląda tak samo niezależnie od ustawień strony publicznej, więc nawet jeśli artysta wybierze dla niej ciemny motyw, panel pozostaje jasny i czytelny.

==== Przegląd

Przegląd jest pierwszym ekranem, który artysta widzi po wejściu do panelu. Nie służy do wprowadzania zmian, tylko pełni rolę podsumowania stanu strony. Pod tytułem „Przegląd zawartości” i krótkim objaśnieniem znajdują się trzy karty z wartościami liczników, a niżej dwie kolumny: podgląd prac wyróżnionych na stronie głównej oraz lista profili artysty w mediach społecznościowych (@fig-przeglad).

#figure(
  image("../img/przeglad.png", width: 100%),
  caption: [Makieta ekranu „Przegląd” w panelu artysty],
) <fig-przeglad>

Karty pokazują, ile artysta dodał prac, kategorii i tagów. W przypadku prac liczone są wszystkie, łącznie z ukrytymi, dlatego liczba na karcie może być większa niż liczba prac widocznych w portfolio. Jeśli artysta ukrył któreś z nich, pod liczbą pojawia się dopisek, np. „2 ukryte”. Każda karta jest jednocześnie odnośnikiem. Karta prac otwiera listę prac, a kliknięcie karty kategorii lub tagów prowadzi do ekranu „Kategorie”, na którym artysta zarządza jednymi i drugimi.

W lewej kolumnie, pod nagłówkiem „Prace wyróżnione na stronie głównej”, wyświetlana jest pomniejszona siatka Bento ze strony głównej. Przełącznik „Desktop” i „Mobile” nad podglądem pozwala zobaczyć układ w wersji na komputery albo na telefony, przy czym ta druga wyświetlana jest w ramce telefonu. Artysta nie musi więc otwierać strony publicznej, żeby przypomnieć sobie, które prace są na niej wyeksponowane i jak zostały ułożone. Na miniaturze nie ma tytułów ani tagów, bo przy tej wielkości kafelków i tak byłyby nieczytelne. Kliknięcie podglądu przenosi artystę do ekranu „Układ i personalizacja”, na którym może zmienić układ kafelków w oglądanej właśnie wersji. Sam edytor opisano w podrozdziale @sec-bento. Jeśli w danej wersji nie ma jeszcze żadnych prac, zamiast siatki pojawia się komunikat „Na stronie głównej nie ma jeszcze prac.” i przycisk „Ułóż stronę główną”.

Prawa kolumna, „Linki społecznościowe”, pokazuje, ile linków artysta dodał w profilu, a pod tą liczbą same linki. Każdy z nich zajmuje dwie linie: wyżej znajduje się nazwa nadana przez artystę, np. „Instagram”, a niżej skrócony adres, np. `instagram.com/elara.voss`. Nazwa jest tym samym tekstem, który odwiedzający zobaczy na stronie „O mnie”, więc artysta od razu wie, jak link zostanie podpisany. Adres bez przedrostka `https://` pozwala z kolei szybko sprawdzić, czy link prowadzi do właściwego profilu. Kliknięcie adresu otwiera ten profil w nowej karcie, a kliknięcie w inne miejsce karty prowadzi do sekcji „Profil”, w której linki się dodaje i edytuje. Jeśli artysta nie dodał jeszcze żadnego linku, w karcie widoczny jest komunikat „Nie dodano jeszcze linków.” i przycisk „Dodaj linki w profilu”.

==== Lista prac

Ekran „Prace” zawiera wszystkie prace dodane przez artystę, również te, które ukrył przed odwiedzającymi. Na górze znajduje się tytuł „Zarządzaj pracami” z krótkim objaśnieniem oraz przycisk „Dodaj pracę”, który prowadzi do formularza opisanego w kolejnej sekcji. Niżej umieszczono wyszukiwarkę, a pod nią karty prac ułożone w trzech kolumnach (@fig-lista-prac).

#figure(
  image("../img/lista_prac.png", width: 100%),
  caption: [Makieta ekranu listy prac w panelu artysty],
) <fig-lista-prac>

Karta pracy w panelu różni się od karty w portfolio. Zawiera okładkę, czyli pierwsze zdjęcie pracy, a także tytuł, kategorię i datę dodania. Nie ma na niej tagów ani roku wykonania, ponieważ na tym ekranie artysta przede wszystkim szuka pracy, którą chce zmienić, a do jej rozpoznania wystarczą zdjęcie i tytuł. W dolnej części karty znajdują się przełącznik widoczności oraz ikony edycji i usuwania. Ikona ołówka otwiera formularz edycji pracy, a ikona kosza okno z prośbą o potwierdzenie. Komunikat w tym oknie uprzedza, że praca zostanie trwale usunięta razem ze wszystkimi zdjęciami.

Przełącznik widoczności pozwala ukryć pracę bez jej usuwania, np. gdy artysta chce na jakiś czas zdjąć ją ze strony. Ukryta praca znika ze strony głównej i z portfolio, a jej podstrona przestaje być dostępna, ale w panelu nadal jest na liście i w każdej chwili można ją ponownie pokazać. Zmiana zapisuje się od razu po kliknięciu i nie trzeba jej dodatkowo zatwierdzać. Pod tytułem ekranu pojawia się wtedy krótki komunikat, np. „Praca została ukryta.” Przełącznik ukrytej pracy jest szary, a napis „Ukryta” jaśniejszy, więc na liście od razu widać, których prac odwiedzający nie zobaczą.

Wyszukiwanie obejmuje tytuły prac oraz nazwy kategorii w wersji polskiej i angielskiej. Jeśli żadna praca nie pasuje do wpisanej frazy, zamiast kart pojawia się komunikat „Nie znaleziono prac pasujących do wyszukiwanej frazy.” Podobny komunikat wyświetlany jest wtedy, gdy artysta nie dodał jeszcze żadnej pracy. Prace ułożone są od ostatnio dodanej, więc nowa praca od razu trafia na początek listy. Na jednej stronie mieści się sześć kart, a pod nimi znajdują się numery stron i strzałki. W portfolio odwiedzający przegląda prace po kolei i doczytuje kolejne przyciskiem „Załaduj więcej”, natomiast w panelu artysta zwykle szuka jednej konkretnej pracy, dlatego łatwiej mu od razu przejść na wybraną stronę. Wpisana fraza i numer strony zapisywane są w adresie, więc po odświeżeniu wynik wyszukiwania nie znika.

==== Dodawanie i edycja pracy

Dodawanie nowej pracy i edycja istniejącej odbywają się w tym samym formularzu. Różnią się jedynie tytułem ekranu, „Dodaj pracę” lub „Edytuj pracę”, oraz tym, że przy edycji pola są już wypełnione zapisanymi danymi. Pola ułożone są w kolejności: tytuł, rok wykonania i wymiary, potem opis, kategoria i tagi, a na końcu zdjęcia (@fig-dodawanie-pracy).

#figure(
  image("../img/dodawanie_pracy.png", width: 100%),
  caption: [Makieta formularza dodawania i edycji pracy],
) <fig-dodawanie-pracy>

Tytuł, technikę oraz opis „O projekcie” artysta wpisuje w dwóch wersjach językowych, ponieważ strona publiczna jest dostępna po polsku i po angielsku. Zamiast dwóch osobnych pól nad każdym z nich znajdują się zakładki „Polski” i „English”, które przełączają wersję tekstu w tym samym polu. Formularz jest dzięki temu krótszy i artysta może najpierw uzupełnić wszystko po polsku, a tłumaczenie dodać później. Wymagane są jedynie tytuł w przynajmniej jednym języku oraz kategoria. Pozostałe pola można zostawić puste, a odpowiadające im elementy nie pojawią się wtedy na stronie pracy. Wymiary artysta podaje w dowolnym formacie, ponieważ inaczej opisuje się obraz, a inaczej rzeźbę czy instalację.

Kategorię i tagi artysta wybiera z dwóch list umieszczonych obok siebie. Do pracy można przypisać tylko jedną kategorię, ale dowolną liczbę tagów. Każda z list ma własną wyszukiwarkę, co przydaje się, gdy tagów jest dużo. Jeśli potrzebnej kategorii lub tagu jeszcze nie ma, artysta nie musi opuszczać formularza i przechodzić do sekcji „Kategorie”. Nad każdą listą znajduje się przycisk dodawania, który otwiera niewielkie okno, a nowo utworzona pozycja jest od razu zaznaczona w formularzu.

Zdjęcia dodaje się, przeciągając pliki na wyznaczone pole albo wybierając je z dysku. Obsługiwane są formaty PNG, JPG i GIF oraz krótkie filmy MP4, a każdy plik może mieć najwyżej 2 MB. Pliki dodawane przy jednym zapisie mogą mieć łącznie najwyżej 20 MB. Pod polem wyświetla się lista dodanych plików, której kolejność odpowiada kolejności zdjęć w galerii na stronie pracy. Artysta zmienia ją, przeciągając plik za uchwyt lub używając strzałek. Pierwszy plik na liście staje się okładką pracy i jest oznaczony etykietą „Okładka”. Okładką nie może być film, dlatego formularz nie pozwala przesunąć pliku MP4 na początek listy i wyświetla wtedy komunikat. Jeśli natomiast film znalazłby się na pierwszym miejscu po dodaniu nowych plików lub usunięciu okładki, jego miejsce automatycznie zajmuje pierwsze zdjęcie z listy.

==== Kategorie i tagi

Na ekranie „Kategorie” artysta zarządza zarówno kategoriami, jak i tagami, ponieważ jedne i drugie służą do porządkowania prac, a na stronie publicznej pojawiają się razem w filtrach portfolio. Ekran składa się z dwóch części, najpierw kategorii, a pod nimi tagów, zbudowanych według tego samego schematu: po lewej stronie znajduje się formularz, a po prawej lista istniejących pozycji (@fig-kategorie-tagi).

#figure(
  image("../img/kategorie_tagi.png", width: 100%),
  caption: [Makieta ekranu kategorii i tagów w panelu artysty],
) <fig-kategorie-tagi>

Ten sam formularz służy do dodawania i do edycji. Zawiera dwa pola, na nazwę polską i angielską, i oba są wymagane, ponieważ nazwy kategorii i tagów wyświetlane są w filtrach obu wersji językowych strony. Po kliknięciu ikony ołówka przy kategorii albo samego tagu nazwy wybranej pozycji trafiają do formularza, którego tytuł zmienia się na „Edytuj kategorię” lub „Edytuj tag”, a edytowana pozycja zostaje obramowana na liście. Artysta widzi więc, co zmienia, i nie musi otwierać osobnego okna. Nie można też dodać dwóch kategorii ani dwóch tagów o tej samej nazwie.

Kategorie wyświetlane są w tabeli w kolejności alfabetycznej. Przy każdej z nich widać nazwę polską, a pod nią mniejszą czcionką angielską, oraz liczbę przypisanych prac, np. „1 praca”, „4 prace” czy „12 prac”. Ta liczba podpowiada, czy kategorię można usunąć. Kategorii, do której należy choć jedna praca, nie da się skasować, ponieważ każda praca musi mieć kategorię. Artysta musi więc najpierw przypisać te prace do innej kategorii, a próba usunięcia kończy się komunikatem z wyjaśnieniem.

Tagi przedstawione są jako etykiety zaczynające się od znaku `#`. Jeśli angielska nazwa różni się od polskiej, wyświetlana jest pod nią mniejszą czcionką. Znak `#` dodawany jest automatycznie, o czym przypomina krótka wskazówka pod formularzem, więc artysta wpisuje samą nazwę. Lista tagów ma własną wyszukiwarkę, a w jej nagłówku widać łączną liczbę tagów. W przeciwieństwie do kategorii tag można usunąć zawsze, ale okno potwierdzenia uprzedza, że zostanie on odpięty od wszystkich prac, do których był przypisany.

==== Układ i personalizacja

Ekran „Układ i personalizacja” zbiera w jednym miejscu wszystko, co zmienia wygląd strony publicznej. Składa się z dwóch części: edytora kafelków strony głównej oraz ustawień czcionek i kolorów (@fig-uklad-personalizacja). Każda z nich ma własne przyciski „Zapisz zmiany” i „Cofnij zmiany”, dzięki czemu artysta może np. zapisać nowe kolory, nie zapisując przy tym niedokończonego układu kafelków. Działanie edytora kafelków opisano osobno w podrozdziale @sec-bento, dlatego poniżej omówiono tylko ustawienia krojów pisma i kolorów.

#figure(
  image("../img/uklad_personalizacja.png", width: 100%),
  caption: [Makieta ekranu „Układ i personalizacja” w panelu artysty],
) <fig-uklad-personalizacja>

W dolnej części ekranu artysta zmienia ustawienia opisane w podrozdziale @sec-warstwa-zmienna. Kroje pisma wybiera z trzech rozwijanych list, po jednej dla każdej roli. Na listach kroje podzielone są na szeryfowe i bezszeryfowe, a nazwa każdego z nich zapisana jest tym właśnie krojem, więc nie trzeba go znać, żeby ocenić, jak wygląda. Pod listami umieszczono podgląd z przykładowym nagłówkiem „Wybrane prace.”, pozycjami menu, fragmentem tekstu i elementem w kolorze akcentu, który zmienia się od razu po wybraniu kroju lub koloru, jeszcze przed zapisaniem.

Kolory tekstu, tła i akcentu można wpisać jako kod szesnastkowy albo wybrać w próbniku, który otwiera się po kliknięciu kwadratu obok pola. Jeśli kolor zostanie wpisany w złym formacie, pojawia się wskazówka, żeby podać go jako `#RRGGBB` albo `#RGB`. Niżej wyświetlane są gotowe motywy, „Domyślny”, „Ciemny” i „Jasny-zielony”, każdy pokazany we własnej kolorystyce. Wybranie motywu tylko wypełnia formularz, a na stronie pojawi się on dopiero po zapisaniu, o czym przypomina krótki podpis.

Przyciski zapisu i cofania są aktywne tylko wtedy, gdy w danej części coś się zmieniło. „Cofnij zmiany” przywraca ostatnio zapisane ustawienia, a próba opuszczenia ekranu z niezapisanymi zmianami kończy się ostrzeżeniem, tak samo jak w formularzu pracy.

==== Profil

Na ekranie „Profil” artysta uzupełnia informacje o sobie, które pojawiają się na stronie publicznej. Ekran ma trzy części: dane podstawowe, czyli zdjęcie, imię i adres e-mail, następnie teksty strony „O mnie” w dwóch wersjach językowych, a na końcu linki do mediów społecznościowych (@fig-profil).

#figure(
  image("../img/profil.png", width: 100%),
  caption: [Makieta ekranu „Profil” w panelu artysty],
) <fig-profil>

Na górze ekranu znajduje się zdjęcie artysty z przyciskiem „Zmień zdjęcie”. Można dodać plik JPG lub PNG o rozmiarze do 2 MB, a nowe zdjęcie od razu widać w podglądzie, jeszcze przed zapisaniem. Jedynym wymaganym polem w formularzu profilu jest „Imię lub pseudonim artystyczny”, ponieważ na stronie publicznej pełni ono funkcję logo. Adres e-mail nie jest obowiązkowy. Jeśli artysta go poda, pojawi się na stronie „O mnie” jako link do kontaktu, a jeśli zostawi puste pole, adres nie będzie wyświetlany.

Teksty strony „O mnie” podzielono na osobne pola: nagłówek, wprowadzenie, wyróżniony fragment i dalszą część opisu. Każde z nich odpowiada innemu miejscu na stronie, a pod każdym polem znajduje się krótka informacja, gdzie tekst się pojawi. Nagłówek można pominąć, wtedy strona wyświetli domyślny napis „O mnie”. W ten sam sposób artysta wpisuje tekst sekcji „Skontaktuj się ze mną.”, który pojawia się na końcu strony obok adresu e-mail i linków. Wersję polską i angielską wpisuje się w tym samym polu, przełączając się między zakładkami „Polski” i „English”, dzięki czemu formularz nie jest dwa razy dłuższy. Poza nagłówkiem każde pole trzeba wypełnić w obu językach albo zostawić puste.

W polach nie ma żadnego formatowania. Artysta wpisuje zwykły tekst, a kolejne akapity oddziela pustą linią. Wygląd tekstu na stronie zależy więc tylko od ustawień krojów pisma i kolorów, a nie od tego, jak artysta sformatował go w panelu.

Pod tekstami znajdują się przyciski „Zapisz zmiany” i „Cofnij zmiany”, które działają tak samo jak na ekranie „Układ i personalizacja”. Jeśli zapis się nie uda, strona przewija się do pierwszego pola z błędem, a gdy w polu brakuje jednej z wersji językowych, przełącza się ono na zakładkę z brakującym tekstem.

Linki do mediów społecznościowych nie są zapisywane razem z resztą formularza, tylko każdy osobno. Na liście widoczne są nazwa linku i adres bez `https://`, a obok ikony edycji i usuwania. Przycisk pod listą otwiera panel z dwoma polami: „Wyświetlany tekst”, czyli podpisem linku na stronie, oraz „Link”. Przedrostek `https://` można pominąć, ponieważ aplikacja dopisze go sama, a jeśli artysta wklei pełny adres skopiowany z przeglądarki, zostanie on zapisany bez zmian. Przyjmowane są wyłącznie adresy stron internetowych, więc np. adres e-mail wpisany w to pole zostanie odrzucony z prośbą o podanie adresu strony. Edycja otwiera ten sam panel z wypełnionymi polami, a przed usunięciem linku pojawia się prośba o potwierdzenie.

== Koncepcja edytora układu Bento Box <sec-bento>

Strona główna prezentuje wybrane prace w siatce typu Bento. Siatka Bento to układ, w którym treść podzielona jest na prostokątne kafelki o różnych rozmiarach, dopasowane do wspólnej siatki tak, żeby tworzyły jedną spójną całość. Nazwa pochodzi od japońskiego pudełka na posiłek podzielonego na przegródki. O tym, które prace się w niej znajdą i jak zostaną ułożone, decyduje artysta. Edytor musiał więc umożliwiać łatwe dodawanie i przestawianie kafelków osobie, która nie zajmuje się na co dzień projektowaniem stron. Ma on też nie dopuścić do nieczytelnego układu: kafelków nachodzących na siebie, wystających poza siatkę albo tak małych, że zdjęcie nie byłoby widoczne. Dlatego zamiast dowolnego rozmieszczania elementów edytor opiera się na stałej siatce i kilku dozwolonych rozmiarach kafelków.

Siatka w wersji na komputery ma 12 kolumn i 9 wierszy kwadratowych komórek. Wysokość wiersza jest równa szerokości kolumny, więc kafelek ma te same proporcje niezależnie od szerokości okna przeglądarki. Komórki połączone są w pola o wymiarach 3 × 3, co daje siatkę złożoną z 4 × 3 pól. Kafelek zajmuje jedno lub dwa pola w poziomie i w pionie oraz zawsze zaczyna się na granicy pola, dlatego możliwe są tylko cztery rozmiary: 1:1, 2:1, 1:2 i 2:2. Wystarczają one, żeby wyróżnić najważniejsze prace i dopasować kafelek do kształtu dzieła, np. pionowego obrazu, ale nie da się z nich zbudować kafelka wydłużonego bardziej niż w proporcji 2:1. Na siatce mieści się najwyżej dwanaście kafelków 1:1, a przy większych odpowiednio mniej.

Cztery pola obok siebie nie zmieściłyby się czytelnie na ekranie telefonu, a przy automatycznym przestawieniu kafelków w węższą siatkę artysta nie miałby wpływu na to, jak prace ułożą się na mniejszym ekranie. Dlatego układ ustala się osobno dla komputerów i dla telefonów. Siatka w wersji mobilnej ma szerokość dwóch pól, a jej wysokość pozwala zmieścić jeden pod drugim wszystkie kafelki z wersji na komputery. Oba układy zawsze zawierają te same kafelki: dodanie, usunięcie albo zmiana pracy w kafelku dotyczy obu wersji, a osobno ustala się tylko położenie i rozmiar. Odwiedzający widzi układ na komputery na ekranach o szerokości co najmniej 768 pikseli, a na węższych układ mobilny.

Dodając kafelek, artysta wybiera najpierw jego rozmiar, a potem pracę i jej zdjęcie. Do wyboru są tylko prace widoczne na stronie. Nowy kafelek umieszczany jest pod najniższym kafelkiem, przy lewej krawędzi siatki, a jeśli tam się nie zmieści, wstawiany jest w pierwsze wolne miejsce, zaczynając od dołu siatki. Pozostałe kafelki zostają na swoich miejscach. Jeśli w którejś z wersji brakuje miejsca na kafelek wybranego rozmiaru, przycisk dodawania jest nieaktywny, a edytor podpowiada, żeby zmniejszyć lub usunąć inny kafelek albo wybrać mniejszy rozmiar.

Kafelki przesuwa się, przeciągając je myszką. Upuszczenie kafelka na wolne miejsce powoduje jego przeniesienie, a upuszczenie na inny kafelek zamienia je miejscami. Kafelki, z którymi nastąpi zamiana, są podświetlane już w trakcie przeciągania, więc artysta widzi efekt, zanim puści przycisk myszy. Jeśli przeciągany kafelek zakryje kilka mniejszych, cała ich grupa przesuwa się na jego dawne miejsce, a każdy kafelek zachowuje swój rozmiar. Rozmiar zmienia się uchwytami na rogach i krawędziach kafelka, przy czym siatka pozwala tylko na jedno lub dwa pola w każdym kierunku. Gdy zamiana się nie mieści albo powiększony kafelek nachodziłby na inny, kafelek wraca na poprzednie miejsce.

Edytor zbudowano na bibliotece react-grid-layout @react-grid-layout-docs, która obsługuje przeciąganie i zmianę rozmiaru kafelków na siatce. Domyślnie biblioteka po każdej zmianie dosuwa kafelki do góry i odsuwa te, na które najedzie przeciągany kafelek, ale na tak małej siatce jedno przesunięcie mogłoby przestawić pół strony. Dlatego to zachowanie wyłączono. Zmienia się tylko kafelek, który artysta przeciągnął, oraz te, z którymi zamienił go miejscami. Na ekranach dotykowych kafelek przeciąga się za uchwyt w jego lewym górnym rogu, dzięki czemu przesunięcie palcem w innym miejscu przewija stronę, zamiast przestawiać kafelki. Rozmiar zmienia się tam uchwytami w pozostałych trzech rogach. W widoku telefonu siatka przewija się sama, gdy przeciągany kafelek zbliży się do górnej lub dolnej krawędzi ekranu.

Układ zapisywany jest w ustawieniach strony jako dwie listy kafelków, osobno dla komputerów i dla telefonów. Każdy kafelek ma własny identyfikator, który łączy go w obu wersjach, a oprócz tego przechowuje identyfikator pracy i zdjęcia oraz swoje położenie w komórkach siatki: numer pierwszej kolumny i pierwszego wiersza oraz liczbę zajmowanych kolumn i wierszy. Te same wartości trafiają bezpośrednio do siatki na stronie publicznej, więc nie trzeba ich przeliczać. Przy zapisie serwer sprawdza układ jeszcze raz: czy kafelki mieszczą się w siatce i nie nachodzą na siebie, czy obie wersje zawierają te same kafelki i czy każde zdjęcie należy do wybranej pracy. Nowy kafelek może przy tym pokazywać tylko pracę widoczną na stronie. Jeśli w czasie układania kafelków praca albo zdjęcie zostaną usunięte, zapis się nie powiedzie, a artysta zobaczy komunikat, że jedna z prac albo jedno ze zdjęć nie jest już dostępne. Tak samo będzie, gdy artysta doda kafelek z pracą, a przed zapisem ukryje tę pracę.

Kafelek z pracą, którą artysta później ukryje, nie jest usuwany z układu. Na stronie publicznej nie jest wyświetlany i w jego miejscu zostaje puste pole, a w edytorze kafelek ma oznaczenie „Ukryta”. Gdy artysta ponownie pokaże pracę, kafelek wróci na swoje miejsce i nie trzeba będzie układać strony od nowa.

== Wielojęzyczność <sec-wielojezycznosc>

Strona publiczna dostępna jest w dwóch wersjach językowych, polskiej oraz angielskiej. Wersja angielska kierowana jest do odwiedzających spoza Polski nieznających języka polskiego. Panel artysty za to dostępny jest tylko w języku polskim, ponieważ korzysta z niego wyłącznie artysta, a nie odwiedzający stronę.

Teksty na stronie publicznej dzielą się na dwa rodzaje, które tłumaczone są w różny sposób. Pierwszym rodzajem są stałe napisy interfejsu, np. pozycje w menu, nagłówki sekcji, napisy stron błędu czy opis strony widoczny w wynikach wyszukiwania. Są one niezmienne dla każdego artysty, dlatego zapisano je w dwóch plikach JSON, po jednym dla każdej wersji językowej. Do ich obsługi wykorzystano bibliotekę next-intl. Drugi rodzaj to treści wprowadzane przez artystę, czyli tytuły i opisy prac, nazwy kategorii i tagów oraz teksty strony „O mnie”. Każda z tych treści zapisana jest w bazie danych w dwóch kolumnach, po jednej dla każdej wersji językowej. Artysta uzupełnia je w panelu za pomocą zakładek „Polski” i „English”. Przy wyświetlaniu strony z bazy pobierane są treści tylko w wybranym języku, a w przypadku ich braku wyświetla się komunikat o braku tłumaczenia.

Domyślnym językiem strony jest polski. Przy pierwszej wizycie strona sprawdza język przeglądarki odwiedzającego. Jeżeli jest nim język angielski, od razu wyświetla wersję angielską. Odwiedzający może w każdym momencie zmienić język przełącznikiem PL/EN w nagłówku. Wybrany język zapamiętywany jest w ciasteczku na rok i przy kolejnej wizycie ma pierwszeństwo przed językiem przeglądarki.

Język strony zapisany jest w jej adresie. W wersji polskiej nie ma w nim żadnego oznaczenia, natomiast w wersji angielskiej zaczynają się od `/en`. Dzięki temu każda wersja ma własny adres, więc artysta może udostępnić link do konkretnej wersji językowej, a wyszukiwarki indeksują obie osobno. Każda strona wskazuje też wyszukiwarkom swój odpowiednik w drugim języku.

Nie wszystkie treści muszą być przetłumaczone, dlatego ustalono, że w przypadku gdy tekstu w danym języku brakuje, wyświetlany będzie komunikat zastępczy informujący o braku tłumaczenia. Celem jest utrzymanie spójności językowej strony. Praca bez tytułu wyświetlana jest jako „Bez tytułu” lub „Untitled”, zarówno na swojej stronie, jak i na kafelku w siatce Bento. Jeśli brakuje techniki albo opisu „O projekcie”, odpowiadająca im część strony pracy nie jest wyświetlana. Gdy artysta nie poda nagłówka strony „O mnie”, pojawia się domyślny napis „O mnie” lub „About me”. Nazwy kategorii i tagów zawsze są dostępne w obu językach, ponieważ formularz wymaga podania obu, a pozostałe teksty profilu, poza nagłówkiem, artysta musi wpisać w obu językach albo zostawić puste.

== Specyfikacja routingu <sec-routing>

Sposób, w jaki Next.js tworzy adresy stron na podstawie struktury katalogów, opisano w rozdziale poświęconym stosowi technologicznemu. // TODO: po scaleniu gałęzi tech-stack zamienić na @chapter-tech-stack
W tym podrozdziale przedstawiono poszczególne adresy, pod którymi dostępne są konkretne części aplikacji, oraz decyzje, które wpłynęły na to, jak je zbudowano. Adresy podzielono na trzy grupy: adresy strony publicznej, adresy panelu artysty oraz adresy techniczne, z których korzysta aplikacja, np. do wyświetlania zdjęć. Adresy strony publicznej zestawiono w tabeli @tab-adresy-publiczne.

#figure(
  table(
    columns: (auto, 1fr),
    align: left,
    table.header[*Adres*][*Podstrona*],
    [`/`], [Strona główna z siatką Bento (@fig-home)],
    [`/portfolio`], [Lista wszystkich widocznych prac z filtrami (@fig-portfolio)],
    [`/work/<id>`], [Strona pojedynczej pracy (@fig-praca)],
    [`/about`], [Strona „O mnie” (@fig-o-mnie)],
  ),
  caption: [Adresy strony publicznej],
) <tab-adresy-publiczne>

Pozycja „Kontakt” w menu nie ma własnej podstrony. Prowadzi do adresu `/about#contact`, czyli do sekcji „Skontaktuj się ze mną.” na stronie „O mnie”, a przeglądarka od razu przewija stronę do tej sekcji. Strona pracy wskazywana jest w adresie nie przez tytuł pracy, a przez jej identyfikator. Tytuł może być pusty, ma dwie wersje językowe i artysta może go w każdej chwili zmienić, natomiast identyfikator jest stały i taki sam w obu wersjach językowych. Dzięki temu link do pracy działa również po edycji jej opisu.

Część ustawień widoku zapisywana jest w parametrach adresu. Na stronie portfolio są to wybrana kategoria (`category`), wybrane tagi (`tag`, powtarzany dla każdego tagu) oraz numer strony (`page`). Przycisk „Załaduj więcej” zwiększa numer strony o jeden, a każda kolejna strona dodaje do widoku dwanaście prac. Przykładowo adres `/portfolio?category=…&tag=…&tag=…&page=2` pokazuje dwadzieścia cztery prace z wybranej kategorii, oznaczone obydwoma tagami. Ponieważ cały stan listy znajduje się w adresie, odwiedzający może przesłać komuś link do przefiltrowanej listy, a odświeżenie strony nie usuwa wybranych filtrów. W ten sam sposób zapisywane są wpisana fraza (`q`), kategoria i numer strony na liście prac w panelu artysty. Nieprawidłowy numer strony, np. litera zamiast liczby, nie powoduje błędu, tylko wyświetlenie pierwszej strony.

Wersja polska strony publicznej nie ma w adresie oznaczenia języka, a adresy wersji angielskiej zaczynają się od `/en`, np. `/en/portfolio` czy `/en/work/<id>`. Pozostała część adresu jest w obu wersjach taka sama, więc przełącznik języka zmienia jedynie początek adresu. Zasady wyboru języka opisano w podrozdziale @sec-wielojezycznosc. Oznaczenia języka nie mają adresy panelu artysty ani adresy techniczne.

Panel artysty znajduje się pod adresem `/admin`, a jego ekrany, opisane wcześniej przy makietach, mają adresy zestawione w tabeli @tab-adresy-panelu.

#figure(
  table(
    columns: (auto, 1fr),
    align: left,
    table.header[*Adres*][*Ekran*],
    [`/admin`], [Przegląd (@fig-przeglad)],
    [`/admin/works`], [Lista prac (@fig-lista-prac)],
    [`/admin/works/new`], [Dodawanie pracy (@fig-dodawanie-pracy)],
    [`/admin/works/<id>/edit`], [Edycja pracy (@fig-dodawanie-pracy)],
    [`/admin/categories`], [Kategorie i tagi (@fig-kategorie-tagi)],
    [`/admin/appearance`], [Układ i personalizacja (@fig-uklad-personalizacja)],
    [`/admin/profile`], [Profil (@fig-profil)],
  ),
  caption: [Adresy panelu artysty],
) <tab-adresy-panelu>

Dodawanie i edycja pracy korzystają z tego samego formularza, ale mają osobne adresy. Adres edycji zawiera identyfikator pracy, więc po odświeżeniu strony formularz ponownie wczytuje dane tej samej pracy. Panel ma własny układ strony, niezależny od strony publicznej. Jest on wyłączony z indeksowania przez wyszukiwarki, ponieważ jego ekrany nie powinny pojawiać się w wynikach wyszukiwania.

Zdjęcia i filmy prac nie są przechowywane jako pliki na serwerze, tylko w bazie danych, dlatego aplikacja udostępnia je pod osobnymi adresami. Adres `/media/<id>` zwraca plik tylko wtedy, gdy należy on do pracy oznaczonej jako widoczna. Dzięki temu zdjęcia ukrytej pracy nie są dostępne nawet dla osoby, która zna ich bezpośredni adres. Panel korzysta z adresu `/admin/media/<id>`, który zwraca również pliki ukrytych prac, żeby artysta mógł je zobaczyć na liście prac i w formularzu edycji. Zdjęcie artysty dostępne jest pod adresem `/profile-image/<hash>`, który zawiera skrót zawartości zdjęcia, w związku z czym każda nowa wersja zdjęcia otrzymuje nowy adres. Ostatnim adresem technicznym jest `/api/health/db`, pozwalający sprawdzić, czy aplikacja ma połączenie z bazą danych.

Jeśli odwiedzający wpisze adres, który nie istnieje, zobaczy stronę błędu w bieżącej wersji językowej z odnośnikiem do strony głównej. Taką samą stronę zobaczy po wejściu na adres ukrytej pracy, dzięki czemu nie dowie się, że praca o tym identyfikatorze w ogóle istnieje. Panel artysty ma własną stronę błędu, wyświetlaną w jego stałym wyglądzie i w języku polskim.
