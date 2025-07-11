Config = {
    -- turn on if you need to hot restart the plugin
    DevMode = true,
    Lang = Langs.En,
    StaticData = Data,
    MaxHorses = 3,
    MaxCarts = 1,
    StableSlots = 3,

    CallHorseKey = Keys.H,
    CallCartKey = Keys.J,
    FollowKey = Keys.E,

    DisableBuyOption = false,
    JobRequired = false,
    JobForHorseDealer = "Horsedealer",
    JobForCartDealer = "Carriagesdealer",
    JobForAllDealer = "HorseAndCarriagesdealer",

    -- When a horse dies, make it unavailable for x seconds
    SecondsToRespawn = 120,

    -- The hard death mechanism will make a horse unavailable after it has died too many times
    -- Set false to disable or set true, then set overall health, and Check deathResasons.lua To
    -- adjust the long term damages dealt by any death reasons.
    -- the reasons can really be vast and will be updated.
    HardDeath = true,
    LongTermHealth = 100,

    ShowTagsOnHorses = false,

    HorseSkillPullUpFailPercent = 20,
    DistanceToTeleport = 200,

    -- Should everyone Access the inventories of the horses/carts
    -- //TODO To fully implement, let anyone open the inventory, not just the owner
    ShareInv = {
        horse = true,
        cart = true
    },
    -- Should the horse or cart inventory ignore items stack limit
    StackInvIgnore = {
        horse = true,
        cart = true
    },

    DefaultMaxWeight = 125,
    CustomMaxWeight = {
        huntercart01 = 200,
        cart01 = 150,
        cart02 = 140,
        cart03 = 175,
        cart05 = 150,
        cart06 = 210,
        chuckwagon000x = 270,
        chuckwagon002x = 290,
        wagon02x = 250,
        wagon03x = 160,
        coach2 = 200,
        stagecoach001x = 200,
        stagecoach003x = 180,
        supplywagon = 270
    },

    Stables = {
        {
            Name = "Stable of Valentine",
            BlipIcon = 1938782895,
            EnterStable = { -365.87, 789.51, 116.17, 2.0 },
            StableNPC = { -365.15, 792.68, 115.18, 178.47 },
            SpawnHorse = { -366.07, 781.81, 115.14, 5.97 },
            CamHorse = { -367.9267, 783.0237, 117.7778, -36.42624, 0.0, -100.9786 },
            CamHorseGear = { -367.9267, 783.0237, 117.7778, -36.42624, 0.0, -100.9786 },
            SpawnCart = { -370.11, 786.99, 115.16, 274.18 },
            CamCart = { -363.5831, 792.1113, 118.0419, -16.35144, 0.0, 143.9759 },
            -- horses available and prices
            horses = {
                A_C_Horse_AmericanStandardbred_Black = 7,
                A_C_Horse_AmericanStandardbred_Buckskin = 7,
                A_C_Horse_AmericanStandardbred_Lightbuckskin = 7,
                A_C_Horse_AmericanStandardbred_PalominoDapple = 7,
                A_C_Horse_AmericanStandardbred_SilverTailBuckskin = 7,

                A_C_Horse_Breton_GrulloDun = 77,
                A_C_Horse_Breton_RedRoan = 77,
                A_C_Horse_Breton_Sorrel = 77,
                A_C_Horse_Breton_SteelGrey = 77,
                A_C_Horse_Breton_SealBrown = 77,

                A_C_Horse_KentuckySaddle_Black = 8,
                A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 8,
                A_C_Horse_KentuckySaddle_ChestnutPinto = 8,
                A_C_Horse_KentuckySaddle_Grey = 8,
                A_C_Horse_KentuckySaddle_SilverBay = 8,

                A_C_Horse_Kladruber_Black = 40,
                A_C_Horse_Kladruber_Silver = 40,
                A_C_Horse_Kladruber_Cremello = 40,

                A_C_Horse_Morgan_FlaxenChestnut = 9,
                A_C_Horse_Morgan_LiverChestnut_PC = 9,

                A_C_Horse_NorfolkRoadster_RoseGrey = 72,
                A_C_Horse_NorfolkRoadster_SpeckledGrey = 72,
                A_C_Horse_NorfolkRoadster_SpottedTricolor = 72,

                A_C_Horse_Shire_DarkBay = 15,
                A_C_Horse_Shire_LightGrey = 15,
                A_C_Horse_Shire_RavenBlack = 15,

                A_C_Horse_TennesseeWalker_BlackRabicano = 8,
                A_C_Horse_TennesseeWalker_Chestnut = 8,
                A_C_Horse_TennesseeWalker_MahoganyBay = 8,
                A_C_Horse_TennesseeWalker_RedRoan = 8,

                A_C_Horse_Turkoman_DarkBay = 43,
                A_C_Horse_Turkoman_Gold = 43,
                A_C_Horse_Turkoman_Silver = 43,

                A_C_HorseMule_01 = 6,

            },
            -- carts available and prices
            carts = {
                huntercart01 = 50,
                cart01 = 30,
                cart02 = 23,
                cart05 = 28,
                chuckwagon002x = 110,
                wagon02x = 100,
                wagon03x = 65,
                coach2 = 120,
                stagecoach001x = 80,
                supplywagon = 105
            }
        }, {
            Name = "Stable of Rhodes",
            BlipIcon = 1938782895,
            EnterStable = { 1432.97, -1295.39, 76.82, 2.0 },
            StableNPC = { 1434.64, -1294.89, 76.82, 105.08 },
            SpawnHorse = { 1431.56, -1288.21, 76.82, 87.28 },
            CamHorse = { 1431.58, -1292.27, 79.0, -16.0, 0.0, 6.0 },
            CamHorseGear = { 1431.58, -1292.27, 79.0, -16.0, 0.0, 6.0 },
            SpawnCart = { 1414.53, -1294.22, 77.95, 285.53 },
            CamCart = { 1416.7, -1301.12, 81.0, -16.0, 0.0, 6.0 },
            horses = {
                A_C_Horse_Ardennes_BayRoan = 7,
                A_C_Horse_Ardennes_IronGreyRoan = 7,
                A_C_Horse_Ardennes_StrawberryRoan = 7,

                A_C_Horse_Belgian_BlondChestnut = 7,
                A_C_Horse_Belgian_MealyChestnut = 7,

                A_C_Horse_KentuckySaddle_Black = 8,
                A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 8,
                A_C_Horse_KentuckySaddle_ChestnutPinto = 8,
                A_C_Horse_KentuckySaddle_Grey = 8,
                A_C_Horse_KentuckySaddle_SilverBay = 8,

                A_C_Horse_Kladruber_Grey = 40,
                A_C_Horse_Kladruber_DappleRoseGrey = 40,
                A_C_Horse_Kladruber_White = 40,

                A_C_Horse_Morgan_Bay = 9,
                A_C_Horse_Morgan_BayRoan = 9,
                A_C_Horse_Morgan_Palomino = 9,

                A_C_Horse_NorfolkRoadster_Black = 72,
                A_C_Horse_NorfolkRoadster_DappledBuckskin = 72,
                A_C_Horse_NorfolkRoadster_PiebaldRoan = 72,

                A_C_Horse_SuffolkPunch_RedChestnut = 20,
                A_C_Horse_SuffolkPunch_Sorrel = 20,

                A_C_Horse_TennesseeWalker_DappleBay = 8,
                A_C_Horse_TennesseeWalker_FlaxenRoan = 8,
                A_C_Horse_TennesseeWalker_GoldPalomino_PC = 8,

                A_C_HorseMule_01 = 6,
                A_C_Donkey_01 = 10,

            },
            carts = {
                huntercart01 = 50,
                cart03 = 40,
                cart06 = 55,
                chuckwagon000x = 105,
                wagon02x = 100,
                wagon03x = 65,
                stagecoach003x = 73,
                supplywagon = 105
            }
        },
        {
        Name = "Saint Denis Stable",
        BlipIcon = 1938782895,
        EnterStable = { 2510.58, -1456.83, 46.31, 2.0 },
        StableNPC = { 2512.35, -1456.89, 45.2, 91.68 },
        SpawnHorse = { 2508.59, -1449.96, 45.5, 90.09 },
        CamHorse = { 2506.807, -1452.29, 48.61699, -34.77003, 0.0, -35.20742 },
        CamHorseGear = { 2508.876, -1451.953, 48.67999, -35.29771, 0.0, -0.4993192 },
        SpawnCart = { 2503.47, -1441.89, 46.31, 0.24 },
        CamCart = { 2506.428, -1437.7, 50.57832, -39.4497, 0.0, 120.535 },
            -- horses available and prices
            horses = {
                A_C_Horse_AmericanStandardbred_Black = 7,
                A_C_Horse_AmericanStandardbred_Buckskin = 7,
                A_C_Horse_AmericanStandardbred_Lightbuckskin = 7,
                A_C_Horse_AmericanStandardbred_PalominoDapple = 7,
                A_C_Horse_AmericanStandardbred_SilverTailBuckskin = 7,

                A_C_Horse_Breton_GrulloDun = 77,
                A_C_Horse_Breton_RedRoan = 77,
                A_C_Horse_Breton_Sorrel = 77,
                A_C_Horse_Breton_SteelGrey = 77,
                A_C_Horse_Breton_SealBrown = 77,

                A_C_Horse_KentuckySaddle_Black = 8,
                A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 8,
                A_C_Horse_KentuckySaddle_ChestnutPinto = 8,
                A_C_Horse_KentuckySaddle_Grey = 8,
                A_C_Horse_KentuckySaddle_SilverBay = 8,

                A_C_Horse_Kladruber_Black = 40,
                A_C_Horse_Kladruber_Silver = 40,
                A_C_Horse_Kladruber_Cremello = 40,

                A_C_Horse_Morgan_FlaxenChestnut = 9,
                A_C_Horse_Morgan_LiverChestnut_PC = 9,

                A_C_Horse_NorfolkRoadster_RoseGrey = 72,
                A_C_Horse_NorfolkRoadster_SpeckledGrey = 72,
                A_C_Horse_NorfolkRoadster_SpottedTricolor = 72,

                A_C_Horse_Shire_DarkBay = 15,
                A_C_Horse_Shire_LightGrey = 15,
                A_C_Horse_Shire_RavenBlack = 15,

                A_C_Horse_TennesseeWalker_BlackRabicano = 8,
                A_C_Horse_TennesseeWalker_Chestnut = 8,
                A_C_Horse_TennesseeWalker_MahoganyBay = 8,
                A_C_Horse_TennesseeWalker_RedRoan = 8,

                A_C_Horse_Turkoman_DarkBay = 43,
                A_C_Horse_Turkoman_Gold = 43,
                A_C_Horse_Turkoman_Silver = 43,

                A_C_HorseMule_01 = 6,

            },
            -- carts available and prices
            carts = {
                huntercart01 = 50,
                cart01 = 30,
                cart02 = 23,
                cart05 = 28,
                chuckwagon002x = 110,
                wagon02x = 100,
                wagon03x = 65,
                coach2 = 120,
                stagecoach001x = 80,
                supplywagon = 105
            }
        },
        {
        Name = "Strawberry Stable",
        BlipIcon = 1938782895,
        EnterStable = { -1816.81, -561.99, 156.07, 2.0 },
        StableNPC = { -1818.45, -564.83, 155.06, 347.22 },
        SpawnHorse = { -1820.26, -555.84, 155.16, 163.01 },
        CamHorse = { -1819.512, -558.6999, 157.6765, -23.95241, 0.0, 28.46066 },
        CamHorseGear = { -1819.512, -558.6999, 157.6765, -23.95241, 0.0, 28.46066 },
        SpawnCart = { -1821.46, -561.41, 155.06, 256.24 },
        CamCart = { -1816.372, -560.2017, 157.6678, -22.02157, 0.0, 124.3779 },
            -- horses available and prices
            horses = {
                A_C_Horse_AmericanStandardbred_Black = 7,
                A_C_Horse_AmericanStandardbred_Buckskin = 7,
                A_C_Horse_AmericanStandardbred_Lightbuckskin = 7,
                A_C_Horse_AmericanStandardbred_PalominoDapple = 7,
                A_C_Horse_AmericanStandardbred_SilverTailBuckskin = 7,

                A_C_Horse_Breton_GrulloDun = 77,
                A_C_Horse_Breton_RedRoan = 77,
                A_C_Horse_Breton_Sorrel = 77,
                A_C_Horse_Breton_SteelGrey = 77,
                A_C_Horse_Breton_SealBrown = 77,

                A_C_Horse_KentuckySaddle_Black = 8,
                A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 8,
                A_C_Horse_KentuckySaddle_ChestnutPinto = 8,
                A_C_Horse_KentuckySaddle_Grey = 8,
                A_C_Horse_KentuckySaddle_SilverBay = 8,

                A_C_Horse_Kladruber_Black = 40,
                A_C_Horse_Kladruber_Silver = 40,
                A_C_Horse_Kladruber_Cremello = 40,

                A_C_Horse_Morgan_FlaxenChestnut = 9,
                A_C_Horse_Morgan_LiverChestnut_PC = 9,

                A_C_Horse_NorfolkRoadster_RoseGrey = 72,
                A_C_Horse_NorfolkRoadster_SpeckledGrey = 72,
                A_C_Horse_NorfolkRoadster_SpottedTricolor = 72,

                A_C_Horse_Shire_DarkBay = 15,
                A_C_Horse_Shire_LightGrey = 15,
                A_C_Horse_Shire_RavenBlack = 15,

                A_C_Horse_TennesseeWalker_BlackRabicano = 8,
                A_C_Horse_TennesseeWalker_Chestnut = 8,
                A_C_Horse_TennesseeWalker_MahoganyBay = 8,
                A_C_Horse_TennesseeWalker_RedRoan = 8,

                A_C_Horse_Turkoman_DarkBay = 43,
                A_C_Horse_Turkoman_Gold = 43,
                A_C_Horse_Turkoman_Silver = 43,

                A_C_HorseMule_01 = 6,

            },
            -- carts available and prices
            carts = {
                huntercart01 = 50,
                cart01 = 30,
                cart02 = 23,
                cart05 = 28,
                chuckwagon002x = 110,
                wagon02x = 100,
                wagon03x = 65,
                coach2 = 120,
                stagecoach001x = 80,
                supplywagon = 105
            }
        },
        {
        Name = "Blackwater Stable",
        BlipIcon = 1938782895,
        EnterStable = { -876.57, -1365.1, 43.53, 2.0 },
        StableNPC = { -878.35, -1364.81, 42.53, 266.28 },
        SpawnHorse = { -864.25, -1361.8, 42.7, 177.48 },
        CamHorse = { -862.6163, -1362.927, 45.58158, -40.96593, 0.0, 71.8129 },
        CamHorseGear = { -862.6163, -1362.927, 45.58158, -40.96593, 0.0, 71.8129 },
        SpawnCart = { -872.58, -1366.57, 42.53, 270.35 },
        CamCart = { -869.7852, -1361.103, 45.26991, -17.11994, 0.0, 161.4039 },
            -- horses available and prices
            horses = {
                A_C_Horse_AmericanStandardbred_Black = 7,
                A_C_Horse_AmericanStandardbred_Buckskin = 7,
                A_C_Horse_AmericanStandardbred_Lightbuckskin = 7,
                A_C_Horse_AmericanStandardbred_PalominoDapple = 7,
                A_C_Horse_AmericanStandardbred_SilverTailBuckskin = 7,

                A_C_Horse_Breton_GrulloDun = 77,
                A_C_Horse_Breton_RedRoan = 77,
                A_C_Horse_Breton_Sorrel = 77,
                A_C_Horse_Breton_SteelGrey = 77,
                A_C_Horse_Breton_SealBrown = 77,

                A_C_Horse_KentuckySaddle_Black = 8,
                A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 8,
                A_C_Horse_KentuckySaddle_ChestnutPinto = 8,
                A_C_Horse_KentuckySaddle_Grey = 8,
                A_C_Horse_KentuckySaddle_SilverBay = 8,

                A_C_Horse_Kladruber_Black = 40,
                A_C_Horse_Kladruber_Silver = 40,
                A_C_Horse_Kladruber_Cremello = 40,

                A_C_Horse_Morgan_FlaxenChestnut = 9,
                A_C_Horse_Morgan_LiverChestnut_PC = 9,

                A_C_Horse_NorfolkRoadster_RoseGrey = 72,
                A_C_Horse_NorfolkRoadster_SpeckledGrey = 72,
                A_C_Horse_NorfolkRoadster_SpottedTricolor = 72,

                A_C_Horse_Shire_DarkBay = 15,
                A_C_Horse_Shire_LightGrey = 15,
                A_C_Horse_Shire_RavenBlack = 15,

                A_C_Horse_TennesseeWalker_BlackRabicano = 8,
                A_C_Horse_TennesseeWalker_Chestnut = 8,
                A_C_Horse_TennesseeWalker_MahoganyBay = 8,
                A_C_Horse_TennesseeWalker_RedRoan = 8,

                A_C_Horse_Turkoman_DarkBay = 43,
                A_C_Horse_Turkoman_Gold = 43,
                A_C_Horse_Turkoman_Silver = 43,

                A_C_HorseMule_01 = 6,

            },
            -- carts available and prices
            carts = {
                huntercart01 = 50,
                cart01 = 30,
                cart02 = 23,
                cart05 = 28,
                chuckwagon002x = 110,
                wagon02x = 100,
                wagon03x = 65,
                coach2 = 120,
                stagecoach001x = 80,
                supplywagon = 105
            }
        },
        {
        Name = "Tumbleweed Stable",
        BlipIcon = 1938782895,
        EnterStable = { -5514.24, -3041.81, -2.39, 2.0 },
        StableNPC = { -5515.07, -3039.51, -3.39, 179.88 },
        SpawnHorse = { -5519.47, -3039.32, -3.31, 181.62 },
        CamHorse = { -5517.651, -3041.113, -0.50949, -33.14523, 0.0, 55.47822 },
        CamHorseGear = { -5517.651, -3041.113, -0.50949, -33.14523, 0.0, 55.47822 },
        SpawnCart = { -5520.65, -3044.3, -3.39, 270.83 },
        CamCart = { -5514.191, -3040.633, -0.5108569, -18.79705, 0.0, 141.3175 },
            -- horses available and prices
            horses = {
                A_C_Horse_AmericanStandardbred_Black = 7,
                A_C_Horse_AmericanStandardbred_Buckskin = 7,
                A_C_Horse_AmericanStandardbred_Lightbuckskin = 7,
                A_C_Horse_AmericanStandardbred_PalominoDapple = 7,
                A_C_Horse_AmericanStandardbred_SilverTailBuckskin = 7,

                A_C_Horse_Breton_GrulloDun = 77,
                A_C_Horse_Breton_RedRoan = 77,
                A_C_Horse_Breton_Sorrel = 77,
                A_C_Horse_Breton_SteelGrey = 77,
                A_C_Horse_Breton_SealBrown = 77,

                A_C_Horse_KentuckySaddle_Black = 8,
                A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 8,
                A_C_Horse_KentuckySaddle_ChestnutPinto = 8,
                A_C_Horse_KentuckySaddle_Grey = 8,
                A_C_Horse_KentuckySaddle_SilverBay = 8,

                A_C_Horse_Kladruber_Black = 40,
                A_C_Horse_Kladruber_Silver = 40,
                A_C_Horse_Kladruber_Cremello = 40,

                A_C_Horse_Morgan_FlaxenChestnut = 9,
                A_C_Horse_Morgan_LiverChestnut_PC = 9,

                A_C_Horse_NorfolkRoadster_RoseGrey = 72,
                A_C_Horse_NorfolkRoadster_SpeckledGrey = 72,
                A_C_Horse_NorfolkRoadster_SpottedTricolor = 72,

                A_C_Horse_Shire_DarkBay = 15,
                A_C_Horse_Shire_LightGrey = 15,
                A_C_Horse_Shire_RavenBlack = 15,

                A_C_Horse_TennesseeWalker_BlackRabicano = 8,
                A_C_Horse_TennesseeWalker_Chestnut = 8,
                A_C_Horse_TennesseeWalker_MahoganyBay = 8,
                A_C_Horse_TennesseeWalker_RedRoan = 8,

                A_C_Horse_Turkoman_DarkBay = 43,
                A_C_Horse_Turkoman_Gold = 43,
                A_C_Horse_Turkoman_Silver = 43,

                A_C_HorseMule_01 = 6,

            },
            -- carts available and prices
            carts = {
                huntercart01 = 50,
                cart01 = 30,
                cart02 = 23,
                cart05 = 28,
                chuckwagon002x = 110,
                wagon02x = 100,
                wagon03x = 65,
                coach2 = 120,
                stagecoach001x = 80,
                supplywagon = 105
            }
        }
    }
}
