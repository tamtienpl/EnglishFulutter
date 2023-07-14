String irvsource() {
  var irverbs =
      '''alight	alighted/alit	alighted/alit
arise	arose	arisen
awake	awoke/awaked	awoken/awaked
be	was/were	been
bear	bore	borne/born
beat	beat	beaten/beat
become	became	become
beget	begot	begotten
begin	began	begun
bend	bent	bent
bereave	bereaved/bereft	bereaved/bereft
beseech	besought/beseeched	besought/beseeched
bet	bet/betted	bet/betted
bid	bade/bid	bidden/bid/bade
bide	bade/bided	bided
bind	bound	bound
bite	bit	bitten
bleed	bled	bled
bless	blessed/blest	blessed/blest
blow	blew	blown
break	broke	broken
breed	bred	bred
bring	brought	brought
broadcast	broadcast/broadcasted	broadcast/broadcasted
build	built	built
burn	burnt/burned	burnt/burned
burst	burst	burst
bust	bust/busted	bust/busted
buy	bought	bought
can	could	(kein Participle)
cast	cast	cast
catch	caught	caught
choose	chose	chosen
cleave	cleft/cleaved/clove	cleft/cleaved/cloven
cling	clung	clung
clothe	clothed/clad	clothed/clad
come	came	come
cost	cost	cost
creep	crept	crept
crow	crowed	crew/crowed
cut	cut	cut
deal	dealt	dealt
dig	dug	dug
do	did	done
draw	drew	drawn
dream	dreamt/dreamed	dreamt/dreamed
drink	drank	drunk
drive	drove	driven
dwell	dwelt/dwelled	dwelt/dwelled
eat	ate	eaten
fall	fell	fallen
feed	fed	fed
feel	felt	felt
fight	fought	fought
find	found	found
flee	fled	fled
fling	flung	flung
fly	flew	flown
forbid	forbad/forbade	forbid/forbidden
forecast	forecast/forecasted	forecast/forecasted
forget	forgot	forgotten
forsake	forsook	forsaken
freeze	froze	frozen
geld	gelded/gelt	gelded/gelt
get	got	got/gotten
gild	gilded/gilt	gilded/gilt
give	gave	given
gnaw	gnawed	gnawed/gnawn
go	went	gone
grind	ground	ground
grip	gripped/gript	gripped/gript
grow	grew	grown
hang	hung	hung
have	had	had
hear	heard	heard
heave	heaved/hove	heaved/hove
hew	hewed	hewed/hewn
hide	hid	hidden/hid
hit	hit	hit
hold	held	held
hurt	hurt	hurt
keep	kept	kept
kneel	knelt/kneeled	knelt/kneeled
knit	knitted/knit	knitted/knit
know	knew	known
lay	laid	laid
lead	led	led
lean	leant/leaned	leant/leaned
leap	leapt/leaped	leapt/leaped
learn	learnt/learned	learnt/learned
leave	left	left
lend	lent	lent
let	let	let
lie	lay	lain
light	lit/lighted	lit/lighted
lose	lost	lost
make	made	made
may	might	(kein Participle)
mean	meant	meant
meet	met	met
melt	melted	molten/melted
mow	mowed	mown/mowed
pay	paid	paid
pen	pent/penned	pent/penned
plead	pled/pleaded	pled/pleaded
prove	proved	proven/proved
put	put	put
quit	quit/quitted	quit/quitted
read	read	read
rid	rid/ridded	rid/ridded
ride	rode	ridden
ring	rang	rung
rise	rose	risen
run	ran	run
saw	sawed	sawn/sawed
say	said	said
see	saw	seen
seek	sought	sought
sell	sold	sold
send	sent	sent
set	set	set
sew	sewed	sewn/sewed
shake	shook	shaken
shall	should	(kein Participle)
shear	sheared	shorn/sheared
shed	shed	shed
shine	shone	shone
shit	shit/shitted/shat	shit/shitted/shat
shoe	shod/shoed	shod/shoed
shoot	shot	shot
show	showed	shown/showed
shred	shred/shredded	shred/shredded
shrink	shrank/shrunk	shrunk
shut	shut	shut
sing	sang	sung
sink	sank	sunk
sit	sat	sat
slay	slew	slain
sleep	slept	slept
slide	slid	slid
sling	slung	slung
slink	slunk	slunk
slit	slit	slit
smell	smelt/smelled	smelt/smelled
smite	smote	smitten
sow	sowed	sown/sowed
speak	spoke	spoken
speed	sped/speeded	sped/speeded
spell	spelt/spelled	spelt/spelled
spend	spent	spent
spill	spilt/spilled	spilt/spilled
spin	spun	spun
spit	spat	spat
split	split	split
spoil	spoilt/spoiled	spoilt/spoiled
spread	spread	spread
spring	sprang/sprung	sprung
stand	stood	stood
steal	stole	stolen
stick	stuck	stuck
sting	stung	stung
stink	stank/stunk	stunk
stride	strode	stridden
strike	struck	struck
string	strung	strung
strive	strove	striven
swear	swore	sworn
sweat	sweat/sweated	sweat/sweated
sweep	swept	swept
swell	swelled	swollen/swelled
swim	swam	swum
swing	swung	swung
take	took	taken
teach	taught	taught
tear	tore	torn
telecast	telecast/telecasted	telecast/telecasted
tell	told	told
think	thought	thought
throw	threw	thrown
thrust	thrust	thrust
tread	trod	trodden
understand	understood	understood
wake	woke/waked	woken/waked
wear	wore	worn
weave	wove	woven
wed	wed/wedded	wed/wedded
weep	wept	wept
wet	wet/wetted	wet/wetted
win	won	won
wind	wound	wound
wring	wrung	wrung
write	wrote	written''';
  return irverbs;
}

String stress =
    '''abandon alter anchor anger answer batter benefit bicker bolster borrow 
bother budget bugger cater charter clamber cluster combat conquer counter cover 
credit dampen darken deepen detail differ destruct edit enter exit falter fasten 
fathom filter flicker flower focus follow format foster frighten gather 
gossip hammer hamper happen hasten hinder hover index input iron lessen letter
level lighten limit loosen market master matter merit minister mirror mix minister 
motor murder murmur muster mutter marrow offer open order pardon picture pilot 
plunder poison ponder power profit quicken quieten reason reckon register 
render row scatter sever sharpen shatter shiver shoulder smother soften 
sponsor straighten suffer summon swallow tailor target temper tender thicken 
threaten tighten travel trigger usher utter visit vomit wander water waver 
weaken weather whisper wither wonder worship''';

String noings =
    '''adore agree be become believe belong consist cost contain 
despise disagree disappear doubt enjoy forget hate hear include involve know 
last like long love matter need own prefer recognize remain remember see seem 
sense sound suspect understand want weigh''';

String noobjs =
    '''agree appear arrive be become belong collapse consist cost cough cry 
depend die disagree disappear emerge exist fall gallop go happen hiccup hic-cough 
inquire last laugh lie live look matter occur remain respond result revolt rise 
sit sleep smile sneeze stand stay swim vanish vomit wake wait walk''';

String singwiths =
    '''abacus abbess abruptness abscess abyss academicals access acidosis 
acquisitiveness acropolis actress actus address adenovirus aegis aerobatics 
aerobics aeronautics aggressiveness agonistes agribusiness agrostis 
aimlessness airbus airworthiness albatross alertness alexis all-comers 
allsorts alms aloneness aloofness alumnus amanuensis amaryllis amess amicus 
amniocentesis amplexus amyloidosis analysis anastomosis andres animus 
antithesis anus apoptosis apotheosis apparatus appendicitis appropriateness 
arbitrariness argus arras arthritis asbestos asbestosis ascites asparagus 
ass assertiveness astrophysics astuteness atherosclerosis atlas atmospherics 
attentiveness atticus attractiveness aureus authoress avionics avis awareness 
awfulness awkwardness axis bacillus backstairs backwardness backwoods 
baculovirus badlands badness baldness banns baroness barrenness basis 
bathos battledress beastliness beaux-arts bedclothes bias binoculars biogas 
biomass biosynthesis bis bitterness blackness blandness blankness bleakness 
blindness bliss bloody-mindedness blueness bluntness boldness bollocks bolus 
bonus boss brashness brass breathlessness brightness britches brittleness 
bronchitis brontosaurus brooks burgess bus business buss busyness buttress 
bypass cactus caddis calculus callousness calmness calvados campus camus 
candidiasis cannabis cantharus canvas canvass carcass carcinogenesis 
carelessness caress carlos cassis casualness catalysis catechesis catharsis 
caucus celsius census cess chablis challis chamois chaos charles chassis 
cheapness cheerfulness chess childishness childlessness chilliness cholangitis 
cholecystitis cholestasis chorus chris chrysalis circus cirrhosis cirrus citrus 
civitas civvies claes class classlessness cleanliness clearness clematis 
cleverness clitoris closeness clumsiness coarseness cohesiveness coitus 
coldness colitis collins colobus colossus compactness compass competitiveness 
completeness comprehensiveness congress connectedness consciousness consensus 
continuous coolness corps corpus correctness corydoras cosiness cost-effectiveness 
countess coveralls covetousness coyness craziness creditworthiness cress 
crisis crispness criss-cross crocus cross cryptosporidiosis culottes cumulus 
cunnilingus curtis cybernetics cyclops cypress cyrus cystitis cytomegalovirus 
dais dallas dampness darius darkness davis deaconess deadness deafness dealings 
debris decisiveness deerness defensiveness definiteness deftness deixis 
demetrius demographics dennis dermatitis    
destructiveness detritus deviousness diabetes diagenesis diagnosis dialysis 
dickens digitalis dimness directness discus distinctiveness distinctness 
distress dizziness doldrums douglas drabness dreariness dress droppings dross 
drowsiness drunkenness dryness duchess dullness dungarees duodenitis duress 
eagerness earlies earnestness earnings econometrics economics edginess 
effectiveness egress electrolysis electrophoresis elevenses elias ellipsis 
ellis embryogenesis emphasis empress emptiness encephalitis endometriosis 
endoprosthesis energetics enteritis enuresis epidermis epos ergonomics 
eros es ess ethos eucalyptus eugenics eurythmics evenness exactness excess 
exclusiveness exegesis exodus explicitness expressiveness eye-witness 
eyewitness facies faeces faintness fairness faithfulness falseness 
fancy-dress fastidiousness fastness fatness feebleness femaleness fetus 
fibreglass fibrosis ficus fierceness financials fineness firmness fitness 
flatness floss focus foetus fondness foolishness forcefulness forceps 
forensics forgetfulness forgiveness fortress foss foulness fracas francais 
francis frankness freshness friendliness fruitfulness fullness fundus fungus 
fuss gallows gas gastritis gastroenteritis gasworks gauss genesis genius 
gentleness genuineness genus geophysics giddiness gis gladness glass gloss 
gneiss goddess godliness gonococcus goodness goss governess graciousness 
gramps grampus grass gravitas greatness greenness greyness grimness grossness 
gubbins habitus haemostasis halitosis handedness happiness hardiness hardness 
harness harris harshness hastings have-nots haves headdress headmistress 
heaviness heiress helpfulness helplessness hepatitis hermeneutics herpes 
hiatus hibiscus highness hippocampus hippopotamus his hiss hoarseness holiness 
hollowness hols homelessness homeostasis homesickness hopelessness hoss 
hostess hubris humanness humerus humus hydrolysis hypnosis hypobiosis 
hypothalamus hypothesis hysteresis ibis ichthus idleness ignoramus ileitis     
illness impetus impulsiveness inappropriateness incompleteness incubus 
indebtedness indecisiveness ineffectiveness informatics ingress inventiveness
inwardness iris ironworks isaias isis isthmus its jacobs jacques jakes 
james jenesis jess jesus jews jodhpurs johannes jonas jones julius joss judas 
jus keenness kindliness kindness kinematics knickers knowingness kouros lameness 
landmass lass lateness lawfulness lawlessness laziness les letterpress lewis lexis 
lias lightness likeness lioness liss literariness litmus liveliness locus loess 
lomas loneliness looking-glass looseness loss lotus loudness louis loveliness    
lucas lukas luis lupus lysis macroeconomics madness madras magnetics majlis 
maleness manageress mandamus manliness mantis maquis marchioness marcos marcus 
marquess marquis mass masterclass mastitis mathematics matias mattress mavis 
mayoress maximus meaningfulness meaninglessness meanness meekness meiosis memphis 
meningitis mess meta-analysis metamorphosis metastasis methanogenesis metropolis     
microdialysis microeconomics mildness miles mimesis mindedness minibus mirabilis 
missus mistress mitosis modulus modus moises morass morphogenesis morris mos moses 
moss motocross ms mucus murderess mutagenesis myles nakedness narcissus narrowness 
nastiness naturalness naughtiness nautilus nearness neatness necropolis 
necrosis negus neighbourliness nemesis nervousness ness neurosis newness news 
nexus niceness nicolas nightclothes nightdress nimbus nothingness nous nucleus 
numbness oasis obviousness octopus oddness oesophagitis oesophagus oestrus omnibus 
oneness onus openness opus orderliness ordinariness orthopaedics os osmosis 
osteoarthritis osteoporosis otherness otitis paediatrics pais paleness     
palmas pancreas pancreatitis papillomavirus papyrus paralysis paratroops 
paratuberculosis parenthesis paris parthenogenesis parvis pass pastis pathogenesis 
pathos patois patroness peacefulness pegasus pelvis penis peristalsis 
peritonitis permissiveness persuasiveness pertussis pervasiveness pes 
pettiness phallus phosphorus photolysis photosynthesis pinus piss plainness 
platypus playfulness pleasantness plexiglass plexus plumpness pneumocystis 
poetess poetics pointlessness poliomyelitis poliovirus polis politeness 
polyanthus polyneuritis polyposis pons portcullis porteous possessiveness 
postmistress pouchitis powerlessness praxis precariousness precis premiss     
preparedness pres press pretentiousness prettiness priestess primus 
princess prioress proboscis process proctitis prognosis progress 
progressiveness promptness prophylaxis proprietress prospectus 
protectiveness proteus prowess ps pseudomonas psoriasis psychoanalysis 
psycholinguistics psychosis pus puss pylorus pyrotechnics quickness 
quietness rabies radius ramus randomness ranunculus ras rashness rawness 
readiness reasonableness rebus receptiveness recess recklessness redness 
regress relatedness remoteness rendezvous representativeness res 
resourcefulness responsiveness restlessness retinitis rhesus rhinitis 
rhinoceros rhombus rhys richness rickets rictus righteousness rightness ripeness 
riskiness robustness ross roughness roundness rudeness rumpus ruthlessness 
sacredness sadness sameness sapiens sarcoidosis sarcophagus saunders 
scabies schistosomiasis schnapps schoolmistress sclerosis seamstress 
seasickness secateurs self-analysis self-awareness self-consciousness 
self-righteousness selfishness selflessness semi-darkness separateness 
sepsis series seriousness sexiness shabbiness shallowness shamus sharpness 
sheerness shepherdess short-sightedness shortness showbusiness shrewdness 
shyness sickness siemens silas silliness sinfulness single-mindedness singleness     
sinus sis skewness slackness sleepiness sleeplessness slimness sloppiness 
slowness sluggishness smallness smartness smithereens smoothness smugness 
sociolinguistics softness sorceress soreness soundness sourness 
spaciousness species staphylococcus starkness stasis stats status 
steadfastness steadiness steelworks steepness stenosis stewardess 
stickiness stiffness stillness stimulus strangeness stratus streptococcus 
stress strictness stubbornness stuffiness stylus subclass subspecies 
success suddenness sundress suppleness sureness surplus sus sweetness 
swiftness syllabus symbiosis synopsis synthesis syphilis tallis tamas 
tardis tarsus tas tass tbs tear-gas teargas tectonics telesales telesis 
temptress tenderness tennis terminus testis tetanus texas thalamus 
thankfulness therapeutics thermodynamics thermos thesaurus thesis thickness 
thinness this thomas thoroughness thoughtfulness thoughtlessness thrombolysis 
thrombosis thrombus thymus tidiness tightness tigress timelessness timeliness 
tinnitus tiredness titus tobias togetherness tonsillitis torus toss toughness 
toxoplasmosis travis trellis trespass triceps tripos trolleybus truss 
trustworthiness truthfulness tuberculosis turps typhus tyrannosaurus ugliness 
unconsciousness underclass underclothes underpants underpass undies 
uneasiness unevenness unexpectedness unfairness unfaithfulness unfitness 
unhappiness uniqueness unpleasantness unreasonableness unselfishness 
unsteadiness untidiness unwillingness unworthiness urethritis usefulness 
uselessness uterus vagueness vas vastness venus veritas viciousness vicus 
vindictiveness virus viscountess vividness waitress wakefulness walrus 
wariness watchfulness waterbus watercress waywardness weakness weariness 
weightlessness weirdness wetness whiteness wholeness wholesomeness 
wickedness wilderness wildness wilfulness willingness wistfulness witness 
word worldliness worthiness worthlessness wretchedness wrongness yonks 
youthfulness''';

String plunos =
    '''abaci, acti, addenda, adieux, agapae, agorae, aides-de-camp, 
aircraft, airmen, alae, aldermen, all, all of them, all of us, all of you, 
amenorrhoeae, amici, amoebae, amphorae, angelfish, antelope, antennae, 
aquaria, atari, atria, att, aurae, aurei, av., bacilli, bacteria, barmen, barracuda, 
batmen, batsmen, beaux, beef, bellmen, bi, bison, bitumina, boardmen, boatmen, bogeymen, 
boli, bonefish, bonito, bonsai, bookmen, bordeaux, bowmen, brainchildren, bream, brit, 
brothers-in-law, bursae, businessmen, businesswomen, cacti, caeca, calculi, cameramen, 
cannon, canthari, carmen, carp, catfish, cattle, cavemen, cellae, centralia, chad, 
chairmen, chairwomen, chapmen, chateaux, chelae, children, chinamen, chon, choux, 
chs., churchmen, cirri, clergymen, clownfish, clubmen, co., coachmen, coalmen, cod, 
col., collegia, coloratura, commanders-in-chief, congressmen, conmen, consortia, 
corps., countrymen, courts-martial, craft, craftsmen, crewmen, criteria, crura, 
cryptosporidia, cumuli, curricula, cwt., daimyo, dairymen, dalesmen, data, 
daughters-in-law, dec., deceased, deer, deni, dept., dice, dicta, dilettanti , 
disequilibria, dive, dogfish, doormen, dormice, draftsmen, draughtsmen, duodena, 
dustmen, dutchmen, ealdormen, eczemata, edd., editors-in-chief, elk, endothelia, 
eqq, esq., ethe, eucalypti, everymen, ex., fabliaux, facta, fair, fathers-in-law, 
faunae, feet, feete, ferrymen, fig., figs., firemen, firstborn, FISA, fish, fishermen, 
flashmen, flatfish, foci, folk, footmen, foramina, forefeet, foremen, formulae, fowl, 
freedmen, freemen, freshmen, frontmen, fundi, fungi, gaijin, gal, gal., gardai, geese, 
gemmae, genera, genii, gentlemen, gentlewomen, gnomai, goby, godmen, goldfish, 
gonococci, goodmen, governors-general, grand, grandchildren, grayling, grice, groszy, 
groundsmen, grouse, gtt, guardsmen, gunmen, gymnasia, hackmen, haddock, haiku, 
handymen, hangmen, hardmen, headmen, heathen, helmsmen, henchmen, herdsmen, hertz, 
highwaymen, hillmen, hippocampi, hitmen, horsemen, horsewomen, housemen, humeri, 
hundredweight, huntsmen, husbandmen, hypothalami, ilea, imperia, incubi, infantrymen, 
injurie, jackmen, jejuna, jellyfish, journeymen, jubae, jun, kama, kanji, karateka, 
kibbutzim, kin, kinsmen, kinswomen, kirkmen, ko, koi, kouroi, krill, kroner, kronor, 
lacunae, ladies-in-waiting, laymen, lettermen, leva, lexica, librae, lice, lightmen, 
lineae, linesmen, linguae, lionfish, loci, logoi, lungfish, lux, lymphomata, machinery, 
mackerel, madmen, magi, malae, mammae, manga, marksmen, marlin, mastermen, matzot, 
maxima, mc, media, mediae, men, mensae, mg/kg, mice, middlemen, midshipmen, milieux, 
military, milkmen, millennia, minima, mink, mins., modi, modica, moduli, monkfish, 
moose, mothers-in-law, mss., mucosae, mycobacteria, nebulae, newsmen, nightwatchmen, 
nimbi, ninja, noblemen, nos., novae, nox, nuclei, oesophagi, offspring, oldmen, 
ombudsmen, optima, ossa, ova, oxen, oz, pacemen, packmen, palladia, pallia, paoli, 
papillae, papyri, para., passers-by, pcs., pct, peasen, penmen, percent, people, 
perihelia, pfennige, phalli, phenomena, phlox, phoenix, phyla, pince-nez, placentae, 
plaice, ploughmen, police, policemen, policewomen, pomfret, portae, portmen, postmen, 
prawn, presidents-elect, presidia, protei, ptarmigan, push-button, pylori, quadrae, 
quail, quanta, radii, railwaymen, rami, recta, redmen, referenda, reticula, rhombi, 
rhubarb, riflemen, rimae, rin, roach, rostra, roux, rumina, runners-up, salesmen, 
salmon, samurai, sandgrouse, sarcophagi, scampi, sched., schemata, seamen, sec, sec., 
seconds-in-command, secretaries-general, seqq, servicemen, shearmen, sheep, 
shellfish, shipmen, showmen, shrimp, signalmen, silverfish, sisters-in-law, snowmen, 
sons-in-law, spacecraft, spacemen, spawn, spearmen, spectra, sperm, spokesmen, 
spokeswomen, sportsmen, sprat, springbok, sputa, stadia, staphylococci, statesmen, 
steersmen, stellae, sterna, stigmata, stimuli, stockmen, stocks, in, trade, stomata, 
storemen, strati, stromata, strongmen, stuntmen, sturgeon, styli, substrata, sumo, 
supermen, swearings-in, swine, swordfish, swordsmen, syllabi, tableaux, tarsi, taxmen, 
teeth, tench, termini, tetani, thalami, thesauri, these, they, they all, those, thrombi, thymi, 
tori, townsmen, toxoplasmata, tradesmen, triforia, trivia, trout, tsunami, tugs-of-war, 
tuna, turbot, tyrannosauri, uteri, uvae, vasa, vermin, vertebræ, vice-chairmen, 
vitae, vols., vols., warehousemen, watchmen, waterfowl, watermen, we, weathermen, 
we, we all, wildebeest, wildmen, windings-up, wisemen, women, woodcock, woodmen, 
workmen, wpm, xu, yen, yeomen, yeti, you, you all, yu, yuan, zebra, zhu, zloty''';

String nounssingequalplu =
    'bison, cannon, cod, deer, fish, moose, offspring, salmon, sheep, shrimp, swine, trout';

String theadjs =
    '''the aged, the blind, the dead, the deaf, the departed, the deprived, 
the disabled, the downtrodden, the dumb, the elderly, the guilty, the hardworking, 
the healthy, the homeless, the injured, the innocent, the intelligent, the jobless, 
the known, the lazy, the living, the lonely, the meek, the mentally challenged, 
the middle-aged, the oppressed, the poor, the rich, the rural poor, the sick, 
the strong, the stupid, the underprivileged, the unemployed, the uninformed, 
the unknown, the wise, the weak, the young''';

String outers =
    '''about, above, across, after, against, along, among, around, at, before, 
behind, between, beyond, but, by, concerning, despite, down, during, except,
excluding, following, for, from, in, including, into, like, near, not, of, 
off, on, out, out of, over, plus, since, through, throughout, to, towards, 
under, until, up, upon, with, within, without''';
