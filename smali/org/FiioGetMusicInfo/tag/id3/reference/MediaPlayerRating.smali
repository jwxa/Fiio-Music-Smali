.class public Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;
.super Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;
.source "MediaPlayerRating.java"


# static fields
.field private static rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    .line 93
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/reference/MediaPlayerRating;->rating:Lorg/FiioGetMusicInfo/tag/id3/reference/ID3Rating;

    return-object v0
.end method


# virtual methods
.method public convertRatingFromFiveStarScale(I)I
    .locals 3

    .prologue
    .line 22
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 24
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

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 28
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    :pswitch_0
    return v0

    .line 34
    :pswitch_1
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 38
    :pswitch_2
    const/16 v0, 0x40

    .line 39
    goto :goto_0

    .line 42
    :pswitch_3
    const/16 v0, 0x80

    .line 43
    goto :goto_0

    .line 46
    :pswitch_4
    const/16 v0, 0xc4

    .line 47
    goto :goto_0

    .line 50
    :pswitch_5
    const/16 v0, 0xff

    goto :goto_0

    .line 28
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
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 59
    if-gtz p1, :cond_1

    .line 62
    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    if-le p1, v0, :cond_0

    .line 68
    const/16 v0, 0x40

    if-gt p1, v0, :cond_2

    .line 70
    const/4 v0, 0x2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/16 v0, 0x80

    if-gt p1, v0, :cond_3

    .line 74
    const/4 v0, 0x3

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/16 v0, 0xc4

    if-gt p1, v0, :cond_4

    .line 78
    const/4 v0, 0x4

    .line 79
    goto :goto_0

    .line 82
    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method
