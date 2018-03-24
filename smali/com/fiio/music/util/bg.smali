.class public final Lcom/fiio/music/util/bg;
.super Ljava/lang/Object;
.source "MixPlayerManager.java"


# instance fields
.field private a:I

.field private b:Lcom/fiio/music/service/MediaPlayerService;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/fiio/music/entity/Song;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/fiio/music/entity/Song;Lcom/fiio/music/service/MediaPlayerService;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Lcom/fiio/music/entity/Song;",
            "Lcom/fiio/music/service/MediaPlayerService;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/fiio/music/util/bg;->a:I

    .line 27
    iput-object p2, p0, Lcom/fiio/music/util/bg;->c:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/fiio/music/util/bg;->d:Lcom/fiio/music/entity/Song;

    .line 29
    iput-object p4, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    .line 30
    iput-object p5, p0, Lcom/fiio/music/util/bg;->e:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/entity/Song;I)V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0xa

    const/4 v10, 0x7

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 230
    iput p2, p0, Lcom/fiio/music/util/bg;->a:I

    .line 231
    if-nez p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    .line 236
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    .line 237
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v1, p0, Lcom/fiio/music/util/bg;->c:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto :goto_0

    .line 240
    :cond_2
    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    .line 242
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/util/bg;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    :cond_3
    if-ltz v1, :cond_0

    .line 256
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/util/bg;->e:Landroid/content/Context;

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 257
    if-eq p2, v8, :cond_4

    .line 258
    if-eq p2, v9, :cond_4

    .line 259
    if-eq p2, v11, :cond_4

    .line 260
    if-eq p2, v10, :cond_4

    .line 261
    const/16 v0, 0xe

    if-eq p2, v0, :cond_4

    .line 262
    if-eq p2, v12, :cond_4

    .line 263
    const/16 v0, 0xf

    if-eq p2, v0, :cond_4

    .line 264
    const/16 v0, 0x11

    if-eq p2, v0, :cond_4

    .line 265
    const/16 v0, 0xd

    if-ne p2, v0, :cond_6

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/util/bg;->c:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 248
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/util/bg;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 270
    :cond_7
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    .line 273
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    if-ltz v1, :cond_0

    .line 275
    new-instance v6, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fiio/music/util/bg;->e:Landroid/content/Context;

    invoke-direct {v6, v0, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 276
    invoke-virtual {v6}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/justcodecs/dsd/Sacd;

    .line 277
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 278
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 279
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 281
    if-eq p2, v8, :cond_8

    .line 282
    if-eq p2, v9, :cond_8

    .line 283
    if-eq p2, v11, :cond_8

    .line 284
    if-eq p2, v10, :cond_8

    .line 285
    const/16 v0, 0xe

    if-eq p2, v0, :cond_8

    .line 286
    if-eq p2, v12, :cond_8

    .line 287
    const/16 v0, 0xf

    if-eq p2, v0, :cond_8

    .line 288
    const/16 v0, 0x11

    if-eq p2, v0, :cond_8

    .line 289
    const/16 v0, 0xd

    if-ne p2, v0, :cond_9

    .line 290
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v6, p0, Lcom/fiio/music/util/bg;->c:Ljava/util/List;

    const-wide/32 v8, 0x2b1100

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v8, v10

    move-object v1, p1

    move v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    goto/16 :goto_0

    .line 292
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/util/bg;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v6}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    iget-object v6, p0, Lcom/fiio/music/util/bg;->c:Ljava/util/List;

    const-wide/32 v8, 0x2b1100

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    move v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    goto/16 :goto_0
.end method
