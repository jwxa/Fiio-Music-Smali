.class public abstract Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;
.super Ljava/lang/Object;
.source "ID3Rating.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$Tagger:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$Tagger()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$Tagger:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->values()[Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->BEATUNES:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->FOOBAR2000:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->GODFATHER:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ITUNES:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->JAIKOZ:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->JRIVER:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIAPLAYER:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MP3TAG:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->PICARD:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->SONGBIRD:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->TAGSCANNER:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->TAG_AND_RENAME:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->WINAMP:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->XIPH:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$Tagger:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lorg/FiioGetMusicInfo/tag/reference/Tagger;)Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$reference$Tagger()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    :pswitch_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;->getInstance()Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    move-result-object v0

    :goto_0
    return-object v0

    .line 17
    :pswitch_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/reference/ITunesRating;->getInstance()Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_2
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;->getInstance()Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_3
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;->getInstance()Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    move-result-object v0

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract convertRatingFromFiveStarScale(I)I
.end method

.method public abstract convertRatingToFiveStarScale(I)I
.end method
