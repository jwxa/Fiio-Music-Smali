.class final Lcom/fiio/music/activity/cz;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/e/a/a;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 4371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$20(Lcom/fiio/music/activity/LocalMusicActivity;Z)V

    .line 4376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4377
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4378
    iget-object v1, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4379
    const-string v1, "flag"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4380
    const-string v1, "seekToMsec"

    iget-object v2, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/RoundProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4381
    iget-object v1, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4382
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$20(Lcom/fiio/music/activity/LocalMusicActivity;Z)V

    .line 4387
    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    .line 4388
    iget-object v0, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/RoundProgressBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    .line 4389
    iget-object v1, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/RoundProgressBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4390
    iget-object v0, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/RoundProgressBar;->getMax()I

    move-result v0

    .line 4392
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 4394
    :cond_1
    const/16 v0, 0x58

    if-ne p1, v0, :cond_3

    .line 4395
    iget-object v0, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/RoundProgressBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, -0x1388

    .line 4396
    if-gtz v0, :cond_2

    .line 4397
    const/4 v0, 0x0

    .line 4399
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/cz;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 4401
    :cond_3
    return-void
.end method
