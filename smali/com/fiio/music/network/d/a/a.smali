.class public Lcom/fiio/music/network/d/a/a;
.super Ljava/lang/Object;
.source "CloudMusicUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/fiio/music/util/bh;

.field private static c:Landroid/content/res/Resources;

.field private static d:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/fiio/music/network/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/d/a/a;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/fiio/music/util/bh;

    sget-object v1, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fiio/music/network/d/a/a;->b:Lcom/fiio/music/util/bh;

    .line 30
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/d/a/a;->c:Landroid/content/res/Resources;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/network/d/a/a;->d:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 191
    const/4 v2, -0x1

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p0, p1, v3}, Lcom/fiio/music/network/d/a/a;->a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v4

    .line 201
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 205
    if-nez v5, :cond_1

    .line 206
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 212
    :goto_1
    if-lt v1, v5, :cond_2

    move v0, v2

    .line 232
    :goto_2
    if-ltz v0, :cond_5

    .line 233
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getArtists()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 216
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

    .line 224
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 226
    goto :goto_2

    .line 236
    :cond_5
    invoke-static {p0, p1, v3}, Lcom/fiio/music/network/d/a/a;->a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    const/4 v4, -0x1

    .line 56
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v3

    .line 60
    :cond_1
    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v5

    .line 84
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 85
    sget-object v0, Lcom/fiio/music/network/d/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchCloudSongs size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v6

    move v1, v2

    .line 98
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 120
    :goto_2
    if-ltz v4, :cond_7

    .line 121
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    .line 122
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move v1, v4

    .line 159
    :cond_3
    :goto_3
    if-ltz v1, :cond_b

    .line 160
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    .line 161
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v3, v0

    .line 177
    goto :goto_0

    .line 100
    :cond_4
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getArtists()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 101
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 99
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

    .line 109
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v1

    .line 111
    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v6

    .line 131
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move v1, v2

    .line 136
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_9

    :cond_8
    move v1, v4

    goto :goto_3

    .line 137
    :cond_9
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 146
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 166
    :cond_b
    if-eqz p2, :cond_c

    .line 167
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    move-object v0, v3

    .line 169
    goto :goto_4
.end method

.method public static b(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 246
    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v4

    .line 251
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 253
    if-gtz v5, :cond_1

    .line 254
    sget-object v0, Lcom/fiio/music/network/d/a/a;->a:Ljava/lang/String;

    const-string v2, "getSearchCLoudMusicCoverId searchSongsCount size = 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    sget-object v0, Lcom/fiio/music/network/d/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "getSearchCLoudMusicCoverId albumName = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 261
    :goto_1
    if-lt v2, v5, :cond_3

    move-object v0, v1

    .line 269
    :goto_2
    if-nez v0, :cond_0

    .line 270
    :cond_2
    invoke-static {p0, p1, v3}, Lcom/fiio/music/network/d/a/a;->a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 261
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
