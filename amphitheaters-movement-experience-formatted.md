---
author: Heath, Sebastian
bibliography: zotero.bib
cover_detail: preferred-image-1300x500pixels.png
cover_index: preferred-image-450x450pixels.png
csl: /Users/sfsheath/Documents/styles/springer-humanities-author-date.csl
date: 2023-07-01
doi: we-take-care-of-this
link-citations: true
tags:
- amphitheaters
- roman empire
- italy
- gis
- cost surface analysis
title: Mapping Amphitheaters, Movement, and Diverse Experiences North of
  Rome
---

# Mapping Movement and Diverse Experiences Between Amphitheaters North of Rome

Sebastian Heath

*Received \<Month\> \<Day\> 2023*

Citation: Heath, Sebastian ‘Mapping Movement and Diverse Experiences
Between Amphitheaters North of Rome’

![](https://i.creativecommons.org/l/by/4.0/80x15.png)

## Introduction

Making maps that evoke past experiences in the territory around and
between sixteen amphitheaters north of Rome lies at the core of this
paper, and in that regard it is a digital exercise. As the digital
mapping proceeds, finding diversity within human experiences will be
connected to exploring the role of amphitheaters in the Roman Empire.
From that perspective this paper is also about the connection between
specific digital resources and open-ended historical analysis. To
rephrase that theme as a question: can we read human behavior into
digital surrogates for the landscape in which those behaviors might have
taken place? The answer ought to be at least a qualified yes. If it were
a firm no, I wouldn’t burden readers with all the words that follow. And
a no would also mean ignoring existing efforts that have created useful
frameworks for exploring group and individual experience using digital
tools ([Gillings 2012](#ref-gillingsLandscapePhenomenologyGIS2012);
[Susmann 2020](#ref-susmannRegionalWaysSeeing2020)). But I don’t mean to
say that the end result of making digital maps should be any sense of
having reached definite conclusions. Neither maps nor other
visualization need bear that burden ([White
2010](#ref-whiteWhatSpatialHistory2010); [Drucker
2011](#ref-druckerHumanitiesApproachesGraphical2011)). Accordingly, the
visuals shown here provide no discrete and finished answers to any of
the questions that can arise from engaging with them. Instead, they are
primarily responsive to my thoughts and queries as the author and I hope
that they encourage further questioning. I will be transparent about
process and by that mean to be clear that that I am not asking more of
the collected data than they can bear. And transparency is a form of
invitation: An invitation to speculate on how other approaches and
evidence could overlap with what I present. One overall perspective
adopted here is that digital representations are clearly simplifications
of past phenomena so that it is easy to identify their shortcomings. To
adapt the aphorism often attributed to the statistician George Box, “All
GIS layers are wrong, but some are useful.” ([All models are wrong
2022](#ref-AllModelsAre2022)) Placing this observation at the center of
describing technical process can shift the discovery of diversity and
complexity to the viewer, by which term I again mean both myself as
author and any readers.

Amphitheaters in general and the Flavian Amphitheater in Rome - aka The
Colosseum - in particular exist in both contemporary public perception
and scholarly conventional wisdom as a symbol of Roman achievement
([Hopkins and Beard 2005](#ref-hopkinsColosseum2005); [Elkins
2019](#ref-elkinsMonumentDynastyDeath2019)). And it is very reasonable
to suggest that amphitheaters can promote a typical, repeated, and
expected ancient experience that contributes to seeing the Roman
imperial state as a coherent cultural and political entity ([Noreña
2010](#ref-norenaEarlyImperialMonarchy2010)). At any scale of analysis,
however, amphitheaters also promoted diversity of experience and
reaction ([Fagan 2011](#ref-faganLureArenaSocial2011)). This diversity
is of course quite extreme when considering the juxtaposition of the
audience and those involved, willingly or not, in the violent
entertainment on display. While the experiences of each are certainly
bound together, the stark difference between them, as well as the risk
of that separation breaking down, is part of what makes the
entertainment work ([Coleman 1990](#ref-colemanFatalCharadesRoman1990);
[Tuck 2007](#ref-tuckSpectacleIdeologyRelief2007); [Bomgardner
2009](#ref-bomgardnerMageriusMosaicRevisited2009)).

![Figure 1: Map of Amphitheater locations. This map, the amphitheater
location data it shows, and the python code that produced it are all
available at
<a href="http://github.com/roman-amphitheaters/roman-amphitheaters">http://github.com/roman-amphitheaters/roman-amphitheaters</a>.](heath-supporting-images/heath-01-all-amphitheaters.png)

Considering all of Roman territory, it is important to stress that
amphitheaters were not evenly distributed within this large area (Figure
1). They are more concentrated in Italy and the nearest part of North
Africa than anywhere else in the empire ([Heath
2022a](#ref-heathEstimatingMappingRoman2022)). That observation by
itself is enough to say that amphitheaters did not on their own create
an equal experience of empire everywhere. Though noting this variation
is an opportunity to emphasize that all the activities that took place
within amphitheaters - animal hunts and fights, executions by various
means, and gladiatorial combat - also took place in other physical
settings and that all were to some extent aspects of the Roman imperial
system wherever it is found.

Chronology also matters. There are approximately 20 amphitheaters built
before and by the time of Julius Caesar’s veteran settlements, the
planning and realization of which occasionally included an amphitheater
([Welch 2009](#ref-welchRomanAmphitheatreIts2009)). Over 260 of these
structures were in use during the 2nd Century, though already by the end
of that century amphitheaters are being abandoned, or at least
repurposed ([Heath 2023, 141](#ref-heathNearnessExperienceNetwork2023)).
This means that the 2nd Century can be considered the time of “Peak
Amphitheater”. The years from the reign of Trajan, through that of
Hadrian and into those of Antoninus Pius and then Marcus Aurelius likely
saw both the most amphitheaters in use at any one time and the last
substantial phase of construction ([Bomgardner 2000,
386](#ref-bomgardnerStoryRomanAmphitheatre2000)).

While the changing distribution of amphitheaters is worth consideration
on its own terms, this article looks to a period of relative stability
and defines a computationally manageable area of study in which to
examine how the presence of amphitheaters in a specific region could
have contributed to localized diversity of access and experience. The
general region of interest here is the area north of Rome to just beyond
Perusia (modern Perugia) and the particular focus is the area
distinguished by the presence of sixteen amphitheaters (Fig. 3, Table 1)
that are mostly found in medium size and smaller towns that are
themselves all established by the second century CE, with most being
much older. By constructing a digital context that supports a local and
regional perspective on interaction between these amphitheaters,
settlements of varied types, and rural areas, what follows will
highlight the productive tension between shared infrastructure and
diverse experience in this core area of the Roman world. Access matters
and the relative availability of the experience of being in an
amphitheater can be tentatively mapped. Seeing where availability was
high - where regional inhabitants could visit many amphitheaters - in
turn implicates the atmosphere within those venues. In which of these
structures was one most likely to be sitting next to someone who lived
elsewhere, whether in a town or in the countryside? As a visitor to a
town, were you sitting next to a visitor from another town? How might
that effect interactions within the crowd. The stakes could, of course
be high. As when riots broke out between locals and visitors from
Nuceria in 59 CE at Pompeii (Tacitus, *Annales*, XIV.17). But that was
an unusual event, as shown by the imperial attention that it brought. It
is diverstiy with usual behavior that is of greater concern.

The maps here also bring attention to the areas between amphitheaters,
which is a very intentional feature. Amphitheaters attract spectators,
but those spectators also return home. When they do that, what is the
likelihood that they find themselves in conversation with someone who
had been at an event at yet another town? Such a question takes us deep
into speculative territory. This paper is only a start that uses digital
mapping to identify very local contexts in which overlapping movement
might have been relatively intense or relatively absent and how that
might have affected both experience in amphitheaters and in the areas
between them.

<!-- A central observation is that the existence of an infrastructure for a collective experience, in this case amphitheaters, does not mean that there weren't many perspectives within the communities sharing that experience. The more people who can come together, the greater likelihood that assembled groups contain individuals with distinct experiences and reactions. This approach is informed by recent work that places individual experience at the center of the study of the Roman world. [@huemoellerFreedomMarriageManumission2020; @joshelGeographiesSlaveContainment2013; @norenaIntroduction2019]. -->

## Mapping Amphitheaters

The primary digital method this paper employs is GIS-based cost-surface
analysis of the terrain surrounding the sixteen selected amphitheaters.
As noted, the focus is the 2nd century CE and that time period is meant
to span the relative stability of the imperial period. There is of
course dynamism during these years. ([Patterson et al. 2020,
201](#ref-pattersonChangingLandscapesRome2020); [Attema et al.
2022](#ref-attemaRomanHinterlandProject2022)). The civil wars of the
late 60s CE had caused disruption and the arrival of plague in the
mid-2nd played out across this region ([Duncan-Jones 1996,
125](#ref-duncan-jonesImpactAntoninePlague1996)). But from the
perspective of town formation, the laying of roads, and, yes,
amphitheater construction, all these pieces are largely in place by the
late 1st century CE and they then persisted through the 2nd and into the
early 3rd before local and external events mean that new patterns of
interaction and behavior would probably have to be considered
([Patterson et al. 2020,
208](#ref-pattersonChangingLandscapesRome2020)).

With the chronological scope in place and the area of interest
introduced, collecting digital resources will lead to generating a map
that categorizes the study area by how many amphitheaters lie within a
digitally calculated 8-hour walking distance of any one point. That
visualization appears below as Figure 6. The next paragraphs here
present a description of what data was collected, how it was adapted,
and how it was processed in order to make that map. Once Figure 6 is in
place, some of the questions that it raises - or at least a few of the
questions that I raised to myself - will be used to engage further with
the dialog between digital representation and historical analysis. That
dialog will itself make use of the interactive map that appears as
Figure 7.

![Figure 2: Map of Central Italy with Study
Area.](heath-supporting-images/heath-02-italy.png)

Figure 2 is an overview of the study area within the context of central
Italy. The underlying base map is made available by the Italian
Volcanological Institute and is their rendering of their freely
available [10-meter Digital Elevation Model
(DEM)](https://tinitaly.pi.ingv.it) that covers all of modern Italy
([Tarquini and Nannipieri
2017](#ref-tarquini10mresolutionTINITALYTransdisciplinary2017a)). This
DEM uses the UTM32N grid ([EPSG:32632](https://epsg.io/32632)) so that I
also adopt that coordinate reference system (CRS) for the other GIS
layers in this study. The area of particular interest - within which
cost surfaces will be calculated - is indicated in gray and by my own
rendering of that part of the same DEM. Outside that area, amphitheater
locations are shown in red. Inside the area, amphitheater locations are
shown with larger pink markers. Noting this color-difference is an
opportunity to be direct about my most explicit authorial intervention
in this project. I chose the study area because it contains sixteen
amphitheaters that seemed to make a reasonably coherent spatial group.
And being even more clear, I judged this grouping by eye and without the
assistance of any clustering algorithm. This approach seemed reasonable
given the evident spacing between these sixteen amphitheaters and those
lying to the west, north, and east. All of those structures are
definitely more than an 8-hour walk away. The overlapping dots below the
southeast corner represent the public amphitheater at Tibur and the
small private arena at Hadrian’ villa at Tivoli (if one accepts that
there was such a structure). Again, it was a judgement call to set the
southern edge of the study area so that they are not included. It was
also a judgement call not to include the towns of Ameria, Fulginae, and
Urvinum Hortense as locations of amphitheaters (see figure 7 for where
they would have been marked). The evidence at each is ambiguous at best
([Tosi 2003](#ref-tosiEdificiSpettacoliNell2003)). Rome lies to the
south and its approximate location is indicated by the overlapping dots
that represent the Flavian Amphitheater, the nearby Ludus Magnus, and
other later amphitheaters in the capital. That Rome’s near one million
inhabitants are so close will be part of the discussion below, even if
my focus is the more local effect of the sixteen amphitheaters that
defined the study area. All the amphitheater locations come from a
[dataset](https://github.com/roman-amphitheaters/roman-amphitheaters)
that I maintin and which is available on the code and data sharing site
GitHub.

The final layer included in this overview and in many of the maps that
follow represents Roman-period roads. This layer also required
substantial intervention by me. The Ancient World Mapping Center at the
University of North Carolina makes available an ESRI shapefile of
ancient roads in the Graeco-Roman world. Like many of the other spatial
resources there, it is drawn originally from the maps created for the
the *Barrington Atlas of Classical Sites* (BAtlas). This was an
excellent starting point. When adding missing routes, I used the
Roman-period itineraries available on the site
[topostext.org](http://topostext.org) and the “Reference Map of Ancient
Italy. Northern Part” map in the 1926 5th edition of William Shepherd’s
*Historical Atlas* to add in additional routes ([Shepherd 1926,
26](#ref-shepherdHistoricalAtlas1926) & 27). These are specific
resources that complement more general discussions ([Laurence
1999](#ref-laurenceRoadsRomanItaly1999); [Olshausen
2010](#ref-olshausenRoadsRoutesImperium2010)). (It’s a bit of a forward
jump, but I note now that the interactive map in Figure 7 can be used to
identify my additions.) Even after this work, this digital
representation should not be taken as any final word on the built
infrastructure for Roman-period movement within the study area. My
intent is that it be dense enough to model movement along major routes
with reasonable confidence that the results speak to the differing
levels of access to the amphitheaters in the region. It is the case that
a missing branch of a Roman road will affect the results within specific
parts of the maps that follow. But overall, I believe this layer is
sufficiently representative to raise the issue of differing access and
to encourage observations that take the issue into account. It is
“wrong” but I do consider it “useful”.

![Figure 3: Study
Area.](heath-supporting-images/heath-03-study-area.png)

Figure 3 narrows the focus and adds labels to each amphitheater. It also
adds major bodies of water and the paths of rivers, likewise downloaded
from the AWMC. As with the roads, these will be part of the coming cost
surface analysis. This map does draw attention to the individual
amphitheaters and Table 1 provides summary information for each of
these. In general, these sixteen structures are fairly typical
medium-sized amphitheaters in medium-sized towns. We are outside the
world of the mega-sized buildings such as the Flavian Amphitheater in
Rome. That example is conventionally estimated to have held 50,000
spectators. These are all also smaller than the next tier of large
structure such as the amphitheaters at Capua, Verona, Pula, Arles, and
Nimes, to name just a few. Looking at Figure 3, it is immediately clear
that all are on or very close to the network of roads as represented
here ([Emmerson 2020, 179](#ref-emmersonLifeDeathRoman2020)). That is a
primary observation that contributes to essentially all aspects of this
study. Again invokinig transparency, I did create a road from the *Via
Flaminia* to Forum Novum, which is plausible given the results of the
magnetometry at the site that also identified an amphitheater there
([Gaffney et al. 2001/ed](#ref-gaffneyForumNovumVescovio2001)).

<style type="text/css">
table {
  padding: 0;border-collapse: collapse;margin-left: auto; margin-right: auto; font-size:smaller }
  table tr {
    border-top: 1px solid #cccccc;
    background-color: white;
    margin: 0;
    padding: 0; }
    table tr:nth-child(2n) {
      background-color: #f8f8f8; }
    table tr th {
      font-weight: bold;
      border: 1px solid #cccccc;
      margin: 0;
      padding: 6px 13px; }
    table tr td {
      border: 1px solid #cccccc;
      margin: 0;
  padding: 2px 4px; }
    table tr th :first-child, table tr td :first-child {
      margin-top: 0; }
    table tr th :last-child, table tr td :last-child {
      margin-bottom: 0; }

</style>

| Latin Toponym    | Mod. Toponym           | No. Within 8 Hour Walk | Date            | Dimensions    | Est. Capacity | Golvin; Tosi; Welch                       | Amphitheatrum Link                          |
|------------------|------------------------|------------------------|-----------------|---------------|---------------|-------------------------------------------|---------------------------------------------|
| Asisium          | Assisi                 | 2                      | 1st CE          | ?x? , 60x35   |               | Golvin, p. 252; Tosi, p. 353              | [link](https://amphi-theatrum.de/1386.html) |
| Carsulae         | Carsoli                | 2                      | Late 1st CE     | 87x62, 62x37  | 6000          | Golvin, no. 80; Tosi, p. 356              | [link](https://amphi-theatrum.de/1512.html) |
| Falerii Novi     | Santa Maria in Falleri | 2                      | 1st CE          | 88x66, 54x33  | 8000          | Golvin, no. 146; Tosi, p. 409             | [link](https://amphi-theatrum.de/1545.html) |
| Ferentium        | Ferento                | 0                      | Late Republican | 68x40 , ?x?   |               | Golvin, no. 9; Tosi, p. 410; Welch no. 16 | [link](https://amphi-theatrum.de/1470.html) |
| Forum Novum      |                        | 1                      | 1st CE          | ?x?, 45x25    | 2000          | n/a                                       | n/a                                         |
| Hispellum        | Spello                 | 3                      | 1st CE          | 82x?, ?x?     | n/a           | Golvin, p. 252; Tosi, p. 361              | [link](https://amphi-theatrum.de/1595.html) |
| Interamna Nahars | Terni                  | 3                      | 1st CE          | 95x73, 65x36  | 11000         | Golvin, no. 144; Tosi, p. 366             | [link](https://amphi-theatrum.de/1401.html) |
| Lucus Feroniae   | Fiano Roman            | 0                      | Julio-Claudian  | 46x44 , 34x32 | 1850          | Golvin, no. 145; Tosi p. 421              | [link](https://amphi-theatrum.de/2923.html) |
| Mevania          | Bevagna                | 3                      | 1st CE          | 80x53, 44x24  | 7000          | Golvin, no. 282; Tosi, p. 370             | [link](https://amphi-theatrum.de/1596.html) |
| Ocriculum        | Otricoli               | 4                      | Julio-Claudian  | 120x98, 64x42 | 18000         | Golvin, no. 142; Tosi, p. 375             | [link](https://amphi-theatrum.de/1542.html) |
| Perusia          | Perugia                | 4                      | Imperial?       | ?x?, ?x?      | \-            | Golvin, p. 254; Tosi, p. 429              | n/a                                         |
| Spoletium        | Spoleto                | 3                      | 1st CE          | 115x85, ?x?   | \-            | Golvin nos. 86 and 169; Tosi, p. 381      | [link](https://amphi-theatrum.de/2681.html) |
| Sutrium          | Sutri                  | 1                      | Late Republican | 77x?, ?x?     | \-            | Golvin no. 8; Tosi, p. 433; Welch no. 15  | [link](https://amphi-theatrum.de/1469.html) |
| Tuder            | Todi                   | 0                      | Uncertain       | 90x60         | \-            | Golvin, p. 253; Tosi, p. 387              | [link](https://amphi-theatrum.de/1400.html) |
| Trebula Mutuesca | Monteleone             | 0                      | 2nd CE?         | ?x?, ?x?      | “small”       | Golvin, no. 58; Tosi, p. 312              | [link](https://amphi-theatrum.de/1504.html) |
| Volsinii Novi    | Bolsena                | 0                      | Flavian         | 100x84, 58x42 | 11,000        | Golvin no. 163; Tosi p. 442               | [link](https://amphi-theatrum.de/1554.html) |

Table 1: The 16 sixteen amphitheaters in the study region. References
are to ([Golvin 1988](#ref-golvinAmphitheatreRomainEssai1988); [Tosi
2003](#ref-tosiEdificiSpettacoliNell2003); [Welch
2009](#ref-welchRomanAmphitheatreIts2009)). When available, the links to
amphitheatrum give further bibliography and often have images.

With topography, lakes and waterways, amphitheaters, and roads digitally
represented, cost surface analysis can be pursued. Figure 4 shows a
partial result that is a precursor to creating figure 6. It displays
calculated 8-hour walking zones for the amphitheaters at Mevania,
Ocriculium, and Volsinii Novi. They are shaded to indicate increasing
time and the edges of each zone suggest how far one could walk, both
along roads and into the surrounding landscape, in that amount of time.
Each zone was calculated by running the r.grass.walk module within QGIS,
the widely-used open-source Geographic Information System.

While only including a sample of such zones, Figure 4 already indicates
that these three amphitheaters were not within an 8-hour walk of each
other. It is the case that there is very slight overlap between the
8-hour zones of Mevania and Ocriculum. This occurs just north of the
amphitheater at Carsulae. If we allow for some flexibility in deriving
past experience from these digital maps, it was loosely the case that
the inhabitants of Carsulae were within a day’s walk of the towns of
Mevania and Ocriculum each of which lay approximately 30km away on the
*Via Flaminiae*. And perhaps they would choose to make journey that if,
as likely, there was no event scheduled the amphitheater in their own
town but they knew of one taking place to the north or south ([Benefiel
2016, 446](#ref-benefielRegionalInteractionLocal2016)). I do not mean to
be speaking in absolute terms about these calculated zones and the
experiences they suggest. Adopting the approach described in the
introduction, this map illustrates the point that as one moved through
or even lived in different parts of this area, one had varying access to
more-or-less local amphitheaters. Someone living between Carsulae and
Mevania was closer than 8 hours to both. That is an obvious point but
this map suggests that the concept can be illustrated by digital means.
The map also includes the locations of other amphitheaters and so shows
all the other amphitheaters lay within the 8-hour zone of these three
structures. Noting this moves further towards the issue of
regional-scale interaction that is the motivating idea here. But some
more explanation of computational process is in order.

![Figure 4: Map showing sample 8-hour walking zones for the
amphitheaters at Mevania, Ocricoli, and Volsinii
Novi.](heath-supporting-images/heath-04-example-zones.png)

Cost surface analysis is a well established technique implemented by
many GIS applications ([Herzog
2020](#ref-herzogSpatialAnalysisBased2020); [Lewis
2021](#ref-lewisProbabilisticModellingIncorporating2021)). Writing
generically, by assigning a cost - whether time or, perhaps, calories -
to move through any point on a surface - and for this study the surface
is a landscape - the accumalated cost of moving between two specific
points can be calculated. The closely related concept of “Least Cost
Path” is the additional step of determining of the many possible paths
between two points, which one imposes the lowest total cost. Staying
within the context of this study, the time it takes for a person to walk
between points is the unit of cost used. In general, I’ll state that in
hours. And while the final result takes account of an accumulation of
inputs, the initiaL input for determing cost of movement at any one
point is the digital elevation model. Flat areas are potentially easier
to move through. And in the context of a DEM, “flat” means that two
sampled points are at nearly the same elevation. Sloping land slows down
walking, therefore increasing the time cost in seconds, and increasing
slope slows down walkers even more. The connection to human behavior is
made more intimate by making steep downward slopes the most costly to
traverse. This means that routes can have different costs in time
depending on the direction of travel. While it remains a constant
concern that the comnbination of inputs and algorithm can only remain a
proxy for human behavior, it is useful that testing against early modern
itineraries as well as ancient evidence has in general confirmed our
modern ability to digitally estimate walking distances across
Mediterranean landscapes so long as the numbers are supplemebted by
reasonable judgement and accomodation to the limts of our evidence
([Bevan 2013](#ref-bevanTravelInteractionGreek2013); [Seifried and
Gardner 2019](#ref-seifriedReconstructingHistoricalJourneys2019)).

All landscapes have variability as to the cost in time of moving through
its different parts. This often is the result of a myriad of small scale
phenomena such as forest, brush, or other changing overgrowth along with
more permanent aspects such as stone and boulders as well as larger and
smaller waterways, which can themselves by seasonal. It is not
possible - or rather, not practical within the scope of my current
work - to model all this variablity with digital tools. As noted above,
this study attempts to bring enough factors so that the maps it presents
can be said to take account of surface variability while also prompting
readers to complement this visual content with their own understanding
of how additional factors might affect the discussion here.

![Figure 5: Rendering of elements of the friction raster laid over a
“hillshade” rendering of topography. Red for rivers (10 additional
seconds per meter), green for roads (0), Gray for lakes (10,000 so
effectively impassable), and yellowish-green for all other areas (2).
Amphitheater locations in pink. Rivers are emphasized so that they are
visible at this scale. Readers should note that the “hillshade” effect
is not actually part of the GIS layer, which only records the four
values for river, lakes, roads, and all other
pixels.](heath-supporting-images/heath-05-friction.png)

Within the context of GIS-based cost surface analysis, the primary
method for introducing variable cost arising from factors other than
slope is to create a so-called “friction” surface. This can be described
most simply as the assigment of additional cost in seconds to move
through any point in the landscape. Figure 5 is a rendering of the
friction map that this study uses. In generating it, one assumption was
that Roman roads, shown in green, add no additional cost. They are easy
to walk along and slope is the only terrain-based factor making that can
slow someone down. Water is hard to pass so that a 10 second penalty per
meter is added for any points on the 10 meter grid that are said to be
water in the AWMC layer. This includes both the four major lakes,
smaller bodies of water, and the many rivers and streams (which are
often represented as being a single pixel wide). By this adjustment the
lakes become impassable and and the rivers and streams are somewhat
costly to pass. All the rest of the landscape is given a generic cost of
2 additional seconds per meter.

As noted, Figure 5 showed example “8-hour walking zones”. It is time to
unpack that phrase further before moving to combine the zones for all
sixteen amphitheaters in the study area. Looking back to Figure 5, I do
not mean to suggest that there was regular movement from, say, the
amphitheater at Mevania, which is the northern most zone, to all points
with the calculated zone. I instead mean to suggest that within that
zone there were both people living outside of Mevania and also using the
landscape who could think about traveling there and back to see the
gladiatorial combat, animal fights and public executions that might be
on display. In terms of living, Figure 7 - which I will discuss below -
does show that there were substantial settlements in Mevania’s zone. I
am as interested in the regions between all settlements and all areas of
any use. Fields for pasturage or springs for watering, smaller
settlements such as farms and villas, rural sanctuaries, and other types
of locations and activities can all have been present or taken place
within Mevania’s 8-hour walking zone. And I do also rely on a general
understanding that pathways and trails would have existed to allow
people to move between points that were of interest to them ([Snead et
al. 2009](#ref-sneadMakingHumanSpace2009)).

There is reason to think that the regions between larger sites were used
by a variety of people in a variety of ways. In looking at the
interpretation of field survey that draws heavily on central Italian
material, Witcher called for consideration of the “behavioural
variability of the past” ([Witcher 2006,
48](#ref-witcherBrokenPotsMeaningless2006)). Starting further afield,
results from excavationo of smaller sites in Tuscany by *The Roman
Peasant Project* (RPP) indicate that even a small set of smaller sites
shows great variability with overlapping categories of domestic life,
craft and agricultural production, along with indications of economic
connectivity being identified in sites first identified by field survey
([Collins-Elliott
2018](#ref-collins-elliottBehavioralAnalysisMonetary2018); [Bowes
2020](#ref-bowesRomanPeasantProject2020a)). By moving beyond simple
designations such as “farm”, RPP has added to ongoing discovery of
complexity in the Italian countryside as identified by a now long
history of fieldwork ([Fentress 2022](#ref-fentressReviewRomanPeasant)).
Within the study area here, the most systematic large-scale survey is
the the British School at Rome’s *Tibur Valley Project* (TVP), which is
now quite fully published ([Patterson et al.
2020](#ref-pattersonChangingLandscapesRome2020)). That volume itself
provides some of the language by which I find complexity in the region.
For the early imperial period, the authors write:

> Indeed, with Augustus’s rise to power, there were new opportunities,
> and incentives, to use novel types of material culture and social
> practices to reassert existing identities and to create new ones.”
> \[p. 122, citing ([Witcher
> 2006](#ref-witcherBrokenPotsMeaningless2006)) among others\].

These processes and practices continued into the 2nd century and it is
an important aspect of the TVP that it has collected a rich assemblage
of artefacts that extends human activity across the landscape. I point
readers to the excellent maps in the Open Licensed volume, which at the
time of this writing is downloadable from the publisher’s website at
<https://www.archaeopress.com/Archaeopress/Products/9781789696158>. And
because that volume is published under a Creative Commons license, I
reproduce the TVP map of mid-Imperial (100 to 250 CE) sites (fig. 8
below). Aligning *Lago di Bracciano*, which is to the south of Sutrium,
on that map and and on the maps here allows the relationship and overlap
between the two study areas to be easily ascertained. While the TVP did
identify a slight decrease in the numnber of mid-Imperial sites in
comparison to the early Imperial phase, the dip is not significant to
speak of sustained abandonment during the second century CE itself
([Patterson et al. 2020, fig.
4.36](#ref-pattersonChangingLandscapesRome2020)). Sustained economic
activity through the second century is also suggested by the preliminary
results of the *Roman Hinterland Project* that is aggregating material
from multiple surveys ([Attema et al. 2022,
247](#ref-attemaRomanHinterlandProject2022)).

Returning to the computational perspective, incorporating DEM, roads,
waterways, and destinations in the form of amphitheaters into a digital
representation of a landscape with the goal of generating cost surfaces
moves towards Gilling’s invocation of the idea of the ‘assemblage’ of
original layers and by-products that seems to inevitably result from GIS
work ([Gillings 2017, 123](#ref-gillingsMappingLiminalityCritical2017)).
I embrace the concept and list the main datasets that I bring together
in my assemblage in Appendix 1. The appendix also gives a link to a
Zenodo archive that allows my “assemblage” to be downloaded as an
archive that includes a QGIS project that collects the layers presented
as well as the Python code that generated the cost surfaces. I don’t
mean the combination of this article, the appendix, and the archive as a
complete tutorial on how to reproduce my work. But I have tried to make
it much easier for anyone to do that if they would like to try.
([Marwick et al. 2017](#ref-marwickOpenScienceArchaeology2017); [Heath
2022b](#ref-heathNarratingTransitionsTransformations2022)) In that
respect it is an additional form of transparency.

## Towards Movement and Experience

![Figure 6: Cumulative 8-hour zones. Red indicatesa walking access to
five amphitheaters, each zone then counts down by one, with gray
indicating no amphitheaters within an 8-hour
walk.](heath-supporting-images/heath-06-combined-zones.png)

All of the above comes together in figure 6. I do mean to have
anticipated much of what can be said about it, though it still needs
some explanation. Figure 6 was made by combining the sixteen 8-hour
walking zones so that each point on the map can be characterized by how
many amphitheaters are within an 8-hour walk. While the locations of
individual amphitheaters are noted, it is the overlapping colored
“patches” that are the main content. These highlight those parts of the
landscape - including towns that themselves hosted amphitheaters - that
had access to relatively many amphitheaters. At the high end, the small
red patches around Hispellum in the northeast of the study area and
south of Ocriculi indicate that there were five amphitheaters eight
hours away. Each change in color away from red counts down by one. The
read patches are small so that the far greater areas with access to four
amphitheaters are more characteristic. At the lowest end, the gray areas
had no such access.

Without meaning to be an exact representation of any individual’s
ability to move the the landscape, figure 6 encourages consideration of
the overlapping influence between topography, amphitheater placement,
and intervention into topography in the form of roads. Localized density
of amphitheaters is the dominant contributor to the high degree of
access around Hispellum. Anyone living in both town and country could
have walked to amphitheters in either Hispellum, Assisum, or Mevania. In
doing so, they sit next to or near other spectators who were familiar
with all these venues. Living 20 kilometers south of Hispellum might
have meant that one was drawn towards Spoletum. Visiting that
amphitheater might have meant sitting next to fewer people who had
recently been in another venue. That aspect of watching a day of
violence in these venues was probably less pronounced in Tuder, Volsinii
Novi, Ferentium, and Sutrium, which all lie in the western part of the
study area. Tuder sits on the Via Amerina so that it is certainly well
served by infrastructure geared to travel between regions. At the scale
of local experience, however, its amphitheaters is somewhat isolated.
The same is true, though perhaps to a lesser extent of the others lying
on or west of the Via Amerina.

I am intentionally using the qualifiers “could”, “might”, and “perhaps”.
They do allow for multiple forms of uncertatinty to enter into the
discussion. And I consider that a form of invitation. Readers should
fill this map with their own understanding of how movement might have
affected the experience of and within amphitheaters in the region. For
my part, I mean the concept of an “8-hour walking zone” to be
emphasizing the locally mobile members of Roman society, roughly the
non-elite, even poor, inhabitants of towns and rural areas. Travelling
along side or on a wagon would have made trips easier, though perhaps
not any faster ([Bevan 2013, 6](#ref-bevanTravelInteractionGreek2013)).
There were, of course, members of society for whom a day-long walk was
not possible. Small children may not have made such trips regularly.
Sneed’s ([2020, 1018](#ref-sneedArchitectureAccessRamps2020)) work on
disability and access to architectural settings is an invitation to
bring such experiences into the reading of the the maps here. While not
loosing sight of these individuals, it is possible to introduce some
numbers into consideration of movement in the Roman world and in this
region. Kolb has collected Roman travel times and routes, which allowed
daily rates of trael to be calculated ([Kolb
2009](#ref-kolbTransportUndNachrichtentransfer2009), Ch. V). She
estimates daily rates of travel by walking to be between 30 and 37 km
(p. 311). Modern average walking speed for a healthy adult is
approximately 4.5 km per hour (need citation). Multiplying that number
by 8 gives 36 kilometers, which is usefully close to Kolb’s daily
estimate. Vegetius (I.9), the author of a fourth century CE military
manual, suggests that Roman soldier should be able to march 30 km per
day, a number that has been widely adopted ([Scheidel 2014,
13](#ref-scheidelShapeRomanWorld2014) \[who recognizes that number as an
ideal\]). Kolb suggest 18 km as a more realistic average, a number based
on both ancient evidence and on the realizatoin that 30 kilometers could
not be sustained over many days. This present article is not concerned
with legionary marches. Nonetheless, expectations of daily travel in
military contexts help create a baseline for civilian experience. In the
same vein, some of our most immediate evidence for travel in Italy comes
from Cicero’s letters, written 200 years before the mid-2nd century CE,
which is our time period. His letter 15.3 to his friend Atticus begins,
“On the 22nd I received two letters from you at Arpinum, in which you
answered two of mine. One was dated the 18th, the other the 21st. First,
then, to the earlier of the two. Yes, do make an excursion to Tusculum,
as you say, where I think I shall arrive on the 27th.” (Text and
translation via
[Perseus](http://data.perseus.org/citations/urn:cts:latinLit:phi0474.phi057.perseus-lat1:15.3).)
Kolb’s calculations of distance traveled by Cicero’s - or his
correspondent’s - messengers suggest 50 to 50km as achievable rates of 1
or 2 day trips.

There is no need to too tightly bind these numbers from ancient sources
to calculated “8-hour walking zones”. The point is not to say that
because second-century CE Romans could walk some 20 to 30 kilometers in
a day, they did so frequently and did so with the purpose of visiting an
amphitheater. Rather it is to say that over the course of a year, or
over the course of a lifetime, these differing levels of access created
different individual relationships to these large strucutes and that
they changed the nature of that experience for those who did attend.

And it is again important to stress that the regions and towns between
amphitheaters are a focus here. Figure 7, the interactive map, can bring
that aspect to the fore. In terms of content, it uses the “Digital Atlas
of the Roman Empire” as its basemap ([Ahfeldt
nd](#ref-ahfeldtDigitalAtlasRomannd)), which in turn collects
information from the Pleiades Gazetteer of Ancient Sites and other
sources ([Bagnall et al.
2006](#ref-bagnallPleiadesCommunitybuiltGazetteer2006)). Reading DARE in
the context of the layers collected here, one notes Nenquincum, modern
Narni, lying between the amphitheaters at Carsulae, Interamnia Nahars,
and Ocriculum. Nequincum is also right at a choke point where the river
Nera creates a passage enabling north to south movement. This movement
was eased by the construction of the Augustan era Ponte d’Augusto. And
it is at the junction of the old and new branches of the Via Flaminia.
It has no amphitheater. Nonetheless, it can be considered to have been
well-served by the structures in the nearby town. Inhabitants, and
perhaps even travelers, might well find themselves talking about the
fights and other violence they had seen. This aspect of life in
Nequincum may well be in contrast to the experience of Clusium and
Cortona, in the north west of the study area. And as noted above, I have
included of mid-imperial sites that were identified by the Tiber Valley
Project as figure 8. Together these layers can encourage us to think of
the many people who would have moved through this landscape.

## Closing Remarks

In closing this article, I want to both raise the stakes while
recognizing that at the same time I am exploring the limits of what can
be said about the role of amphitheaters in the Roman empire. In the
introduction I confirmed that amphitheaters are with reason part of
considering the Roman Empire an overarching imperial structure that
combines enough elements to allow large-scale coherence to be
identified. There are many models of power in states such as that of
imperial Rome. Michael Mann’s identification of ideological, economic,
military and political components to the construction of effective power
in societies generally has found uptake amongst Roman historians ([Mann
1986](#ref-mannSourcesSocialPower1986); [Noreña 2010,
543](#ref-norenaEarlyImperialMonarchy2010)). In the study area,
Emmerson’s analysis of how the placement of the amphitheater at
Ocriculum evokes the placement of entertainment structures on the Campus
Martius in Rome ([Emmerson 2020, 184](#ref-emmersonLifeDeathRoman2020)).
From this perspecitve, someone familiar with Ocriculum and the Campus
Martius might be able to participate in the ideological program
established in the early empree and which continued to have relevance in
the second century. Such an interpretation is compatible with the very
local experience that I am speculating about. I do, however, mean to
find diversity and difference within the context of the built
infrastrucutre of the Roman empire as much as finding connection. In
this regard, I overlap with other scholarship stressing individual
experience. Noreña, cited above as an historian comfortable invoking
Mann, has also addressed “individual subjective experience” as a concern
within the study of empires ([Noreña 2019,
42](#ref-norenaIntroduction2019) (check)). Ramgopal
([2019](#ref-ramgopalMobility2019)), in the same volume, addresses
individual experience while taking on large scale issues of mobility in
the Roman world. At a more intimate scale,
Huemoeller([2020](#ref-huemoellerFreedomMarriageManumission2020))
identifies the contrary individual experiences of a freedwoman and the
freeborn husband whose control she escapes. I mean to allow for such
individual and diverse experiences to be seen, if only very indirectly,
in the maps I’ve made here. To the north of Rome, the shared
infrastructure of amphitheaters, when seen in their local context,
created diverse individual experiences as much as they were one unevenly
distributed component of a empire-wide coherence when viewed from that
wider perspective.

<iframe data-external="1" style="display: block; margin-left: auto; margin-right: auto; width: 80%; border:1px solid black; height:20em" src="heath-supporting-images/heath-07-dare/index.html" allowfullscreen="yes">
</iframe>

Figure 7: Interactive map of study area using the Digital Atlas of the
Roman Empire as a basemap and showing amphitheater locations, roads, and
count of amphitheaters within 8-hours walking using same color scheme as
Figure 6. It may be possible to “right-click” on the map and open it an
new and larger window. To load the map in its own browser window, click
<a href="heath-supporting-images/heath-07-dare/index.html">here</a>.

![Figure 8: Mid-Imperial (100-250 CE) sites as recorded by the Tiber
Valley Project. (After [Patterson et al. 2020, fig.
4.35](#ref-pattersonChangingLandscapesRome2020) on p. 201, where it is
published under a CC-By
license.).](heath-supporting-images/heath-08-tvp-mid-imperial.png)

## Appendix 1: GIS Layers

- Digital Elevation Model: 10-meter resolution raster provided by … This
  uses the UTM Zone 32N Coordinate Reference System (EPSG:32632). As an
  aside, I note that a 25 meter resolitoin DEM is available for much of
  Europe from link . The SRTM 30-meter DEM is also conveniently
  donloadable from <https://dwtkns.com/srtm30m/> and less conveniently
  from <https://search.earthdata.nasa.gov/search> . There are many other
  sources findable on the public internet.
- Amphitheater locations and descriptive data. This comes from the
  dataset roman-amphitheaters maintained by the author and currently
  available on GitHub at
  <https://github.com/roman-amphitheaters/roman-amphitheaters> . The
  geojson file there is the source version of the data. As a
  convenience, that file is converted into a CSV file. While the CSV
  file is more easily imported into GIS software, it does not have all
  the information found in the geojson file.
- Roads: AWMC. As downloaded, that data contains an artefact of having
  been digitized from the *Barrington Atlas* (Talbert et al. ????)
- Settlements and other locations that are not amphitheaters: Pleiades.
  Pleiades makes daily exports available. Those can be imported into
  QGIS easily. Queries and manutal selection identified the Roman-period
  settlements and other features that were included in the discussion
  here.
- Rivers. AWMC ORBIS tiles set Rivers were incorporated into the
  friction raster by adding friction. Lakes were made impassable by
  masking them with the ‘nodata’ value.
- Lakes: AWMC provides an ‘inland water’ layer.
- Data for download: I have packaged many of these listed resources,
  along with the final and some of the intermediate outputs of the
  processing I describe, into an archive on Zenodo. That can be
  downloaded via: \#link to come#.

<!--
## Appendix 4: Additional 3D Maps

<model-viewer style="width: 90%; height: 12cm;"
 camera-controls enable-pan src="images-3d/14-no-edges.gltf"  environment-image="neutral" shadow-intensity="1" min-camera-orbit="auto 0deg auto" max-camera-orbit="auto 90deg auto" min-field-of-view="12deg"></model-viewer>

<figure sytle="width:80%">
<model-viewer style="position: relative; width: 100%; height: 8cm;"
 enable-pan src="images-3d/paired.glb" camera-controls environment-image="neutral" shadow-intensity="1" min-camera-orbit="auto 0deg auto" max-camera-orbit="auto 90deg auto" min-field-of-view="12deg"> </model-viewer>
<figcaption>Paired 3D Maps of Cost of Travel from amphitheaters. The surface shape on left is exagerated natural topoography. On the right the surface is also the cost of travel and correlates to the color.</figcaption>
</figure>

-->

## Works Cited

<!-- Generating and using the friction surface is very much the step that requires the most active bridging of imagined human experience and specific digital practice. It also makes stark the inescapable circumstance that the full variability of human behavior and experience cannot be captured in such a digital representation. I use the same language as above: This is freeing. How so? No single raster can capture what is was like to move through the landscape for all the people who did so, especially as on imagines all the ways they could undertake that movement. Are we considering adult or child actors? Male or female? Well-fed or hungry? Enslaved or not? On horseback or on or next to a cart? As part of a large informal group having to wait for the slowest member? Or as part of a large well-organized group such as a military detachment on the march? Troupes of gladiators and their attendants may be something of middle ground on this axis: well-organized but perhaps not always operating with legionary efficiency. This list of questions could go on and on. At what time of year is the travel taking place? Perhaps a raster could be developed for any single aspect mentioned in this paragraph. And combination is possible. But if we extend straight to the observation that human behavior is infinitely variable, that quickly leads to the conclusion that representing human behvior requires infinite digital resources. And then, there's equal problem that we can't recover the past with even close to full accuracy. All this is freeing because we can allude to all of it.

Here is how I use that freedom while working within the sharp constraints of (1) the digital resources are available, (2) my time to gather and lightly adapt those resources, (3) the computational resources I have at hand (my 17" MacBook Pro), and (4) QGIS' built-in abilities, the choosing of which makes the processes I describe here more accessible - more doable - for others. -->

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-ahfeldtDigitalAtlasRomannd" class="csl-entry">

Ahfeldt, Johan. nd. Digital Atlas of the Roman Empire. *Digtital Atlas
of the Roman Empire*. https://dh.gu.se/dare/.

</div>

<div id="ref-AllModelsAre2022" class="csl-entry">

All models are wrong. 2022. *Wikipedia*.

</div>

<div id="ref-attemaRomanHinterlandProject2022" class="csl-entry">

Attema, P. a. J., P. Carafa, W. M. Jongman, C. J. Smith, A. J.
Bronkhorst, M. C. Capanna, T. C. A. de Haas, et al. 2022. The Roman
Hinterland Project: Integrating Archaeological Field Surveys around Rome
and Beyond. *European Journal of Archaeology* 25. Cambridge University
Press: 238–258. <https://doi.org/10.1017/eaa.2021.51>.

</div>

<div id="ref-bagnallPleiadesCommunitybuiltGazetteer2006"
class="csl-entry">

Bagnall, Roger, Richard J. A. Talbert, Sarah Bond, Jeffrey Becker, Tom
Elliott, Sean Gillies, Ryan Horne, et al. 2006. Pleiades: A
community-built gazetteer and graph of ancient places. Collection.
http://pleiades.stoa.org; Institute for the Study of the Ancient World,
New York University.

</div>

<div id="ref-benefielRegionalInteractionLocal2016" class="csl-entry">

Benefiel, Rebecca. 2016. Regional Interaction and Local Networks. In *A
Companion to Roman Italy*, ed. Alison E. Cooley, 441–458. West Sussex:
John Wiley & Sons.

</div>

<div id="ref-bevanTravelInteractionGreek2013" class="csl-entry">

Bevan, Andrew. 2013. Travel and Interaction in the Greek and Roman
World. A Review of Some Computational Modelling Approaches. In *The
Digital Classicist 2013*, ed. Stewart Dunn and Simon Mahony, 4–24.
Bulletin of the Sociery of Classical Studies Supplement 122.

</div>

<div id="ref-bomgardnerStoryRomanAmphitheatre2000" class="csl-entry">

Bomgardner, David. 2000. *The Story of the Roman Amphitheatre*. London:
Taylor and Francis.

</div>

<div id="ref-bomgardnerMageriusMosaicRevisited2009" class="csl-entry">

Bomgardner, David. 2009. The Magerius Mosaic Revisited. In *Roman
amphitheatres and Spectacula, a 21st -century perspective: Papers from
an international conference held at Chester, 16th-18th February, 2007*,
ed. Tony Wilmott, 165–177. BAR International Series 1946. Oxford:
Archaeopress.

</div>

<div id="ref-bowesRomanPeasantProject2020a" class="csl-entry">

Bowes, Kim, ed. 2020. *The Roman Peasant Project 2009-2014: Excavating
the Roman rural poor*. University Museum Monograph 154. Philadelphia:
University of Pennsylvania Museum of Archaeology and Anthropology.

</div>

<div id="ref-colemanFatalCharadesRoman1990" class="csl-entry">

Coleman, K. M. 1990. Fatal Charades: Roman Executions Staged as
Mythological Enactments. *The Journal of Roman Studies* 80: 44–73.
<https://doi.org/10.2307/300280>.

</div>

<div id="ref-collins-elliottBehavioralAnalysisMonetary2018"
class="csl-entry">

Collins-Elliott, Stephen A. 2018. A Behavioral Analysis of Monetary
Exchange and Craft Production in Rural Tuscany via Small Finds from the
Roman Peasant Project. *Journal of Mediterranean Archaeology* 31:
155–179. <https://doi.org/10.1558/jma.38081>.

</div>

<div id="ref-druckerHumanitiesApproachesGraphical2011"
class="csl-entry">

Drucker, Johanna. 2011. Humanities Approaches to Graphical Display.
*Digital Humanities Quarterly* 005.

</div>

<div id="ref-duncan-jonesImpactAntoninePlague1996" class="csl-entry">

Duncan-Jones, R. P. 1996. The impact of the Antonine plague. *Journal of
Roman Archaeology* 9. Cambridge University Press: 108–136.
<https://doi.org/10.1017/S1047759400016524>.

</div>

<div id="ref-elkinsMonumentDynastyDeath2019" class="csl-entry">

Elkins, Nathan T. 2019. *A monument to dynasty and death: The story of
Rome’s Colosseum and the emperors who built it*. Witness to Ancient
History. Baltimore, MD: Johns Hopkins University Press.

</div>

<div id="ref-emmersonLifeDeathRoman2020" class="csl-entry">

Emmerson, Allison L. C. 2020. *Life and death in the Roman suburb*.
First edition. Oxford, United Kingdom: Oxford University Press.

</div>

<div id="ref-faganLureArenaSocial2011" class="csl-entry">

Fagan, Garrett G. 2011. *The lure of the arena: Social psychology and
the crowd at the Roman games*. Cambridge: Cambridge Univ. Press.

</div>

<div id="ref-fentressReviewRomanPeasant" class="csl-entry">

Fentress, Elizabeth. 2022. Review of: The Roman Peasant Project
2009-2014. *Bryn Mawr Classical Review*.

</div>

<div id="ref-gaffneyForumNovumVescovio2001" class="csl-entry">

Gaffney, Vince, Helen Patterson, Paul Roberts, G. Barratt, A. Bradley,
W. Clarke, D. Goodman, et al. 2001/ed. Forum Novum: Studying urbanism in
the Tiber valley. *Journal of Roman Archaeology* 14. Cambridge
University Press: 58–79. <https://doi.org/10.1017/S1047759400019838>.

</div>

<div id="ref-gillingsLandscapePhenomenologyGIS2012" class="csl-entry">

Gillings, Mark. 2012. Landscape Phenomenology, GIS and the Role of
Affordance. *Journal of Archaeological Method and Theory* 19. Springer:
601–611. <https://doi.org/10.1007/s10816-012-9137-4>.

</div>

<div id="ref-gillingsMappingLiminalityCritical2017" class="csl-entry">

Gillings, Mark. 2017. Mapping liminality: Critical frameworks for the
<span class="nocase">GIS-based</span> modelling of visibility. *Journal
of Archaeological Science* 84. Archaeological GIS Today: Persistent
Challenges, Pushing Old Boundaries, and Exploring New Horizons: 121–128.
<https://doi.org/10.1016/j.jas.2017.05.004>.

</div>

<div id="ref-golvinAmphitheatreRomainEssai1988" class="csl-entry">

Golvin, Jean-Claude. 1988. *L’Amphithéâtre romain: essai sur la
théorisation de sa forme et de ses fonctions*. Paris: De Boccard.

</div>

<div id="ref-heathEstimatingMappingRoman2022" class="csl-entry">

Heath, Sebastian. 2022a. Estimating and Mapping Roman Amphitheater
Seating Capacity. *Journal of Ancient History and Archaeology* 9:
239–248. <https://doi.org/10.14795/j.v9i4.784>.

</div>

<div id="ref-heathNarratingTransitionsTransformations2022"
class="csl-entry">

Heath, Sebastian. 2022b. Narrating Transitions and Transformations in
Cultural Heritage Digital Workflows: Using a JSON-Encoded Dataset of
Roman Amphitheaters. In *Digital Heritage And Archaeology In Practice:
Data, Ethics, And Professionalism*, ed. Ethan Watrall and Lynn
Goldstein, 71–97. Gainesville: University Press of Florida.

</div>

<div id="ref-heathNearnessExperienceNetwork2023" class="csl-entry">

Heath, Sebastian. 2023. Nearness and Experience in a Network of Roman
Amphitheaters. In *Data Science, Human Science, and Ancient Gods*, ed.
Sandra Blakely and Megan Daniels, 135–173. Studies in Ancient
Mediterranean Religions 3. Atlanta: Lockwood Press.

</div>

<div id="ref-herzogSpatialAnalysisBased2020" class="csl-entry">

Herzog, Irmela. 2020. Spatial Analysis Based On Cost Functions. In
*Archaeological Spatial Analysis: A Methodological Guide*, ed. Mark
Gillings, Piraye Hacıgüzeller, and Gary Lock, 333–358. Routledge.
<https://doi.org/10.4324/9781351243858-18>.

</div>

<div id="ref-hopkinsColosseum2005" class="csl-entry">

Hopkins, Keith, and Mary Beard. 2005. *The Colosseum*. Cambridge, Mass.:
Harvard University Press.

</div>

<div id="ref-huemoellerFreedomMarriageManumission2020"
class="csl-entry">

Huemoeller, Katharine P. D. 2020. Freedom in Marriage? Manumission for
Marriage in the Roman World. *The Journal of Roman Studies* 110.
Cambridge University Press: 123–139.
<https://doi.org/10.1017/S0075435820001379>.

</div>

<div id="ref-kolbTransportUndNachrichtentransfer2009" class="csl-entry">

Kolb, Anne. 2009. Transport und Nachrichtentransfer im Römischen Reich.
In *Transport und Nachrichtentransfer im Römischen Reich*. Akademie
Verlag. <https://doi.org/10.1524/9783050048246>.

</div>

<div id="ref-laurenceRoadsRomanItaly1999" class="csl-entry">

Laurence, Ray. 1999. *The Roads of Roman Italy: Mobility and Cultural
Change*. London: Routledge.

</div>

<div id="ref-lewisProbabilisticModellingIncorporating2021"
class="csl-entry">

Lewis, Joseph. 2021. Probabilistic Modelling for Incorporating
Uncertainty in Least Cost Path Results: A Postdictive Roman Road Case
Study. *Journal of Archaeological Method and Theory* 28: 911–924.
<https://doi.org/10.1007/s10816-021-09522-w>.

</div>

<div id="ref-mannSourcesSocialPower1986" class="csl-entry">

Mann, Micheal. 1986. *The Sources of Social Power*. Cambridge: Cambridge
University Press.

</div>

<div id="ref-marwickOpenScienceArchaeology2017" class="csl-entry">

Marwick, Ben, Jade d’Alpoim Guedes, C. Michael Barton, Lynsey A. Bates,
Michael Baxter, Andrew Beavan, Elizabeth A. Bollwerk, et al. 2017. Open
Science in Archaeology. *SAA Archaeological Record* 17: 8–14.

</div>

<div id="ref-norenaEarlyImperialMonarchy2010" class="csl-entry">

Noreña, Carlos. 2010. The Early Imperial Monarchy. In *The Oxford
Handbook of Roman Studies*, ed. Alessandro Barchiesi and Walter
Scheidel, 534–546. Oxford: Oxford University Press.
<https://doi.org/10.1093/oxfordhb/9780199211524.013.0034>.

</div>

<div id="ref-norenaIntroduction2019" class="csl-entry">

Noreña, Carlos. 2019. Introduction. In *A Cultural History of Western
Empires in Antiquity*, 1–38. A Cultural History of Western Empires 1.
Bloomsbury Academic. <https://doi.org/10.5040/9781474207263.0006>.

</div>

<div id="ref-olshausenRoadsRoutesImperium2010" class="csl-entry">

Olshausen, Eckhart. 2010. Roads and routes in the Imperium Romanum. In
*Historical Atlas of the Ancient World*, ed. Anne Wittke, Eckhart
Olshausen, and Richard Szydlak. Vol. 3. Brill’s New Pauly Supplements.
Leiden: Brill. <https://doi.org/10.1163/2214-8647_bnps3_BNPA194>.

</div>

<div id="ref-pattersonChangingLandscapesRome2020" class="csl-entry">

Patterson, Helen, Robert Witcher, and Helga Di Giuseppe, ed. 2020. *The
Changing Landscapes of Rome’s Northern Hinterland: The British School at
Rome’s Tiber Valley Project*. Archaeopress Roman Archaeology 79.
Summertown.

</div>

<div id="ref-ramgopalMobility2019" class="csl-entry">

Ramgopal, Sailakshmi. 2019. Mobility. In *A Cultural History of Western
Empires in Antiquity, Volume 1*, ed. Carlos Noreña, 131–152. A Cultural
History of Western Empires. London: Bloomsbury Academic.

</div>

<div id="ref-scheidelShapeRomanWorld2014" class="csl-entry">

Scheidel, Walter. 2014. The shape of the Roman world: Modelling imperial
connectivity. *Journal of Roman Archaeology* 27. Journal of Roman
Archaeology L.L.C.: 7–32. <https://doi.org/10.1017/S1047759414001147>.

</div>

<div id="ref-seifriedReconstructingHistoricalJourneys2019"
class="csl-entry">

Seifried, Rebecca M., and Chelsea A. M. Gardner. 2019. Reconstructing
historical journeys with least-cost analysis: Colonel William Leake in
the Mani Peninsula, Greece. *Journal of Archaeological Science: Reports*
24: 391–411. <https://doi.org/10.1016/j.jasrep.2019.01.014>.

</div>

<div id="ref-shepherdHistoricalAtlas1926" class="csl-entry">

Shepherd, William R. 1926. *Historical atlas*. Fifth. New York: Henry
Holt.

</div>

<div id="ref-sneadMakingHumanSpace2009" class="csl-entry">

Snead, James, Clark Erickson, and Andrew Darling. 2009. [Making Human
Space: The Archaeology of Trails, Paths, and
Roads](https://www.jstor.org/stable/j.ctt3fhjb3.18). In *Landscapes of
Movement: Trails, Paths, and Roads in Anthropological Perspective*, ed.
James Snead, Clark Erickson, and Andrew Darling. University of
Pennsylvania Press.

</div>

<div id="ref-sneedArchitectureAccessRamps2020" class="csl-entry">

Sneed, Debby. 2020. The architecture of access: Ramps at ancient Greek
healing sanctuaries. *Antiquity* 94. Cambridge University Press:
1015–1029. <https://doi.org/10.15184/aqy.2020.123>.

</div>

<div id="ref-susmannRegionalWaysSeeing2020" class="csl-entry">

Susmann, Natalie M. 2020. Regional Ways of Seeing: A Big-Data Approach
for Measuring Ancient Visualscapes. *Advances in Archaeological
Practice* 8. Cambridge University Press: 174–191.
<https://doi.org/10.1017/aap.2020.6>.

</div>

<div id="ref-tarquini10mresolutionTINITALYTransdisciplinary2017a"
class="csl-entry">

Tarquini, Simone, and Luca Nannipieri. 2017. The 10m-resolution TINITALY
DEM as a trans-disciplinary basis for the analysis of the Italian
territory: Current trends and new perspectives. *Geomorphology* 281:
108–115. <https://doi.org/10.1016/j.geomorph.2016.12.022>.

</div>

<div id="ref-tosiEdificiSpettacoliNell2003" class="csl-entry">

Tosi, Giovanna. 2003. *Gli edifici per spettacoli nell’Italia romana 1
1*. Roma: Ed. Quasar.

</div>

<div id="ref-tuckSpectacleIdeologyRelief2007" class="csl-entry">

Tuck, Steven L. 2007. Spectacle and ideology in the relief decorations
of the Anfiteatro Campano at Capua. *Journal of Roman Archaeology* 20.
Cambridge University Press: 255–272.
<https://doi.org/10.1017/S1047759400005407>.

</div>

<div id="ref-welchRomanAmphitheatreIts2009" class="csl-entry">

Welch, Katherine E. 2009. *The Roman amphitheatre: From its origins to
the Colosseum*. Cambridge; New York: Cambridge University Press.

</div>

<div id="ref-whiteWhatSpatialHistory2010" class="csl-entry">

White, Richard. 2010. What is Spatial History? Stanford University
Spatial History Lab.

</div>

<div id="ref-witcherBrokenPotsMeaningless2006" class="csl-entry">

Witcher, Robert. 2006. Broken pots and meaningless dots? Surveying the
rural landscapes of Roman Italy. *Papers of the British School at Rome*
74. Cambridge University Press: 39–72.
<https://doi.org/10.1017/S0068246200003226>.

</div>

</div>
