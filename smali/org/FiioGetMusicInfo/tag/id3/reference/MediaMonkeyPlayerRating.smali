.class public Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;
.super Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;
.source "MediaMonkeyPlayerRating.java"


# static fields
.field private static rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    .line 146
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    return-object v0
.end method


# virtual methods
.method public convertRatingFromFiveStarScale(I)I
    .locals 3

    .prologue
    .line 39
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convert Ratings from Five Star Scale accepts values from 0 to 5 not:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    return v0

    .line 51
    :pswitch_1
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 55
    :pswitch_2
    const/16 v0, 0x40

    .line 56
    goto :goto_0

    .line 59
    :pswitch_3
    const/16 v0, 0x80

    .line 60
    goto :goto_0

    .line 63
    :pswitch_4
    const/16 v0, 0xc4

    .line 64
    goto :goto_0

    .line 67
    :pswitch_5
    const/16 v0, 0xff

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public convertRatingToFiveStarScale(I)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v4, 0x1c

    const/4 v1, 0x1

    .line 76
    if-gtz p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    if-gt p1, v1, :cond_2

    move v0, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const/16 v3, 0x8

    if-le p1, v3, :cond_0

    .line 89
    const/16 v0, 0x12

    if-gt p1, v0, :cond_3

    move v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    if-gt p1, v4, :cond_4

    move v0, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    if-gt p1, v4, :cond_5

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    if-gt p1, v4, :cond_6

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    if-gt p1, v4, :cond_7

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_7
    const/16 v0, 0x1d

    if-gt p1, v0, :cond_8

    move v0, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_8
    const/16 v0, 0x27

    if-gt p1, v0, :cond_9

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_9
    const/16 v0, 0x31

    if-gt p1, v0, :cond_a

    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_a
    const/16 v0, 0x71

    if-gt p1, v0, :cond_b

    move v0, v2

    .line 124
    goto :goto_0

    .line 125
    :cond_b
    const/16 v0, 0xa7

    if-gt p1, v0, :cond_c

    .line 127
    const/4 v0, 0x3

    .line 128
    goto :goto_0

    .line 129
    :cond_c
    const/16 v0, 0xda

    if-gt p1, v0, :cond_d

    .line 131
    const/4 v0, 0x4

    .line 132
    goto :goto_0

    .line 135
    :cond_d
    const/4 v0, 0x5

    goto :goto_0
.end method
