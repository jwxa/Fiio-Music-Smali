.class final Lcom/fiio/music/service/aa;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method private constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/service/MediaPlayerService;B)V
    .locals 0

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/fiio/music/service/aa;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v0, v0, Lcom/fiio/music/service/MediaPlayerService;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1250
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v0, v0, Lcom/fiio/music/service/MediaPlayerService;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v0, :cond_2

    .line 1258
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setCueFlag(Z)V

    .line 1259
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdFlag(Z)V

    .line 1261
    :cond_2
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "song-Path\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v2

    .line 1264
    iget-object v3, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v4

    .line 1265
    iget-object v5, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v5}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->getChannels()Ljava/lang/String;

    move-result-object v5

    .line 1263
    invoke-static/range {v0 .. v5}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/af;->b(I)V

    .line 1269
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->v(Lcom/fiio/music/service/MediaPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1270
    const-string v1, "CurPlayingSongPath"

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1271
    const-string v1, "UNLATCH_SD_CARD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1278
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->w(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->x(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->y(Lcom/fiio/music/service/MediaPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MEMORY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    const-string v1, "LOCATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " lastDuration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->z(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->z(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setPrameterForMemory(ZI)V

    .line 1285
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v0, :cond_a

    .line 1286
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediaRunnable start play : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startPlay()V

    .line 1304
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->B(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1307
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->C(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/ad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/ad;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->C(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/ad;

    move-result-object v0

    .line 1309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/ad;->sendEmptyMessage(I)Z

    .line 1311
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Z)V

    .line 1312
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->D(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1313
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;Z)V

    .line 1314
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1315
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->E(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1317
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v0

    .line 1318
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->F(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1349
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1350
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->t(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    .line 1351
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->t(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    .line 1352
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->J(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1361
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1362
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/an;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/service/af;->a(Z)V

    .line 1363
    const-string v2, "flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "currentPosition"

    iget-object v4, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->H(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1364
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->j(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1367
    :cond_6
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->K(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->J(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1376
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1377
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/an;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/service/af;->a(Z)V

    .line 1378
    const-string v2, "flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1379
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->j(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1382
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->J(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1383
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->j(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1385
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1386
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->L(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->J(Lcom/fiio/music/service/MediaPlayerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1387
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->M(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1392
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v0, v0, Lcom/fiio/music/service/MediaPlayerService;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1395
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1289
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_b

    .line 1290
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdFlag(Z)V

    .line 1291
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setCueFlag(Z)V

    .line 1292
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget v1, v1, Lcom/fiio/music/service/MediaPlayerService;->k:I

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setStartMsec(I)V

    .line 1293
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->A(Lcom/fiio/music/service/MediaPlayerService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setStartSample(J)V

    .line 1294
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget v1, v1, Lcom/fiio/music/service/MediaPlayerService;->l:I

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setRealDuration(I)V

    .line 1295
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startPlay()V

    goto/16 :goto_1

    .line 1297
    :cond_b
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdFlag(Z)V

    .line 1298
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setCueFlag(Z)V

    .line 1299
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget v1, v1, Lcom/fiio/music/service/MediaPlayerService;->k:I

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setStartMsec(I)V

    .line 1300
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget v1, v1, Lcom/fiio/music/service/MediaPlayerService;->l:I

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setRealDuration(I)V

    .line 1301
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startPlay()V

    goto/16 :goto_1

    .line 1320
    :cond_c
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->t(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v2

    if-ne v2, v6, :cond_d

    .line 1321
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1322
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/an;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/service/af;->a(Z)V

    .line 1323
    const-string v2, "flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "currentPosition"

    iget-object v4, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v4}, Lcom/fiio/music/service/MediaPlayerService;->H(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1332
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2, v1}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1333
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->j(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1335
    :cond_d
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1341
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1342
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v3, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->I(Lcom/fiio/music/service/MediaPlayerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)Z

    move-result v2

    .line 1343
    if-nez v2, :cond_5

    .line 1344
    iget-object v2, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v3, p0, Lcom/fiio/music/service/aa;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->I(Lcom/fiio/music/service/MediaPlayerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->c(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
