.class final Lcom/fiio/music/service/d;
.super Ljava/lang/Object;
.source "DownLoadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/DownLoadService;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/DownLoadService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    iput-object p2, p0, Lcom/fiio/music/service/d;->b:Ljava/lang/String;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 549
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/DownLoadInfo;

    .line 550
    if-eqz v0, :cond_1

    .line 551
    iget-object v1, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v1}, Lcom/fiio/music/service/DownLoadService;->g(Lcom/fiio/music/service/DownLoadService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v1}, Lcom/fiio/music/service/DownLoadService;->b(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/b/m;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getThreadInfos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/m;->a(Ljava/util/List;)V

    .line 559
    iget-object v1, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v1}, Lcom/fiio/music/service/DownLoadService;->c(Lcom/fiio/music/service/DownLoadService;)Lcom/fiio/music/b/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v3

    .line 560
    iget-object v1, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v1}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/DownLoadInfo;

    .line 561
    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getCompleteSize()I

    move-result v1

    .line 559
    invoke-virtual {v2, v3, v1}, Lcom/fiio/music/b/e;->a(II)V

    .line 563
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/DownLoadInfo;->setState(I)V

    .line 564
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->e(Lcom/fiio/music/service/DownLoadService;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/fiio/music/service/DownLoadService;->a(Lcom/fiio/music/service/DownLoadService;I)V

    .line 565
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->h(Lcom/fiio/music/service/DownLoadService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->i(Lcom/fiio/music/service/DownLoadService;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->g(Lcom/fiio/music/service/DownLoadService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    new-instance v1, Landroid/content/Intent;

    .line 574
    const-string v2, "com.fiio.music.download.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    const-string v2, "flag"

    const/4 v3, 0x0

    .line 574
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Lcom/fiio/music/service/DownLoadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-static {v0}, Lcom/fiio/music/service/DownLoadService;->h(Lcom/fiio/music/service/DownLoadService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/fiio/music/service/d;->a:Lcom/fiio/music/service/DownLoadService;

    invoke-virtual {v0}, Lcom/fiio/music/service/DownLoadService;->stopSelf()V

    .line 581
    :cond_2
    return-void
.end method
