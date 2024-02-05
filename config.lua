


	accountManager = false
	namelockManager = true
	newPlayerChooseVoc = false
	newPlayerSpawnPosX = 1032
	newPlayerSpawnPosY = 1026
	newPlayerSpawnPosZ = 5
	newPlayerTownId = 1
	newPlayerLevel = 1
	newPlayerMagicLevel = 0
	generateAccountNumber = false


	redSkullLength = 30 * 24 * 60 * 60
	blackSkullLength = 45 * 24 * 60 * 60
	dailyFragsToRedSkull = 3
	weeklyFragsToRedSkull = 5
	monthlyFragsToRedSkull = 10
	dailyFragsToBlackSkull = dailyFragsToRedSkull
	weeklyFragsToBlackSkull = weeklyFragsToRedSkull
	monthlyFragsToBlackSkull = monthlyFragsToRedSkull
	dailyFragsToBanishment = dailyFragsToRedSkull
	weeklyFragsToBanishment = weeklyFragsToRedSkull
	monthlyFragsToBanishment = monthlyFragsToRedSkull
	blackSkulledDeathHealth = 40
	blackSkulledDeathMana = 0
	useBlackSkull = true
	useFragHandler = true
	advancedFragList = false


	notationsToBan = 3
	warningsToFinalBan = 4
	warningsToDeletion = 5
	banLength = 7 * 24 * 60 * 60
	killsBanLength = 7 * 24 * 60 * 60
	finalBanLength = 30 * 24 * 60 * 60
	ipBanishmentLength = 1 * 24 * 60 * 60
	broadcastBanishments = false
	maxViolationCommentSize = 200
	violationNameReportActionType = 2
	autoBanishUnknownBytes = false


	worldType = "pvp"
	protectionLevel = 50
	pvpTileIgnoreLevelAndVocationProtection = true
	pzLocked = 10 * 1000
	huntingDuration = 60 * 1000
	criticalHitChance = 7
	criticalHitMultiplier = 1
	displayCriticalHitNotify = false
	removeWeaponAmmunition = true
	removeWeaponCharges = true
	removeRuneCharges = true
	whiteSkullTime = 15 * 60 * 1000
	noDamageToSameLookfeet = true
	showHealingDamage = false
	showHealingDamageForMonsters = false
	fieldOwnershipDuration = 5 * 1000
	stopAttackingAtExit = false
	oldConditionAccuracy = true
	loginProtectionPeriod = 10 * 1000
	deathLostPercent = 10
	stairhopDelay = 2 * 1000
	pushCreatureDelay = 2 * 1000
	deathContainerId = 1987
	gainExperienceColor = 215
	addManaSpentInPvPZone = true
	squareColor = 0
	allowFightback = true


	worldId = 0
	ip = "127.0.0.1"
	bindOnlyConfiguredIpAddress = false
	loginPort = 7171
	gamePort = 7172
	adminPort = 9179
	statusPort = 7171
	loginTries = 10
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = 150
	motd = "Welcome to KPDO!"
	displayOnOrOffAtCharlist = false
	onePlayerOnlinePerAccount = false
	allowClones = false
	serverName = "Kpdo-beta"
	loginMessage = "Welcome to Kpdo server,leia o FAQ para exclarercer as duvidas http://www.exaioros.com/?subtopic=faq"
	statusTimeout = 5 * 60 * 1000
	replaceKickOnLogin = true
	forceSlowConnectionsToDisconnect = false
	loginOnlyWithLoginServer = true
	premiumPlayerSkipWaitList = true


	sqlType = "sqlite"
	sqlHost = "localhost"
	sqlPort = 3306
	sqlUser = ""
	sqlPass = ""
	sqlDatabase = "forgottenserver"
	sqlFile = "forgottenserver.s3db"
	sqlKeepAlive = 0
	mysqlReadTimeout = 10
	mysqlWriteTimeout = 10
	encryptionType = "plain"



	deathListEnabled = true
	deathListRequiredTime = 1 * 60 * 1000
	deathAssistCount = 19
	maxDeathRecords = 5

	
	ingameGuildManagement = true
	levelToFormGuild = 40
	premiumDaysToFormGuild = 0
	guildNameMinLength = 2
	guildNameMaxLength = 25

	
	highscoreDisplayPlayers = 15
	updateHighscoresAfterMinutes = 60

	
	buyableAndSellableHouses = true
	houseNeedPremium = true
	bedsRequirePremium = true
	levelToBuyHouse = 130
	housesPerAccount = 0
	houseRentAsPrice = false
	housePriceAsRent = false
	housePriceEachSquare = 2975
	houseRentPeriod = "never"
	houseCleanOld = 0
	guildHalls = false


	timeBetweenActions = 950
	timeBetweenExActions = 1000
	hotkeyAimbotEnabled = true

	mapName = "KPDO"
	mapAuthor = "Kpdo"
	randomizeTiles = true
	storeTrash = true
	cleanProtectedZones = true
	mailboxDisabledTowns = "-1"

	
	defaultPriority = "high"
	niceLevel = 10
	coresUsed = "-1"


	optimizeDatabaseAtStartup = false
	removePremiumOnInit = true
	confirmOutdatedVersion = false


	formulaLevel = 5.0
	formulaMagic = 1.0
	bufferMutedOnSpellFailure = false
	spellNameInsteadOfWords = false
	emoteSpells = false


	allowChangeOutfit = true
	allowChangeColors = true
	allowChangeAddons = true
	disableOutfitsForPrivilegedPlayers = false
	addonsOnlyPremium = true


	dataDirectory = "data/"
	bankSystem = true
	displaySkillLevelOnAdvance = true
	separateViplistPerCharacter = false
	maximumDoorLevel = 500
	maxMessageBuffer = 4

	saveGlobalStorage = true
	useHouseDataStorage = false
	storePlayerDirection = false

	
	checkCorpseOwner = false
	monsterLootMessage = 3
	monsterLootMessageType = 22

	
	ghostModeInvisibleEffect = false
	ghostModeSpellEffects = false

	
	idleWarningTime = 3000
	idleKickTime = 10000
	expireReportsAfterReads = 1
	playerQueryDeepness = 2
	maxItemsPerPZTile = 0
	maxItemsPerHouseTile = 5

	
	freePremium = false
	premiumForPromotion = true

	
	blessingOnlyPremium = false
	blessingReductionBase = 30
	blessingReductionDecreament = 5
	eachBlessReduction = 8

	
	experienceStages = true
	rateExperience = 2
	rateExperienceFromPlayers = 2
	rateSkill = 2
	rateMagic = 1
	rateLoot = 1
	rateSpawn = 1

	
	rateMonsterHealth = 1.0
	rateMonsterMana = 1.0
	rateMonsterAttack = 1.0
	rateMonsterDefense = 1.0

	
	minLevelThresholdForKilledPlayer = 0.9
	maxLevelThresholdForKilledPlayer = 1.1

	rateStaminaLoss = 1
	rateStaminaGain = 3
	rateStaminaThresholdGain = 12
	staminaRatingLimitTop = 41 * 60
	staminaRatingLimitBottom = 14 * 60
	rateStaminaAboveNormal = 1.0
	rateStaminaUnderNormal = 1.0
	staminaThresholdOnlyPremium = true

	experienceShareRadiusX = 30
	experienceShareRadiusY = 30
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 2 / 3
	extraPartyExperienceLimit = 20
	extraPartyExperiencePercent = 20
	experienceShareActivity = 2 * 60 * 1000

	
	globalSaveEnabled = false
	globalSaveHour = 1
	shutdownAtGlobalSave = false
	cleanMapAtGlobalSave = false


	deSpawnRange = 2
	deSpawnRadius = 25

	
	maxPlayerSummons = 1
	teleportAllSummons = false
	teleportPlayerSummons = false

	
	ownerName = "Renan"
	ownerEmail = ""
	url = ""
	location = "Brazil"
	displayGamemastersWithOnlineCommand = false

	
	adminLogsEnabled = false
	displayPlayersLogging = true
	prefixChannelLogs = ""
	runFile = ""
	outLogName = ""
	errorLogName = ""
	truncateLogsOnStartup = false
	tradesave = false
                dumpsave = false
	promptExceptionTracerErrorBox = false
