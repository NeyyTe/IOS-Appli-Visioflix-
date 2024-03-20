//
//  DataMovies.swift
//  Visioflix
//
//  Created by apprenant73 on 14/03/2024.
//

import Foundation


//Tableau de donnés pour chaque éléments
var listMovies = [
    ListMovies(
        title: "Pulp Fiction",
        duration: "2h29",
        synopsis: "L'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s'entremêlent.",
        actors: ["John Travolta : Vincent Vega","Samuel L. Jackson : Jules Winnfield","Uma Thurman : Mia Wallace","Bruce Willis : Butch Coolidge","Quentin Tarantino : Jimmie Dimmick","Tim Roth : Ringo"],
        image: "Pulp Fiction",
        type: "Film",
        genre: ["Drame", "Policier"],
        year: 1994,
        realisateur: "Quentin Tarantino",
        rating : "⭐️⭐️⭐️⭐️☆",
        comments : 278,
        plateform: ["Netflix","Paramount"],
        url:"https://www.youtube.com/watch?v=tGpTpVyI_OQ",
        isFavorite: false
        
    ),ListMovies(
        title: "Inception",
        duration: "2h28",
        synopsis: "Au lieu de subtiliser un rêve, un voleur expérimenté et son équipe doivent faire l'inverse : implanter une idée dans l'esprit d'un individu. S'ils y parviennent, il pourrait s'agir du crime parfait ...",
        actors: ["Leonardo Di Caprio : Cobb","Marion Cotillard : Mall","Joseph Gordon-Levitt : Arthur ", "Elliot Page : Ariane","Cillian Murphy : Robert Fischer","Tom Hardy : Eames"],
        image: "inceptionImage",
        type: "Film",
        genre: ["Thriller","Science-Fiction"],
        year: 2010,
        realisateur: "Christopher Nolan",
        rating : "⭐️⭐️⭐️⭐️☆",
        comments : 278,
        plateform: ["Netflix"],
        url:"https://www.youtube.com/watch?v=YoHD9XEInc0"
        
        
    ), ListMovies(
        title: "Breaking Bad",
        duration: "50mn",
        synopsis: "La série se concentre sur Walter White, un professeur de chimie surqualifié et père de famille, qui, ayant appris qu'il est atteint d'un cancer du poumon en phase terminale, sombre dans le crime pour assurer l'avenir financier de sa famille.",
        actors: ["Bryan Cranston : Walter White","Aaron Paul : Jesse Pinkman","Anna Gunn : Skyler White","Dean Norris : Hank Schrader", "RJ Mitte : Walter White Jr.","Bob Odenkirk : Saul Goodman","Jonathan Banks : Mike Ehrmantraut"],
        image: "breakingBadImage",
        type: "Série",
        genre: ["Drame"],
        year: 1994,
        realisateur: "Vince Gilligan",
        rating : "⭐️⭐️⭐️⭐️⭐️",
        comments : 278,
        plateform: ["Netflix","Canal Vod","Orange Vod"],
        url:"https://www.youtube.com/watch?v=HhesaQXLuRY"
        
    ), ListMovies(
        title: "Bob Marley : One Love",
        duration: "1h47",
        synopsis: "Bob Marley: One Love célèbre la vie et la musique d'une icône qui a inspiré des générations à travers son message d'amour et d'unité. Pour la première fois sur grand écran, découvrez l'histoire puissante de Bob Marley, sa résilience face à l’adversité, le chemin qui l’a amené à sa musique révolutionnaire.",
        actors: ["Kingsley Ben-Adir : Bob Marley","Lashana Lynch : Rita Marley","Michael Gandolfini : Howard Bloom","James Norton : Chris Blackwell","Anthony Welsh : Don Taylor","Umy Myers : Cindy Breakspeare"],
        image: "bobMarleyImage",
        type: "Film",
        genre: ["Biopic","Drame"],
        year: 2024,
        realisateur: "Reinaldo Marcus Green",
        rating : "⭐️⭐️✩✩✩",
        comments : 278,
        plateform: ["Prime Vidéo"],
        url:"https://www.youtube.com/watch?v=ajw425Kuvtw"
        
    ), ListMovies(
        title: "The Mask",
        duration: "1h40",
        synopsis: "Stanley Ipkiss, modeste employé de banque, passionné par l'univers de Tex Avery, trouve un masque ancien aux pouvoirs surnaturels. Il est néanmoins partagé entre devenir cette créature verte sûre d'elle ou rester le timide Stanley Ipkiss, incapable d'aborder la magnifique chanteuse de cabaret Tina Carlyle.",
        actors: ["Jim Carrey : Stanley Ipkiss","Cameron Diaz : Tina Carlyle","Peter Greene : Dorian Tyrell","Peter Riegert : Lieutenant Mitch","Amy Yasbeck : Peggy Brandt","Richard Jeni : Charlie Schumaker"],
        image: "theMaskImage",
        type: "Film",
        genre: ["Comédie","Fantastique"],
        year: 1994,
        realisateur: "Chuck Russell",
        rating : "⭐️⭐️⭐️✩✩",
        comments : 278,
        plateform: ["Canal Vod","UniversCiné","Cinemaalademande"],
        url:"https://www.youtube.com/watch?v=LT8kBr3TUvk"
        
    ), ListMovies(
        title: "Memento",
        duration: "1h56",
        synopsis: "Leonard n'a qu'une idée en tête : traquer l'homme qui a violé et assassiné sa femme afin de se venger. Sa recherche du meurtrier est rendue plus difficile par le fait qu'il souffre d'une forme rare et incurable d'amnésie. Bien qu'il puisse se souvenir de détails de son passé, il est incapable de savoir ce qu'il a fait dans le quart d'heure précédent, où il se trouve, où il va et pourquoi.",
        actors: ["Guy Pearce : Leaonard Shelby","Joe Pantoliano : Teddy Gammell","Carrie-Anne : Natalie","Jorja Fox : Catharine Shelby","Stephen Tobolowsky : Sammy","Mark Boone Junoir : Burt"],
        image: "mementoImage",
        type: "Film",
        genre: ["Thriller","Néo-noir"],
        year: 2000,
        realisateur: "Christopher Nolan",
        rating : "⭐️⭐️⭐️⭐️✩",
        comments : 278,
        plateform: ["Canal Vod","UniversCiné","Cinemaalademande"],
        url:"https://www.youtube.com/watch?v=rX7nZxY8OFk"
    )
    
    ,ListMovies(
            title: "Stranger Things",
            duration: "46",
            synopsis: "L'intrigue s'étale sur plusieurs années, entre 1983 et 1986. Un soir de novembre 1983 dans la ville américaine fictive d'Hawkins en Indiana, le jeune Will Byers, âgé de douze ans, disparaît brusquement sans laisser de traces, hormis son vélo. Plusieurs personnages vont alors tenter de le retrouver : sa mère Joyce, ses amis : Lucas Sinclair, Dustin Henderson et Mike Wheeler, guidés par la mystérieuse Eleven, une jeune fille ayant des pouvoirs psychiques, ainsi que le chef de la police Jim Hopper.Parallèlement, la ville est le théâtre de phénomènes surnaturels liés au Laboratoire national de Hawkins, géré par le département de l'Énergie des États-Unis (DoE) et indirectement par la Central Intelligence Agency (CIA), dont les expériences dans le cadre du projet MK-Ultra ne semblent pas étrangères à la disparition de Will.",
            actors: ["Winona Ryder : Joyce Byers","David Harbour : Jim Hopper","Finn Wolfhard : Michael « Mike » Wheeler","Millie Bobby Brown : Jane Hopper","Gaten Matarazzo : Dustin Henderson","Caleb McLaughlin : Lucas Sinclair"],
            image: "strangerThingsImage",
            type: "Série",
            genre: ["Fantastique"],
            year: 2016,
            realisateur: "Matt et Ross Duffer",
            rating : "⭐️⭐️⭐️⭐️⭐️",
            comments : 278,
            plateform: ["Netflix"],
            url:"https://www.youtube.com/watch?v=l7nzodXfVsg"
        )
    
    ,ListMovies(
        title: "La petite maison dans la prairie",
        duration: "46",
        synopsis: "Charles Ingalls, sa femme Caroline, leurs trois filles Mary, Laura et Carrie ainsi que leur chien Jack, quittent le Wisconsin pour émigrer vers l'Ouest. Un long voyage sur un modeste chariot de pionniers bâché les attend pour aller au Kansas, un vaste État aux grandes étendues de prairies verdoyantes. Cependant, après de multiples événements, ils abandonnent leur maison de rondins pour venir s'installer à Walnut Grove (Minnesota) au lieu-dit Plum Creek, où les terres sont fertiles. Charles va ensuite construire sa propre ferme et travaillera comme employé à la scierie du village",
        actors: ["Michael Landon : Charles Phillip Ingalls","Karen Grassle : Caroline Lake Quiner","Melissa Sue Anderson : Mary Amelia Ingalls","Melissa Gilbert : Laura Ingalls Wilder.","Lindsay et Sidney Greenbush : Caroline Celestia Ingalls","Matthew Laborteaux : Albert Ingalls"],
        image: "maisonPrairieImage",
        type: "Série",
        genre: ["Western familial"],
        year: 1974,
        realisateur: "Michael Landon",
        rating : "⭐️⭐️⭐️⭐️⭐️",
        comments : 278,
        plateform: ["France 2"],
        url:"https://www.youtube.com/watch?v=qcs-PRy9NSY"
    )
    
    ,ListMovies(
        title: "She-Hulk : avocate",
        duration: "35",
        synopsis: "Jennifer Walters, cousine de Bruce Banner, travaille comme avocate dans le cabinet Goodman, Lieber, Kurtzberg & Holliway spécialisé dans les affaires liées aux super-héros. Après un violent accident de voiture, elle est contaminée par le sang de Bruce. Elle hérite alors de ses pouvoirs et devient à son tour une super-héroïne : Miss Hulk.Comme son cousin, elle possède une force colossale, mais à sa différence, elle maitrise parfaitement le passage de sa forme humaine à sa forme Hulk et réciproquement. Elle va alors se confronter à divers ennemis dont Mary MacPherran alias Titania, une influenceuse obsédée par Miss Hulk.",
        actors: ["Tatiana Maslany : Jennifer Walters / Miss Hulk","Ginger Gonzaga : Nikki Ramos","Jameela Jamil  : Mary MacPherran / Titania,","Tim Roth  : Emil Blonsky / l'Abomination.","Josh Segarra: Augustus « Pug » Pugliese","Jon Bass : Albert IngallsJon Bass"],
        image: "sheHulkImage",
        type: "Série",
        genre: ["Comédie"],
        year: 1974,
        realisateur: "Jessica Gao",
        rating : "⭐️✩✩✩✩",
        comments : 10,
        plateform: ["Disney+"],
        url:"https://www.youtube.com/watch?v=tcqmEgtApbw"
    ),
    ListMovies(
            title: "The boys",
            duration: "60",
            synopsis: "Hughie Campbell rejoint les « Boys » peu après qu'A-Train, membre du groupe de super-héros « les Sept », a accidentellement tué sa petite amie Robin. De son côté, la jeune héroïne Annie January, surnommée Stella (Starlight en VO), rejoint les Sept. Venant d'une petite ville, la jeune femme est pleine d'espoir mais va devoir faire face à la terrible vérité sur ceux qu'elle admirait tant. Stella va notamment déchanter en côtoyant le leader des Sept, « Le Protecteur » (Homelander en VO). Les autres membres des Sept sont la désillusionnée Reine Maeve, le toxicomane A-Train, le déséquilibré homme-poisson (en version originale The Deep), l'invisible Translucide et le mystérieux Black Noir. Plus tard, la suprémaciste Stormfront rejoindra le groupe et en deviendra un membre essentiel. Madelyn Stillwell, cadre de Vought, supervise les Sept.Les Boys de William « Billy » Butcher sont complétés par le tacticien « La Crème » (Mother's Milk en anglais), le spécialiste des armes Serge, dit Le Français (Frenchie), et Kimiko, la Fille (the Female), à qui on a injecté contre son gré le mystérieux « composé V ».",
            actors: ["Karl Urban  : William « Billy » Butcher,","Jack Quaid : Hugh « Hughie » Campbell","Laz Alonso  : Marvin Milk / « La Crème","Tomer Kapon  : Sergei « Serge » / « Le Français ","Antony Starr : John Gillman / « Le Protecteur","Erin Moriarty : Annie January / « Stella"],
            image: "theBoysImage",
            type: "Série",
            genre: ["Comédie noire"],
            year: 2019,
            realisateur: "Eric Kripke",
            rating : "⭐️⭐️⭐️⭐️⭐️",
            comments : 2500,
            plateform: ["Prime vidéo"],
            url:"https://www.youtube.com/watch?v=yRwGoS-KPVE"
        )
    
    ,ListMovies(
        title: "Mr Robot",
        duration: "55",
        synopsis: "Elliot Alderson est un jeune informaticien vivant à New York, qui travaille en tant qu'ingénieur en sécurité informatique pour Allsafe Security. Il lutte constamment contre la dépression et son processus de pensée semble fortement influencé par la paranoïa. Il pirate les comptes des gens, ce qui le conduit souvent à agir comme un cyber-justicier. Elliot rencontre « Mr. Robot », un mystérieux anarchiste qui souhaite le recruter dans son groupe de hackers connu sous le nom de « Fsociety ». Leur objectif consiste à rétablir l'équilibre de la société par la destruction des infrastructures des plus grosses banques et entreprises du monde, notamment le conglomérat E Corp. (surnommé « Evil Corp. » par Elliot) qui, comme client, par ailleurs, représente 80 % du chiffre d'affaires d’Allsafe Security.",
        actors: ["Rami Malek   : Elliot Alderson","Carly Chaikin : Darlene Alderson","Portia Doubleday  : Angela Moss","Martin Wallström   : Tyrell Wellick ","Christian Slater : « Mr. Robot »","Michael Cristofer  : Phillip Price"],
        image: "mrRobotImage",
        type: "Série",
        genre: ["Thriller psychologique","Dramatique"],
        year: 2019,
        realisateur: "Sam Esmail",
        rating : "⭐️⭐️⭐️⭐️⭐️",
        comments : 277,
        plateform: ["Prime vidéo","Netflix"],
        url:"https://www.youtube.com/watch?v=uml6bz9ygxA"
    )
]
