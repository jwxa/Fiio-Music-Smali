.class public Lcom/fiio/music/service/DownLoadService;
.super Landroid/app/Service;
.source "DownLoadService.java"


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:I

.field private final c:I

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/fiio/music/entity/DownLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/fiio/music/b/e;

.field private f:Lcom/fiio/music/b/m;

.field private g:Lcom/fiio/music/b/k;

.field private h:Lcom/fiio/music/b/b;

.field private i:Lcom/fiio/music/b/c;

.field private j:I

.field private k:Lcom/fiio/music/util/be;

.field private l:Lcom/fiio/music/util/i;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/fiio/music/service/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/e;-><init>(Lcom/fiio/music/service/DownLoadService;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->a:Landroid/os/IBinder;

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/DownLoadService;->b:I

    .line 42
    const/16 v0, 0x1388

    iput v0, p0, Lcom/fiio/music/service/DownLoadService;->c:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    .line 50
    iput v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    .line 53
    iput-boolean v1, p0, Lcom/fiio/music/service/DownLoadService;->m:Z

    .line 55
    iput-boolean v1, p0, Lcom/fiio/music/service/DownLoadService;->o:Z

    .line 38
    return-void
.end method

.method private declared-synchronized a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 158
    :goto_0
    monitor-exit p0

    return-object v0

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    if-eqz v2, :cond_4

    .line 156
    invoke-virtual {v2}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 145
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 146
    if-nez v2, :cond_3

    move-object v2, v0

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v2}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-le v4, v5, :cond_1

    move-object v2, v0

    .line 150
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 158
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/fiio/music/service/DownLoadService;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method private a(Lcom/fiio/music/entity/DownLoadInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 165
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 307
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ThreadInfo;

    .line 168
    iput-boolean v2, p0, Lcom/fiio/music/service/DownLoadService;->o:Z

    .line 169
    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fiio/music/service/DownLoadService;->n:Ljava/lang/String;

    .line 170
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/fiio/music/service/c;

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/fiio/music/service/c;-><init>(Lcom/fiio/music/service/DownLoadService;Lcom/fiio/music/entity/ThreadInfo;Lcom/fiio/music/entity/DownLoadInfo;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/service/DownLoadService;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 312
    iput-boolean v5, p0, Lcom/fiio/music/service/DownLoadService;->o:Z

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/DownLoadInfo;->setThreadCount(I)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadCount()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->f:Lcom/fiio/music/b/m;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/m;->b(I)I

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->e:Lcom/fiio/music/b/e;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/e;->a(I)I

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.download.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/fiio/music/service/DownLoadService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->a(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/fiio/music/service/DownLoadService;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/service/DownLoadService;->stopSelf()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->f:Lcom/fiio/music/b/m;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadInfos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/m;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/fiio/music/service/DownLoadService;->e:Lcom/fiio/music/b/e;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v3

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/fiio/music/b/e;->a(II)V

    invoke-virtual {v0, v5}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.download.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/fiio/music/service/DownLoadService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->f:Lcom/fiio/music/b/m;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadInfos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/m;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->e:Lcom/fiio/music/b/e;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/b/e;->a(II)V

    invoke-virtual {v0, p2}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.download.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "flag"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "displayname"

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/fiio/music/service/DownLoadService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/service/DownLoadService;Lcom/fiio/music/entity/DownLoadInfo;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 621
    new-instance v3, Lcom/fiio/music/entity/Song;

    invoke-direct {v3}, Lcom/fiio/music/entity/Song;-><init>()V

    new-instance v4, Lcom/fiio/music/entity/Album;

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-direct {v4, v8, v0, v5}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->h:Lcom/fiio/music/b/b;

    invoke-virtual {v4}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fiio/music/b/b;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->h:Lcom/fiio/music/b/b;

    invoke-virtual {v0, v4}, Lcom/fiio/music/b/b;->a(Lcom/fiio/music/entity/Album;)J

    move-result-wide v6

    long-to-int v0, v6

    :cond_0
    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Album;->setId(I)V

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    new-instance v4, Lcom/fiio/music/entity/Artist;

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-direct {v4, v8, v0, v5}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->i:Lcom/fiio/music/b/c;

    invoke-virtual {v4}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fiio/music/b/c;->f(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->i:Lcom/fiio/music/b/c;

    invoke-virtual {v0, v4}, Lcom/fiio/music/b/c;->a(Lcom/fiio/music/entity/Artist;)J

    move-result-wide v6

    long-to-int v0, v6

    :cond_1
    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Artist;->setId(I)V

    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/fiio/music/entity/Song;->setDownFinish(Z)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getDurationTime()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/fiio/music/entity/Song;->setLike(Z)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/fiio/music/entity/Song;->setNet(Z)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setNetUrl(Ljava/lang/String;)V

    const-string v0, "$1$"

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setPlayerList(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getFileSize()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->g:Lcom/fiio/music/b/k;

    invoke-virtual {v0, v3}, Lcom/fiio/music/b/k;->a(Lcom/fiio/music/entity/Song;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/b/m;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->f:Lcom/fiio/music/b/m;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/b/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->e:Lcom/fiio/music/b/e;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/util/be;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->k:Lcom/fiio/music/util/be;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/service/DownLoadService;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    return v0
.end method

.method static synthetic f(Lcom/fiio/music/service/DownLoadService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/fiio/music/service/DownLoadService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/fiio/music/service/DownLoadService;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fiio/music/service/DownLoadService;->o:Z

    return v0
.end method

.method static synthetic h(Lcom/fiio/music/service/DownLoadService;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fiio/music/service/DownLoadService;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/fiio/music/service/DownLoadService;)V
    .locals 4

    .prologue
    .line 118
    iget v0, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fiio/music/service/DownLoadService;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    iget v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.download.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/entity/DownLoadInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 367
    iget v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    if-nez v1, :cond_1

    .line 368
    iget v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    .line 369
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    .line 370
    invoke-direct {p0, v0}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/entity/DownLoadInfo;)V

    .line 374
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.download.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 374
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    new-instance v0, Lcom/fiio/music/b/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->e:Lcom/fiio/music/b/e;

    .line 61
    new-instance v0, Lcom/fiio/music/b/m;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->f:Lcom/fiio/music/b/m;

    .line 62
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->g:Lcom/fiio/music/b/k;

    .line 63
    new-instance v0, Lcom/fiio/music/b/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->i:Lcom/fiio/music/b/c;

    .line 64
    new-instance v0, Lcom/fiio/music/b/b;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->h:Lcom/fiio/music/b/b;

    .line 65
    new-instance v0, Lcom/fiio/music/util/be;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->k:Lcom/fiio/music/util/be;

    .line 66
    new-instance v0, Lcom/fiio/music/util/i;

    invoke-direct {v0}, Lcom/fiio/music/util/i;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->l:Lcom/fiio/music/util/i;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    .line 69
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->e:Lcom/fiio/music/b/e;

    invoke-virtual {v0}, Lcom/fiio/music/b/e;->a()Ljava/util/List;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fiio/music/service/DownLoadService;->m:Z

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 73
    iget-object v2, p0, Lcom/fiio/music/service/DownLoadService;->f:Lcom/fiio/music/b/m;

    .line 74
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/b/m;->a(I)Ljava/util/List;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/DownLoadInfo;->setThreadInfos(Ljava/util/List;)V

    .line 75
    iget-object v2, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 357
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 90
    const-string v0, "com.fiio.music.service.download"

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/service/DownLoadService;->stopSelf()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/fiio/music/service/DownLoadService;->j:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/fiio/music/service/DownLoadService;->stopSelf()V

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/fiio/music/service/DownLoadService;->m:Z

    iget-object v1, p0, Lcom/fiio/music/service/DownLoadService;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    if-eq v2, v7, :cond_0

    iget-boolean v0, p0, Lcom/fiio/music/service/DownLoadService;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    if-ne v2, v6, :cond_9

    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v0, v5}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    :goto_2
    if-eqz v2, :cond_6

    const/4 v0, 0x6

    if-ne v2, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/fiio/music/service/d;

    invoke-direct {v2, p0, v1}, Lcom/fiio/music/service/d;-><init>(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.download.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v4

    if-ne v4, v6, :cond_4

    invoke-virtual {v0, v5}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/fiio/music/service/DownLoadService;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v0, v7}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    goto :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 615
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
