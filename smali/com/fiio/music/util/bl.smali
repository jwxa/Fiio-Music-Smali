.class public final Lcom/fiio/music/util/bl;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static final e:Landroid/graphics/BitmapFactory$Options;

.field private static final f:Landroid/graphics/BitmapFactory$Options;

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/net/Uri;

.field private static i:Landroid/graphics/Bitmap;

.field private static final j:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    .line 45
    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album_id"

    aput-object v1, v0, v6

    .line 46
    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 47
    const-string v2, "duration"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/fiio/music/util/bl;->a:[Ljava/lang/String;

    .line 49
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "album"

    aput-object v1, v0, v3

    .line 50
    const-string v1, "numsongs"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "album_art"

    aput-object v1, v0, v6

    .line 49
    sput-object v0, Lcom/fiio/music/util/bl;->b:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    .line 53
    const-string v1, "artist"

    aput-object v1, v0, v3

    .line 54
    const-string v1, "number_of_tracks"

    aput-object v1, v0, v4

    .line 52
    sput-object v0, Lcom/fiio/music/util/bl;->c:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/fiio/music/util/bl;->d:[Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/fiio/music/util/bl;->e:Landroid/graphics/BitmapFactory$Options;

    .line 61
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/fiio/music/util/bl;->f:Landroid/graphics/BitmapFactory$Options;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fiio/music/util/bl;->g:Ljava/util/HashMap;

    .line 64
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/fiio/music/util/bl;->h:Landroid/net/Uri;

    .line 71
    sget-object v0, Lcom/fiio/music/util/bl;->e:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    sget-object v0, Lcom/fiio/music/util/bl;->e:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 74
    sget-object v0, Lcom/fiio/music/util/bl;->f:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 75
    sget-object v0, Lcom/fiio/music/util/bl;->f:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 411
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/util/bl;->i:Landroid/graphics/Bitmap;

    .line 520
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/bl;->j:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 244
    if-nez p1, :cond_0

    move v0, v2

    .line 258
    :goto_0
    return v0

    .line 247
    :cond_0
    if-eqz p0, :cond_1

    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    move v0, v2

    .line 258
    goto :goto_0

    .line 250
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 251
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 249
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    const-string v0, ".ISO"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 323
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 286
    if-nez p1, :cond_0

    move v0, v2

    .line 300
    :goto_0
    return v0

    .line 289
    :cond_0
    if-eqz p0, :cond_1

    .line 291
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    move v0, v2

    .line 300
    goto :goto_0

    .line 292
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 293
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 291
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    const-string v0, ".CUE"

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    const-string v0, ".M3U.M3U8"

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    const-string v0, ".WAV.MP3.WMA.AAC.M4A.AIF.AIFF.APE.DFF.DSF.OGG.FLAC"

    return-object v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    const-string v0, ".PNG.BMP.JPG"

    return-object v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    const-string v0, ".APE.FLAC"

    return-object v0
.end method
