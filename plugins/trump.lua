local trump = {}
local mattata = require('mattata')

function trump:init(configuration)
	trump.arguments = 'trump <target>'
	trump.commands = mattata.commands(self.info.username, configuration.commandPrefix):c('trump').table
	trump.help = configuration.commandPrefix .. 'trump <target> - Trump somebody (or something). If no target is given then, well, you ARE the target!'
end

local trumps = {
	'VICTIM is a clown!',
	'VICTIM is a dummy!',
	'VICTIM is one of the dumbest of all pundits',
	'VICTIM has no sense of the real world!',
	'VICTIM is closing in on being the dumbest of them all',
	'VICTIM doesn\'t have a clue',
	'VICTIM is a disaster',
	'VICTIM is a dope!',
	'VICTIM knows nothing',
	'VICTIM is dumb!',
	'VICTIM is trying to extort $1,000,000.00 from me',
	'VICTIM is so disgraceful!',
	'VICTIM tried to extort $1,000,000 from me',
	'VICTIM is a total loser!',
	'VICTIM tried to shake me down for one million dollars',
	'VICTIM is a great big phony',
	'VICTIM represents conservative values terribly & are bad for America',
	'VICTIM asked me for $1 million. I said no & they went negative. Extortion!',
	'VICTIM went hostile w/ a series of incorrect & ill-informed ads',
	'VICTIM is a total fraud',
	'VICTIM is so unbelieveably crooked',
	'VICTIM is falsely advertising',
	'VICTIM is so little respected',
	'VICTIM is a total hypocrites!',
	'VICTIM is a great big phony',
	'VICTIM is a big fat mistake',
	'VICTIM is a failed \'Bushy\' & PA Governor',
	'VICTIM shouldn\'t be allowed to do bias commentary',
	'VICTIM has a faulty thought process',
	'VICTIM is a failed Jeb Bushy',
	'VICTIM never says anything good & never will',
	'VICTIM shouldn\'t even be on the air!',
	'VICTIM should be fired!',
	'VICTIM is so biased',
	'VICTIM is totally unfair',
	'VICTIM still thinks Romney won',
	'VICTIM is a dummy',
	'VICTIM has no credibility',
	'VICTIM is a loser',
	'VICTIM is pushing Republicans down the same old path of defeat',
	'VICTIM is dopey',
	'VICTIM is an establishment flunky',
	'VICTIM should get a life',
	'VICTIM just totally bombed',
	'VICTIM has ZERO credibility',
	'VICTIM is an establishment dope',
	'VICTIM has made so many mistakes',
	'VICTIM is part of the Republican Establishment problem',
	'VICTIM is an all talk, no action dummy!',
	'VICTIM is a total fool',
	'VICTIM purposely mischaracterised my statement',
	'VICTIM is a big fat moron',
	'VICTIM is a biased dope',
	'VICTIM is easy to beat!',
	'VICTIM spent $430 million and lost ALL races',
	'VICTIM wasted $400 million',
	'VICTIM didn\'t win one race',
	'VICTIM is a total loser',
	'VICTIM is a clown with zero credibility',
	'VICTIM is an irrelevant clown, sweats and shakes nervously',
	'VICTIM has no credibility',
	'VICTIM is a Bush plant who called all races wrong',
	'VICTIM is a dopey political pundit',
	'VICTIM is one of the dumber people on television',
	'VICTIM is a fraud',
	'VICTIM is just pathetic',
	'VICTIM is paid for by the politicians bosses',
	'VICTIM is a total #Mediafraud',
	'VICTIM is a joke!',
	'VICTIM is in pocket of Wall Street',
	'VICTIM is owned by the banks',
	'VICTIM took hundreds of thousands of dollars in gifts',
	'VICTIM is bought and paid for by special interests!',
	'VICTIM is a terrible representative of Evangelicals',
	'VICTIM is a nasty guy with no heart!',
	'VICTIM is a total clown',
	'VICTIM is a low-class slob',
	'VICTIM knows nothing about me or my religion',
	'VICTIM came to my office looking for work',
	'VICTIM is a total disaster for Republicans & America',
	'VICTIM is a total disaster',
	'VICTIM is failing so badly that it will soon be taken off thr air',
	'VICTIM is close to death',
	'VICTIM is a dead T.V.',
	'VICTIM should be put to sleep',
	'VICTIM is a total loser',
	'VICTIM is sloppy',
	'VICTIM is grubby',
	'VICTIM is a total mess-big crime',
	'VICTIM is going through massive attacks to its people by the migrants allowed to enter the country',
	'VICTIM is a total phony and con man',
	'VICTIM is a total phony',
	'VICTIM is just a dishonest guy',
	'VICTIM asked me for expensive hotel rooms',
	'VICTIM is a bad guy!',
	'VICTIM is a total scam on our system and country',
	'VICTIM is a total waste of money',
	'VICTIM has too much staff being paid way too much money',
	'VICTIM is a toy by comparison',
	'VICTIM is a V.P.candidate who failed badly',
	'VICTIM has a dead campaign',
	'VICTIM is terrible at business',
	'VICTIM did such a horrible job',
	'VICTIM is a waste',
	'VICTIM is all talk, no action',
	'VICTIM is a very stupid, highly incompetent person running our country into the ground',
	'VICTIM is just plain incompetent',
	'VICTIM is in total disarray',
	'VICTIM is a dishonest journlist',
	'VICTIM is part of the dishonest media',
	'VICTIM is losing too much money. Great news!',
	'VICTIM is going out of business',
	'VICTIM has no money, no cred!',
	'VICTIM is a  very untalented reporter',
	'VICTIM is considered by many in the world of politics to be the dumbest and most slanted of the political sites',
	'VICTIM is a scam!',
	'VICTIM is dishonest',
	'VICTIM is pure scum',
	'VICTIM is so dishonest!',
	'VICTIM has no power',
	'VICTIM is a clown',
	'VICTIM is a serious hater',
	'VICTIM is really dishonest',
	'VICTIM is losing lots of money',
	'VICTIM is not read or respected by many',
	'VICTIM goes out of their way to distort truth!',
	'VICTIM covers me more inaccurately than any other media source',
	'VICTIM is an incompetent judge!',
	'VICTIM has embarrassed all by making very dumb political statements about me',
	'VICTIM has a mind that is shot',
	'VICTIM should resign!',
	'VICTIM is totally ineffective & has been for years',
	'VICTIM questioned me in such a nasty fashion',
	'VICTIM is bad at math, nobody cares what they say in their editorials anymore, especially me!',
	'VICTIM reported \'Cruz momentum\' but nothing about the fact that I easily won!',
	'VICTIM is so dishonest',
	'VICTIM so totally wrong',
	'VICTIM loves to write badly about me',
	'VICTIM looks like a tabloid',
	'VICTIM is ever-dwindling',
	'VICTIM hAS BAD JUDGEMENT',
	'VICTIM is really dumb',
	'VICTIM should never have been written',
	'VICTIM is back to doing very sleazy and dishonest \'pushpolls\' on me',
	'VICTIM is begging for money like a dog',
	'VICTIM is biased',
	'VICTIM is a @FoxNews flunky',
	'VICTIM is a Iraq war monger',
	'VICTIM is highly overrated',
	'VICTIM should be fired',
	'VICTIM a dope',
	'VICTIM is bought and paid for by lobbyists!',
	'VICTIM will never MAKE AMERICA GREAT AGAIN!',
	'VICTIM has the worst voting record in the U.S. Senate in many years',
	'VICTIM is a total lightweight',
	'VICTIM is scamming Florida',
	'VICTIM is a dishonest lightweight',
	'VICTIM is a fraud lightweight',
	'VICTIM is a big loser',
	'VICTIM puts out ad that my pilot was a drug dealer- not true, not my pilot!',
	'VICTIM has the worst record',
	'VICTIM never even shows up to vote',
	'VICTIM treated America\'s ICE officers \'like absolute trash\' in order to pass Obama\'s amnesty',
	'VICTIM gave amnesty to criminal aliens guilty of \'sex offenses.\' DISGRACE!',
	'VICTIM is just another Washington D.C. politician',
	'VICTIM has poor work ethic!',
	'VICTIM is set to be the \'puppet\' of the special interest Koch brothers',
	'VICTIM is the lightweight no show Senator from Florida',
	'VICTIM is not as smart as Cruz, and may be an even bigger liar',
	'VICTIM doesn\'t even show up for votes!',
	'VICTIM is a choker, and once a choker, always a choker!',
	'VICTIM not presidential material',
	'VICTIM looks like a little boy on stage',
	'VICTIM is very weak on illegal immigration',
	'VICTIM is a lightweight choker',
	'VICTIM couldn\'t even respond properly to President Obama\'s State of the Union Speech without pouring sweat & chugging water',
	'VICTIM is a highly overrated politician',
	'VICTIM cannot be President',
	'VICTIM only won the debate in the minds of desperate people',
	'VICTIM is very disloyal to Jeb',
	'VICTIM is weak on illegal immigration',
	'VICTIM is VERY weak on illegal immigration',
	'VICTIM is perfect little puppet',
	'VICTIM is very disloyal',
	'VICTIM never made ten cents',
	'VICTIM is totally controlled',
	'VICTIM is lazy',
	'VICTIM has worst voting record in Senate',
	'VICTIM is very weak on stopping illegal immigration',
	'VICTIM knows nothing about finance',
	'VICTIM is VERY weak on immigration',
	'VICTIM is incapable of making great trade deals',
	'VICTIM is rarely there to vote on a bill',
	'VICTIM has one of the worst attendance record in Senate',
	'VICTIM will allow anyone into the country',
	'VICTIM truly doesn\'t have a clue!',
	'VICTIM is broken, like so much else in our country',
	'VICTIM came out with another one of their phony polls',
	'VICTIM should be totally discredited',
	'VICTIM cannot report the news truthfully',
	'VICTIM choked like a dog',
	'VICTIM is a mixed up man who doesn\'t have a clue. No wonder he lost!',
	'VICTIM is a total joke, and everyone knows it!',
	'VICTIM is a disaster candidate who had no guts and choked',
	'VICTIM begged me for my endorsement four years ago',
	'VICTIM doesn\'t know how to win',
	'VICTIM didn\'t show his tax return until SEPTEMBER 21, 2012, and then only after being humiliated by Harry R',
	'VICTIM is one of the dumbest and worst candidates in the history of Republican politics',
	'VICTIM is so awkward and goofy',
	'VICTIM blew an election that should have never been lost',
	'VICTIM had a terrible \'choke\' loss to Obama',
	'VICTIM lost an election that should have easily been won',
	'VICTIM should not be allowed on TV',
	'VICTIM is truly one of the dumbest of the talking heads',
	'VICTIM consistently fumbles & misrepresents poll results',
	'VICTIM has been so wrong & hates it!',
	'VICTIM is in a total meltdown',
	'VICTIM has a weakness that is the greatest recruiting tool of ISIS!!!',
	'VICTIM continues to report fictious poll numbers',
	'VICTIM is pushing the GOP around',
	'VICTIM wants ridiculous debate terms',
	'VICTIM is a crime and killing machine',
	'VICTIM is so unbelievably crooked',
	'VICTIM wants to flood our country with Syrian immigrants that we know little or nothing about',
	'VICTIM is a liar!',
	'VICTIM betrayed Bernie voters',
	'VICTIM is not at all loyal',
	'VICTIM killed jobs!',
	'VICTIM is against steelworkers and miners',
	'VICTIM destroyed jobs and manufacturing',
	'VICTIM led Obama into bad decisions!',
	'VICTIM will sell our country down the tubes!',
	'VICTIM is bought and paid for by Wall Street, lobbyists and special interests',
	'VICTIM is a DISASTER on foreign policy',
	'VICTIM is Sad!!',
	'VICTIM is not qualified',
	'VICTIM has WEAK leadership',
	'VICTIM is sooooo guilty',
	'VICTIM lied to the FBI and to the people of our country',
	'VICTIM has very bad judgement',
	'VICTIM is not fit to lead!',
	'VICTIM is unfit to serve as President',
	'VICTIM hAS BAD JUDGEMENT!',
	'VICTIM is a total disgrace!',
	'VICTIM is the founder of ISIS',
	'VICTIM is guilty as hell',
	'VICTIM will NEVER be able to handle the complexities and danger of ISIS',
	'VICTIM is sellng out America',
	'VICTIM has such bad judgement',
	'VICTIM has no sense of markets',
	'VICTIM may be the most corrupt person ever to seek the presidency',
	'VICTIM will be a disaster for jobs and the economy!',
	'VICTIM defrauded America',
	'VICTIM has a judgement that killed thousands, unleashed ISIS and wrecked the economy.',
	'VICTIM has really bad judgement and a temperament',
	'VICTIM is totally unfit to be our president',
	'VICTIM is unable to answer tough questions!',
	'VICTIM has a very bad and destructive track record',
	'VICTIM is not honest!',
	'VICTIM doesn\'t even look presidential!',
	'VICTIM is reading poorly from the telepromter!',
	'VICTIM no longer has credibility',
	'VICTIM has zero natural talent',
	'VICTIM has a very stupid use of e-mails',
	'VICTIM suffers from plain old bad judgement!',
	'VICTIM is reckless and dangerous',
	'VICTIM has zero imagination and even less stamina',
	'VICTIM can\'t close the deal with Bernie Sanders',
	'VICTIM can\'t close the deal on Crazy Bernie',
	'VICTIM has bad judgment!',
	'VICTIM is pushing the false narrative that I want to raise taxes',
	'VICTIM has ZERO leadership ability',
	'VICTIM is constantly playing the women\'s card - it is sad!',
	'VICTIM is dealing with men who get off the reservation.',
	'VICTIM is perhaps the most dishonest person to have ever run for the presidency',
	'VICTIM is one of the all time great enablers!',
	'VICTIM is unqualified to be president',
	'VICTIM has been involved in corruption for most of her professional life!',
	'VICTIM is a major national security risk',
	'VICTIM lied last week',
	'VICTIM doesn\'t have the strength or stamina to be president',
	'VICTIM is a totally flawed candidate',
	'VICTIM lIED at the debate last night',
	'VICTIM does not have the STRENGTH or STAMINA to be President',
	'VICTIM will be soundly defeated',
	'VICTIM won\'t call out radical Islam',
	'VICTIM is afraid of Obama & the emails',
	'VICTIM is totally incompetent as a manager and leader',
	'VICTIM looked lost',
	'VICTIM is 100% CONTROLLED',
	'VICTIM did a terrible job',
	'VICTIM did an absolutely horrible job of securing the border',
	'VICTIM should be ashamed',
	'VICTIM failed on the border',
	'VICTIM should be forced to take an IQ test',
	'VICTIM doesn\'t understand what the word demagoguery means',
	'VICTIM failed at the border',
	'VICTIM needs a new pair of glasses',
	'VICTIM just wants to shut down and go home to bed!',
	'VICTIM totally sold out',
	'VICTIM has done such a complete fold',
	'VICTIM has totally given up on his fight for the people',
	'VICTIM has lost his energy and his strength',
	'VICTIM flamed out',
	'VICTIM has no energy left!',
	'VICTIM is exhausted',
	'VICTIM just can\'t go on any longer',
	'VICTIM is ending really weak',
	'VICTIM has abandoned his supporters',
	'VICTIM is selling out!',
	'VICTIM is lying when he says his disruptors aren\'t told to go to my events.',
	'VICTIM would be so easy to beat!',
	'VICTIM can\'t even defend his own microphone',
	'VICTIM did really poorly on television',
	'VICTIM could not stop Obama (twice)',
	'VICTIM out of self preservation, is concerned w/ my high poll #s',
	'VICTIM loses a fortune',
	'VICTIM doesn\'t have a clue',
	'VICTIM is trying to destroy Israel with all his bad moves',
	'VICTIM is living in a world of the make believe!',
	'VICTIM is the worst president in U.S. history!',
	'VICTIM looks and sounds so ridiculous',
	'VICTIM spends so much time speaking of the so-called Carbon footprint, and yet he flies all the way to Hawaii on a massive old 747',
	'VICTIM has a horrible attitude',
	'VICTIM is just so bad!',
	'VICTIM is hollowing out our military',
	'VICTIM is doing a terrible job',
	'VICTIM is doing many bad things behind our backs',
	'VICTIM is controlled by Mexican government?',
	'VICTIM has guests are stacked for Crooked Hillary!',
	'VICTIM is getting more and more biased',
	'VICTIM is so negative, getting even worse',
	'VICTIM is working hard to make me look as bad as possible',
	'VICTIM paid a fortune for an Iowa Poll, which shows me in first place over Cruz by 13%, 33% to 20% - then doesn\'t use it',
	'VICTIM is totally one-sided and biased against me that it is becoming boring',
	'VICTIM does not cover me accurately',
	'VICTIM has a major inferiority complex',
	'VICTIM is a dopey clown',
	'VICTIM has knowingly committed fraud',
	'VICTIM wants to control our U.S. politicians with daddy\'s money',
	'VICTIM is a really stupid talking head',
	'VICTIM is an embarrassed loser',
	'VICTIM lost all credibility',
	'VICTIM couldn\'t get elected dog catcher',
	'VICTIM forgot to mention my phenomenal biz success rate',
	'VICTIM didn\'t get the right gene.',
	'VICTIM reminds me of a spoiled brat without a properly functioning brain',
	'VICTIM is a third rate talent',
	'VICTIM is a total loser!',
	'VICTIM has no power in iowa',
	'VICTIM is so totally dishonest!',
	'VICTIM is unfair and biased',
	'VICTIM will always take a good story about me and make it bad',
	'VICTIM is a disgusting fraud',
	'VICTIM is laughing at the @nytimes for the lame hit piece they did on me and women',
	'VICTIM wrote yet another hit piece on me',
	'VICTIM is always trying to belittle',
	'VICTIM has lost its way!',
	'VICTIM never even calls to fact check',
	'VICTIM knowingly writes lies',
	'VICTIM allows dishonest writers to totally fabricate stories',
	'VICTIM should focus on fair and balanced reporting',
	'VICTIM made all bad decisions over the last decade',
	'VICTIM is falling apart',
	'VICTIM is always looking for a hit to bring them back into relevancy2014ain\'t working',
	'VICTIM is now irrelevant',
	'VICTIM is one of the dumbest people in politics',
	'VICTIM has no talent, no TV persona',
	'VICTIM is one of the least talented people on television',
	'VICTIM is a totally biased loser who doesn\'t have a clue',
	'VICTIM will be gone soon',
	'VICTIM is really hard to watch, has zero talent',
	'VICTIM, you have no idea what my strategy on ISIS is',
	'VICTIM is so average in so many ways!',
	'VICTIM is always complaining about Trump',
	'VICTIM is so average in every way',
	'VICTIM is very bad at math',
	'VICTIM should take another eleven day \'unscheduled\' vacation',
	'VICTIM is not very good or professional',
	'VICTIM really bombed tonight',
	'VICTIM is getting ready to treat me unfairly',
	'VICTIM is a total low life',
	'VICTIM will fade fast',
	'VICTIM is a major sleaze and buffoon',
	'VICTIM got thrown off of TV by NBC',
	'VICTIM has done nothing',
	'VICTIM is incapable of doing anything.',
	'VICTIM has failed miserably',
	'VICTIM is doing a lousy job in taking care of our Vets',
	'VICTIM let us down',
	'VICTIM graduated last in their class',
	'VICTIM should be defeated in the primaries',
	'VICTIM has gone really hostile ever since I said I won\'t do or watch the show anymore',
	'VICTIM doesn\'t have much power or insight!',
	'VICTIM has gone wild with hate',
	'VICTIM has the absolutely worst anti-Trump talking heads on his show',
	'VICTIM is a hater & racist',
	'VICTIM has to stop working to be so politically correct',
	'VICTIM asked if he could have pictures taken with me. I said fine. He then trashes on air!',
	'VICTIM is highly neurotic',
	'VICTIM was the WORST abuser of woman in U.S. political history',
	'VICTIM a gigantic hypocrite',
	'VICTIM was called a racist',
	'VICTIM dEMONSTRATED A PENCHANT FOR SEXISM',
	'VICTIM is so inappropriate',
	'VICTIM won\'t survive',
	'VICTIM has lost all credibility',
	'VICTIM endorsed a candidate who can\'t win',
	'VICTIM is desperate',
	'VICTIM begged me for ads',
	'VICTIM has been run into the ground',
	'VICTIM will be dead in 2 years',
	'VICTIM is so biased it is disgusting',
	'VICTIM treats me so badly',
	'VICTIM is incapable of understanding foreign policy',
	'VICTIM should know that the pyramids built for grain storage - don\'t people get it?',
	'VICTIM has never created a job in his life',
	'VICTIM isn\'t smart enough to know what\'s going on at the border',
	'VICTIM is not looking tough!',
	'VICTIM is not looking smart',
	'VICTIM is not looking good',
	'VICTIM totally lost control of illegal immigration, even with criminals',
	'VICTIM looks more and more like a paper tiger',
	'VICTIM is letting criminals knowingly stay in our country',
	'VICTIM is just a 3rd rate \'gotcha\' guy!',
	'VICTIM is kooky',
	'VICTIM is totally ineffective',
	'VICTIM is a low-level degenerate',
	'VICTIM should drop out of the race-stop wasting time & money',
	'VICTIM really went wacko today',
	'VICTIM can\'t function under pressure',
	'VICTIM is not very presidential',
	'VICTIM has NO path to victory',
	'VICTIM can never beat Hilary Clinton',
	'VICTIM is mathematically dead and totally desperate',
	'VICTIM hates New York',
	'VICTIM can\'t win with the voters so he has to sell himself to the bosses',
	'VICTIM can\'t get votes (I am millions ahead of him)',
	'VICTIM has to get his delegates from the Republican bosses',
	'VICTIM attacked New Yorkers and New York values- we don\'t forget!',
	'VICTIM has accomplished absolutely nothing',
	'VICTIM does not have the right \'temperment\' to be President',
	'VICTIM is the biggest liar in politics!',
	'VICTIM is acomplete & total liar',
	'VICTIM holds the Bible high and then lies and misrepresents the facts!',
	'VICTIM lies so much and is so dishonest',
	'VICTIM should be immediately disqualified in Iowa',
	'VICTIM told thousands of caucusgoers (voters) that Trump was strongly in favor of ObamaCare and \'choice\' - a total lie!',
	'VICTIM sent out a VOTER VIOLATION certificate to thousands of voters',
	'VICTIM didn\'t win Iowa, he illegally stole it',
	'VICTIM can\'t even get a Senator like @BenSasse, who is easy, to endorse him',
	'VICTIM will do anything to stay at the trough',
	'VICTIM is dropping like a rock',
	'VICTIM is in bed w/ Wall St.',
	'VICTIM is spending $millions on ads paid for by his N.Y. bosses',
	'VICTIM says one thing for money, does another for votes',
	'VICTIM is the ultimate hypocrite',
	'VICTIM did not list on his personal disclosure form personally guaranteed loans from banks. They own him!',
	'VICTIM is not much of a reformer',
	'VICTIM would speak behind my back, get caught, and then deny it',
	'VICTIM should not make statements behind closed doors to his bosses',
	'VICTIM made many bad calls',
	'VICTIM is one of the most overrated political pundits',
	'VICTIM is wrong almost all of the time',
	'VICTIM should be thrown off Fox News',
	'VICTIM is boring and totally biased',
	'VICTIM is a major lightweight with no credibility',
	'VICTIM has no honor!',
	'VICTIM was ran out of the race like a little boy',
	'VICTIM should respect me',
	'VICTIM is a dumb mouthpiece',
	'VICTIM got zero against me- no cred!',
	'VICTIM had zero in his presidential run before dropping out in disgrace',
	'VICTIM embarrasses himself with endorsement of Bush',
	'VICTIM embarrassed himself with his failed run for President',
	'VICTIM is so easy to beat!',
	'VICTIM is low energy',
	'VICTIM wants to look cool, but it\'s far too late',
	'VICTIM has no clue',
	'VICTIM is spending a fortune of special interest against me in SC',
	'VICTIM is desperate and SAD!',
	'VICTIM gave up and enlisted Mommy and his brother',
	'VICTIM is by far the weakest of the lot',
	'VICTIM has gone nasty with lies',
	'VICTIM is a pathetic figure!',
	'VICTIM spent a fortune of special interest money on a Super Bowl ad',
	'VICTIM has zero communication skills',
	'VICTIM had to bring in mommy to take a slap at me',
	'VICTIM should go home and relax!',
	'VICTIM is a total embarrassment to himself and his family',
	'VICTIM is a basket case',
	'VICTIM has been confused for forty years',
	'VICTIM is bad on women\'s health issues',
	'VICTIM is miserable',
	'VICTIM just doesn\'t get it',
	'VICTIM will never secure the border',
	'VICTIM will NEVER Make America Great Again',
	'VICTIM has gone off the deep end',
	'VICTIM misrepresents my positions!',
	'VICTIM is rapidly fading',
	'VICTIM is so off the rails',
	'VICTIM is a waste of time',
	'VICTIM just doesn\'t know about winning',
	'VICTIM is now in total freefall',
	'VICTIM is one of the dumber bloggers',
	'VICTIM is really boring, slow, lethargic',
	'VICTIM wouldn\'t know the truth if it hit him in the face',
	'VICTIM has paid ZERO respect to the great police and law enforcement professionals',
	'VICTIM is a sleazebag',
	'VICTIM is not only breaking the spirit of the law but the law itself',
	'VICTIM is spending more time doing a forensic analysis of Melania\'s speech than the FBI spent on Hillary\'s emails',
	'VICTIM is trying their absolute best to depict a star in a tweet as the Star of David rather than a Sheriff\'s Star, or plain star!',
	'VICTIM is so totally biased',
	'VICTIM is on a new phony kick about my management style',
	'VICTIM has not covered my long-shot great finish in Iowa fairly',
	'VICTIM will not report the highly respected new national poll that just came out',
	'VICTIM is rambling and overly flamboyant',
	'VICTIM begged my people for a job',
	'VICTIM is virtually incompetent',
	'VICTIM allowed Crooked Hillary to get away with \'murder\'',
	'VICTIM is totally rigged and corrupt!',
	'VICTIM bombed last night!',
	'VICTIM is very racist!',
	'VICTIM has a nasty mouth',
	'VICTIM is one of the least productive U.S. Senators',
	'VICTIM gets nothing done',
	'VICTIM does nothing to help!',
	'VICTIM didn\'t have the guts to run for POTUS',
	'VICTIM has a career that is totally based on a lie',
	'VICTIM wrote letter to me begging for forgiveness',
	'VICTIM selfishly opposed to me!',
	'VICTIM should resign',
	'VICTIM is totally biased against me',
	'VICTIM was going off the air until I came along',
	'VICTIM knows so little about politics',
	'VICTIM will be fired like a dog',
	'VICTIM doesn\'t have a natural instinct for politics',
	'VICTIM registers ZERO in the polls',
	'VICTIM couldn\'t be elected dog catcher if he ran again',
	'VICTIM spent $1,000 to register in New Hampshire & dropped out the next day. Such a waste!',
	'VICTIM registered at less than 1 percent in the polls',
	'VICTIM is such a mess',
	'VICTIM knows nothing about me',
	'VICTIM did a terrible job against me',
	'VICTIM will lead to at least partial world destruction',
	'VICTIM is a catastrophe',
	'VICTIM made one of the dumbest & most dangerous misjudgments ever',
	'VICTIM poses a direct national security threat',
	'VICTIM wants $120,000 to make a boring speech',
	'VICTIM covers me very inaccurately',
	'VICTIM did a 1 hour hit job on me today',
	'VICTIM is totally out of control',
	'VICTIM treats me very badly',
	'VICTIM is trying hard to disguise their massive Muslim problem',
	'VICTIM will drop like a rock in the polls',
	'VICTIM is good for Mexico!',
	'VICTIM doesn\'t have what it takes',
	'VICTIM can\'t debate',
	'VICTIM fell right into President Obama\'s trap on ObamaCare',
	'VICTIM came in dead last',
	'VICTIM is so irrelevant to the race',
	'VICTIM is uncomfortable looking',
	'VICTIM sucks and is are bad for U.S.A.',
	'VICTIM wants to continue our bad trade deals',
	'VICTIM wasted a lot of time and money',
	'VICTIM is weak and totally conflicted',
	'VICTIM is dumb as a rock',
	'VICTIM did a terrible job of ticket distrbution',
	'VICTIM won\'t even call it what it is - RADICAL ISLAM!',
	'VICTIM has zero credibility',
	'VICTIM is very dumb and failing',
	'VICTIM is a mental basketcase',
	'VICTIM always seems to be crying'
}

function trump:onMessageReceive(message)
	local input = mattata.input(message.text)
	local victim
	if not input then
		victim = message.from.first_name
	else
		if message.reply_to_message then
			victim = message.reply_to_message.from.first_name
		else
			victim = input
		end
	end
	mattata.sendMessage(message.chat.id, trumps[math.random(#trumps)]:gsub('VICTIM', victim) .. ' - Donald J. Trump', nil, true, false, message.message_id)
end

return trump
