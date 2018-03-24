.class public interface abstract Lorg/justcodecs/dsd/FiltersInt;
.super Ljava/lang/Object;
.source "FiltersInt.java"


# static fields
.field public static final DSDFIR1_16_COEFS:[I

.field public static final DSDFIR1_64_COEFS:[I

.field public static final DSDFIR1_8_COEFS:[I

.field public static final PCMFIR2_2_COEFS:[I

.field public static final PCMFIR3_2_COEFS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0x238ad1d

    const v6, -0x3536486

    const v5, -0x592a26d

    const v4, -0xb12d129

    const v3, -0xd792bdb

    .line 4
    const/16 v0, 0x50

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/justcodecs/dsd/FiltersInt;->DSDFIR1_8_COEFS:[I

    .line 87
    const/16 v0, 0xa0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/justcodecs/dsd/FiltersInt;->DSDFIR1_16_COEFS:[I

    .line 250
    const/16 v0, 0x281

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/justcodecs/dsd/FiltersInt;->DSDFIR1_64_COEFS:[I

    .line 360
    const/16 v0, 0x1b

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 361
    const v2, 0x553da

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 363
    const v2, -0x263277

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 365
    const v2, 0x9af60b

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 367
    const v2, -0x1d0c80d

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 369
    const v2, 0x4931d07

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 371
    aput v4, v0, v1

    const/16 v1, 0xc

    .line 373
    const v2, 0x27d6737a

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 374
    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 375
    const v2, 0x27d6737a

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 377
    aput v4, v0, v1

    const/16 v1, 0x12

    .line 379
    const v2, 0x4931d07

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 381
    const v2, -0x1d0c80d

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 383
    const v2, 0x9af60b

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 385
    const v2, -0x263277

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 387
    const v2, 0x553da

    aput v2, v0, v1

    .line 360
    sput-object v0, Lorg/justcodecs/dsd/FiltersInt;->PCMFIR2_2_COEFS:[I

    .line 390
    const/16 v0, 0x97

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 391
    const/16 v2, -0x1524

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 393
    const/16 v2, 0x2868

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 395
    const/16 v2, -0x4dd6

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 397
    const v2, 0x88f0

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 399
    const v2, -0xe219

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 401
    const v2, 0x163d4

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 403
    const v2, -0x21b1c

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 405
    const v2, 0x317a2

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 407
    const v2, -0x46c1f

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 409
    const v2, 0x62ea1

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 411
    const v2, -0x878d1

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 413
    const v2, 0xb6835

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 415
    const v2, -0xf1e7a

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 417
    const v2, 0x13c1be

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 419
    const v2, -0x197cdc

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 421
    const v2, 0x207fca

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 423
    const v2, -0x29001d

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 425
    const v2, 0x3339b0

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 427
    const v2, -0x3f6f8e

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 429
    const v2, 0x4ded4e

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 431
    const v2, -0x5f090e

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 433
    const v2, 0x732648

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 435
    const v2, -0x8aba05

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 437
    const v2, 0xa6511b

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 439
    const v2, -0xc6996e

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 441
    const v2, 0xec700c

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 443
    const v2, -0x118f6f2

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 445
    const v2, 0x14db79e

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 447
    const v2, -0x18cdbdf

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 449
    const v2, 0x1d98f06

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 451
    aput v7, v0, v1

    const/16 v1, 0x3e

    .line 453
    const v2, 0x2b2140b

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 455
    aput v6, v0, v1

    const/16 v1, 0x42

    .line 457
    const v2, 0x4366ecd

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 459
    aput v5, v0, v1

    const/16 v1, 0x46

    .line 461
    const v2, 0x7f85608

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 463
    aput v3, v0, v1

    const/16 v1, 0x4a

    .line 465
    const v2, 0x28b52433

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 466
    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 467
    const v2, 0x28b52433

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 469
    aput v3, v0, v1

    const/16 v1, 0x50

    .line 471
    const v2, 0x7f85608

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 473
    aput v5, v0, v1

    const/16 v1, 0x54

    .line 475
    const v2, 0x4366ecd

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 477
    aput v6, v0, v1

    const/16 v1, 0x58

    .line 479
    const v2, 0x2b2140b

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 481
    aput v7, v0, v1

    const/16 v1, 0x5c

    .line 483
    const v2, 0x1d98f06

    aput v2, v0, v1

    const/16 v1, 0x5e

    .line 485
    const v2, -0x18cdbdf

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 487
    const v2, 0x14db79e

    aput v2, v0, v1

    const/16 v1, 0x62

    .line 489
    const v2, -0x118f6f2

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 491
    const v2, 0xec700c

    aput v2, v0, v1

    const/16 v1, 0x66

    .line 493
    const v2, -0xc6996e

    aput v2, v0, v1

    const/16 v1, 0x68

    .line 495
    const v2, 0xa6511b

    aput v2, v0, v1

    const/16 v1, 0x6a

    .line 497
    const v2, -0x8aba05

    aput v2, v0, v1

    const/16 v1, 0x6c

    .line 499
    const v2, 0x732648

    aput v2, v0, v1

    const/16 v1, 0x6e

    .line 501
    const v2, -0x5f090e

    aput v2, v0, v1

    const/16 v1, 0x70

    .line 503
    const v2, 0x4ded4e

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 505
    const v2, -0x3f6f8e

    aput v2, v0, v1

    const/16 v1, 0x74

    .line 507
    const v2, 0x3339b0

    aput v2, v0, v1

    const/16 v1, 0x76

    .line 509
    const v2, -0x29001d

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 511
    const v2, 0x207fca

    aput v2, v0, v1

    const/16 v1, 0x7a

    .line 513
    const v2, -0x197cdc

    aput v2, v0, v1

    const/16 v1, 0x7c

    .line 515
    const v2, 0x13c1be

    aput v2, v0, v1

    const/16 v1, 0x7e

    .line 517
    const v2, -0xf1e7a

    aput v2, v0, v1

    const/16 v1, 0x80

    .line 519
    const v2, 0xb6835

    aput v2, v0, v1

    const/16 v1, 0x82

    .line 521
    const v2, -0x878d1

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 523
    const v2, 0x62ea1

    aput v2, v0, v1

    const/16 v1, 0x86

    .line 525
    const v2, -0x46c1f

    aput v2, v0, v1

    const/16 v1, 0x88

    .line 527
    const v2, 0x317a2

    aput v2, v0, v1

    const/16 v1, 0x8a

    .line 529
    const v2, -0x21b1c

    aput v2, v0, v1

    const/16 v1, 0x8c

    .line 531
    const v2, 0x163d4

    aput v2, v0, v1

    const/16 v1, 0x8e

    .line 533
    const v2, -0xe219

    aput v2, v0, v1

    const/16 v1, 0x90

    .line 535
    const v2, 0x88f0

    aput v2, v0, v1

    const/16 v1, 0x92

    .line 537
    const/16 v2, -0x4dd6

    aput v2, v0, v1

    const/16 v1, 0x94

    .line 539
    const/16 v2, 0x2868

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 541
    const/16 v2, -0x1524

    aput v2, v0, v1

    .line 390
    sput-object v0, Lorg/justcodecs/dsd/FiltersInt;->PCMFIR3_2_COEFS:[I

    .line 542
    return-void

    .line 4
    nop

    :array_0
    .array-data 4
        -0x8e
        -0x28b
        -0x7cd
        -0x1312
        -0x27d6
        -0x4983
        -0x79fa
        -0xb75e
        -0xf994
        -0x13006
        -0x140b3
        -0x1099f
        -0x659a
        0xcb23
        0x2970e
        0x4edb8
        0x79371
        0xa19f8
        0xbe24b
        0xc2afe
        0xa2ca5
        0x54310
        -0x2e139
        -0xe0925
        -0x1b4f49
        -0x290ceb
        -0x34e572
        -0x3bf592
        -0x3b25c7
        -0x2f98a2
        -0x1726a5
        0xf2b9b
        0x42d237
        0x818d0f
        0xc776ab
        0x10f5369
        0x1531aad
        0x18ca932
        0x1b6837e
        0x1cc8b41
        0x1cc8b41
        0x1b6837e
        0x18ca932
        0x1531aad
        0x10f5369
        0xc776ab
        0x818d0f
        0x42d237
        0xf2b9b
        -0x1726a5
        -0x2f98a2
        -0x3b25c7
        -0x3bf592
        -0x34e572
        -0x290ceb
        -0x1b4f49
        -0xe0925
        -0x2e139
        0x54310
        0xa2ca5
        0xc2afe
        0xbe24b
        0xa19f8
        0x79371
        0x4edb8
        0x2970e
        0xcb23
        -0x659a
        -0x1099f
        -0x140b3
        -0x13006
        -0xf994
        -0xb75e
        -0x79fa
        -0x4983
        -0x27d6
        -0x1312
        -0x7cd
        -0x28b
        -0x8e
    .end array-data

    .line 87
    :array_1
    .array-data 4
        -0x2a
        -0x66
        -0xdc
        -0x1a4
        -0x2e3
        -0x4c4
        -0x77a
        -0xb3e
        -0x104b
        -0x16db
        -0x1f1f
        -0x293b
        -0x3539
        -0x4302
        -0x5253
        -0x62b2
        -0x7363
        -0x8364
        -0x9163
        -0x9bc2
        -0xa09a
        -0x9dc6
        -0x90f4
        -0x77c3
        -0x4fe2
        -0x173c
        0x33d8
        0x9262
        0x10490
        0x1897d
        0x21efe
        0x2c175
        0x36bae
        0x416d3
        0x4ba6a
        0x54c77
        0x5c1af
        0x60dce
        0x62408
        0x5f79b
        0x57c6e
        0x4a7d8
        0x37164
        0x1d3aa
        -0x32ea
        -0x29f4e
        -0x56936
        -0x88291
        -0xbd731
        -0xf4cb3
        -0x12c2a9
        -0x161306
        -0x1912dd
        -0x1b9368
        -0x1d6355
        -0x1e5053
        -0x1e28dd
        -0x1cbe1a
        -0x19e5e5
        -0x157cc3
        -0xf67d3
        -0x7968d
        0x1fbc9
        0xd46ea
        0x1a34d7
        0x28a190
        0x385b45
        0x492317
        0x5aae56
        0x6ca842
        0x7eb43a
        0x907050
        0xa17826
        0xb167fa
        0xbfdfcb
        0xcc8669
        0xd70c66
        0xdf2eb8
        0xe4b900
        0xe78748
        0xe78748
        0xe4b900
        0xdf2eb8
        0xd70c66
        0xcc8669
        0xbfdfcb
        0xb167fa
        0xa17826
        0x907050
        0x7eb43a
        0x6ca842
        0x5aae56
        0x492317
        0x385b45
        0x28a190
        0x1a34d7
        0xd46ea
        0x1fbc9
        -0x7968d
        -0xf67d3
        -0x157cc3
        -0x19e5e5
        -0x1cbe1a
        -0x1e28dd
        -0x1e5053
        -0x1d6355
        -0x1b9368
        -0x1912dd
        -0x161306
        -0x12c2a9
        -0xf4cb3
        -0xbd731
        -0x88291
        -0x56936
        -0x29f4e
        -0x32ea
        0x1d3aa
        0x37164
        0x4a7d8
        0x57c6e
        0x5f79b
        0x62408
        0x60dce
        0x5c1af
        0x54c77
        0x4ba6a
        0x416d3
        0x36bae
        0x2c175
        0x21efe
        0x1897d
        0x10490
        0x9262
        0x33d8
        -0x173c
        -0x4fe2
        -0x77c3
        -0x90f4
        -0x9dc6
        -0xa09a
        -0x9bc2
        -0x9163
        -0x8364
        -0x7363
        -0x62b2
        -0x5253
        -0x4302
        -0x3539
        -0x293b
        -0x1f1f
        -0x16db
        -0x104b
        -0xb3e
        -0x77a
        -0x4c4
        -0x2e3
        -0x1a4
        -0xdc
        -0x66
        -0x2a
    .end array-data

    .line 250
    :array_2
    .array-data 4
        0x674
        0x1a5
        0x1fd
        0x25e
        0x2ca
        0x340
        0x3c0
        0x44a
        0x4dd
        0x57a
        0x61f
        0x6cb
        0x77d
        0x835
        0x8ef
        0x9ab
        0xa67
        0xb20
        0xbd3
        0xc7f
        0xd1f
        0xdb0
        0xe30
        0xe9a
        0xeea
        0xf1d
        0xf2e
        0xf18
        0xed8
        0xe69
        0xdc5
        0xce9
        0xbd0
        0xa75
        0x8d4
        0x6e9
        0x4b1
        0x226
        -0xb8
        -0x3ee
        -0x77e
        -0xb69
        -0xfb0
        -0x1453
        -0x1953
        -0x1eae
        -0x2462
        -0x2a6b
        -0x30c7
        -0x376e
        -0x3e5d
        -0x458a
        -0x4ced
        -0x547e
        -0x5c30
        -0x63f7
        -0x6bc7
        -0x7390
        -0x7b43
        -0x82ce
        -0x8a1f
        -0x9123
        -0x97c6
        -0x9df2
        -0xa390
        -0xa88a
        -0xacc9
        -0xb034
        -0xb2b3
        -0xb42c
        -0xb488
        -0xb3ad
        -0xb183
        -0xadf2
        -0xa8e4
        -0xa241
        -0x99f6
        -0x8fef
        -0x841a
        -0x7666
        -0x66c7
        -0x5531
        -0x419c
        -0x2c01
        -0x145e
        0x54b
        0x20f7
        0x3e9d
        0x5e30
        0x7fa1
        0xa2d9
        0xc7c0
        0xee38
        0x1161c
        0x13f46
        0x16989
        0x194b3
        0x1c08d
        0x1ecdd
        0x21963
        0x245da
        0x271f8
        0x29d71
        0x2c7f4
        0x2f12b
        0x318bf
        0x33e54
        0x3618d
        0x38209
        0x39f69
        0x3b948
        0x3cf45
        0x3e0fc
        0x3ee0b
        0x3f613
        0x3f8b5
        0x3f595
        0x3ec5b
        0x3dcb5
        0x3c654
        0x3a8ef
        0x38447
        0x3581f
        0x32448
        0x2e899
        0x2a4f3
        0x25942
        0x2057f
        0x1a9ac
        0x145db
        0xda28
        0x66be
        -0x1428
        -0x9643
        -0x11f3b
        -0x1aeab
        -0x2441b
        -0x2df08
        -0x37edb
        -0x422f1
        -0x4ca95
        -0x57506
        -0x62171
        -0x6cef9
        -0x77caf
        -0x8299c
        -0x8d4b8
        -0x97cf5
        -0xa2139
        -0xac05f
        -0xb5940
        -0xbeaaa
        -0xc7369
        -0xcf246
        -0xd6608
        -0xdcd76
        -0xe275c
        -0xe7287
        -0xeadcd
        -0xed80b
        -0xef027
        -0xef516
        -0xee5da
        -0xec187
        -0xe8743
        -0xe3648
        -0xdcde9
        -0xd4d91
        -0xcb4c6
        -0xc032b
        -0xb3883
        -0xa54b1
        -0x957b9
        -0x841c4
        -0x71320
        -0x5cc42
        -0x46dc4
        -0x2f86a
        -0x16d22
        0x32ff
        0x1e6b9
        0x3aca2
        0x58328
        0x7688e
        0x95af0
        0xb5842
        0xd5e52
        0xf6ac8
        0x117b29
        0x138cdb
        0x159d22
        0x17a928
        0x19adfb
        0x1ba893
        0x1d95d5
        0x1f7295
        0x213b9b
        0x22eda5
        0x248570
        0x25ffb4
        0x275930
        0x288eab
        0x299cf9
        0x2a8100
        0x2b37bf
        0x2bbe4e
        0x2c11e7
        0x2c2feb
        0x2c15e5
        0x2bc18e
        0x2b30d8
        0x2a61ea
        0x29532c
        0x280347
        0x26712c
        0x249c17
        0x228390
        0x202777
        0x1d87fe
        0x1aa5b0
        0x178175
        0x141c93
        0x1078ae
        0xc97cf
        0x87c5e
        0x42928
        -0x5ea3
        -0x5176f
        -0x9fd45
        -0xf0bcf
        -0x143e54
        -0x198fc1
        -0x1efaa5
        -0x24793b
        -0x2a0565
        -0x2f98bb
        -0x352c87
        -0x3ab9ce
        -0x403954
        -0x45a3a5
        -0x4af117
        -0x5019d7
        -0x5515e9
        -0x59dd37
        -0x5e6792
        -0x62acc2
        -0x66a488
        -0x6a46aa
        -0x6d8afb
        -0x706966
        -0x72d9f4
        -0x74d4d9
        -0x76527c
        -0x774b7f
        -0x77b8ca
        -0x779396
        -0x76d571
        -0x75784c
        -0x737683
        -0x70cae2
        -0x6d70b0
        -0x6963b8
        -0x64a04e
        -0x5f2357
        -0x58ea4d
        -0x51f34a
        -0x4a3d09
        -0x41c6ee
        -0x389106
        -0x2e9c0f
        -0x23e979
        -0x187b66
        -0xc54b1
        0x8719
        0xe13b1
        0x1c4c1c
        0x2b2aad
        0x3aa903
        0x4ac010
        0x5b681c
        0x6c98c8
        0x7e4917
        0x906f6f
        0xa301a4
        0xb5f500
        0xc93e47
        0xdcd1c3
        0xf0a34f
        0x104a65c
        0x118ce01
        0x12d0d02
        0x14155de
        0x1559ada
        0x169ce0c
        0x17de16d
        0x191c6dc
        0x1a57037
        0x1b8cf5e
        0x1cbd645
        0x1de7703
        0x1f0a3d9
        0x2024f47
        0x2136c13
        0x223ed58
        0x233c694
        0x242ebb2
        0x2515116
        0x25eebab
        0x26bb0ea
        0x27796e9    # 1.8190003E-37f
        0x2829460
        0x28ca0b8
        0x295b40f
        0x29dc740
        0x2a4d3ed
        0x2aad486
        0x2afc448
        0x2b39f4b
        0x2b66280
        0x2b80bb4
        0x2b89995
        0x2b80bb4
        0x2b66280
        0x2b39f4b
        0x2afc448
        0x2aad486
        0x2a4d3ed
        0x29dc740
        0x295b40f
        0x28ca0b8
        0x2829460
        0x27796e9    # 1.8190003E-37f
        0x26bb0ea
        0x25eebab
        0x2515116
        0x242ebb2
        0x233c694
        0x223ed58
        0x2136c13
        0x2024f47
        0x1f0a3d9
        0x1de7703
        0x1cbd645
        0x1b8cf5e
        0x1a57037
        0x191c6dc
        0x17de16d
        0x169ce0c
        0x1559ada
        0x14155de
        0x12d0d02
        0x118ce01
        0x104a65c
        0xf0a34f
        0xdcd1c3
        0xc93e47
        0xb5f500
        0xa301a4
        0x906f6f
        0x7e4917
        0x6c98c8
        0x5b681c
        0x4ac010
        0x3aa903
        0x2b2aad
        0x1c4c1c
        0xe13b1
        0x8719
        -0xc54b1
        -0x187b66
        -0x23e979
        -0x2e9c0f
        -0x389106
        -0x41c6ee
        -0x4a3d09
        -0x51f34a
        -0x58ea4d
        -0x5f2357
        -0x64a04e
        -0x6963b8
        -0x6d70b0
        -0x70cae2
        -0x737683
        -0x75784c
        -0x76d571
        -0x779396
        -0x77b8ca
        -0x774b7f
        -0x76527c
        -0x74d4d9
        -0x72d9f4
        -0x706966
        -0x6d8afb
        -0x6a46aa
        -0x66a488
        -0x62acc2
        -0x5e6792
        -0x59dd37
        -0x5515e9
        -0x5019d7
        -0x4af117
        -0x45a3a5
        -0x403954
        -0x3ab9ce
        -0x352c87
        -0x2f98bb
        -0x2a0565
        -0x24793b
        -0x1efaa5
        -0x198fc1
        -0x143e54
        -0xf0bcf
        -0x9fd45
        -0x5176f
        -0x5ea3
        0x42928
        0x87c5e
        0xc97cf
        0x1078ae
        0x141c93
        0x178175
        0x1aa5b0
        0x1d87fe
        0x202777
        0x228390
        0x249c17
        0x26712c
        0x280347
        0x29532c
        0x2a61ea
        0x2b30d8
        0x2bc18e
        0x2c15e5
        0x2c2feb
        0x2c11e7
        0x2bbe4e
        0x2b37bf
        0x2a8100
        0x299cf9
        0x288eab
        0x275930
        0x25ffb4
        0x248570
        0x22eda5
        0x213b9b
        0x1f7295
        0x1d95d5
        0x1ba893
        0x19adfb
        0x17a928
        0x159d22
        0x138cdb
        0x117b29
        0xf6ac8
        0xd5e52
        0xb5842
        0x95af0
        0x7688e
        0x58328
        0x3aca2
        0x1e6b9
        0x32ff
        -0x16d22
        -0x2f86a
        -0x46dc4
        -0x5cc42
        -0x71320
        -0x841c4
        -0x957b9
        -0xa54b1
        -0xb3883
        -0xc032b
        -0xcb4c6
        -0xd4d91
        -0xdcde9
        -0xe3648
        -0xe8743
        -0xec187
        -0xee5da
        -0xef516
        -0xef027
        -0xed80b
        -0xeadcd
        -0xe7287
        -0xe275c
        -0xdcd76
        -0xd6608
        -0xcf246
        -0xc7369
        -0xbeaaa
        -0xb5940
        -0xac05f
        -0xa2139
        -0x97cf5
        -0x8d4b8
        -0x8299c
        -0x77caf
        -0x6cef9
        -0x62171
        -0x57506
        -0x4ca95
        -0x422f1
        -0x37edb
        -0x2df08
        -0x2441b
        -0x1aeab
        -0x11f3b
        -0x9643
        -0x1428
        0x66be
        0xda28
        0x145db
        0x1a9ac
        0x2057f
        0x25942
        0x2a4f3
        0x2e899
        0x32448
        0x3581f
        0x38447
        0x3a8ef
        0x3c654
        0x3dcb5
        0x3ec5b
        0x3f595
        0x3f8b5
        0x3f613
        0x3ee0b
        0x3e0fc
        0x3cf45
        0x3b948
        0x39f69
        0x38209
        0x3618d
        0x33e54
        0x318bf
        0x2f12b
        0x2c7f4
        0x29d71
        0x271f8
        0x245da
        0x21963
        0x1ecdd
        0x1c08d
        0x194b3
        0x16989
        0x13f46
        0x1161c
        0xee38
        0xc7c0
        0xa2d9
        0x7fa1
        0x5e30
        0x3e9d
        0x20f7
        0x54b
        -0x145e
        -0x2c01
        -0x419c
        -0x5531
        -0x66c7
        -0x7666
        -0x841a
        -0x8fef
        -0x99f6
        -0xa241
        -0xa8e4
        -0xadf2
        -0xb183
        -0xb3ad
        -0xb488
        -0xb42c
        -0xb2b3
        -0xb034
        -0xacc9
        -0xa88a
        -0xa390
        -0x9df2
        -0x97c6
        -0x9123
        -0x8a1f
        -0x82ce
        -0x7b43
        -0x7390
        -0x6bc7
        -0x63f7
        -0x5c30
        -0x547e
        -0x4ced
        -0x458a
        -0x3e5d
        -0x376e
        -0x30c7
        -0x2a6b
        -0x2462
        -0x1eae
        -0x1953
        -0x1453
        -0xfb0
        -0xb69
        -0x77e
        -0x3ee
        -0xb8
        0x226
        0x4b1
        0x6e9
        0x8d4
        0xa75
        0xbd0
        0xce9
        0xdc5
        0xe69
        0xed8
        0xf18
        0xf2e
        0xf1d
        0xeea
        0xe9a
        0xe30
        0xdb0
        0xd1f
        0xc7f
        0xbd3
        0xb20
        0xa67
        0x9ab
        0x8ef
        0x835
        0x77d
        0x6cb
        0x61f
        0x57a
        0x4dd
        0x44a
        0x3c0
        0x340
        0x2ca
        0x25e
        0x1fd
        0x1a5
        0x674
    .end array-data
.end method
