.class final Lcom/fiio/music/activity/ej;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Lcom/fiio/music/e/a/a;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 2279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$19(Lcom/fiio/music/activity/MyMusicListActivity;Z)V

    .line 2284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2285
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2286
    iget-object v1, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2287
    const-string v1, "flag"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2288
    const-string v1, "seekToMsec"

    iget-object v2, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/RoundProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2289
    iget-object v1, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2290
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$19(Lcom/fiio/music/activity/MyMusicListActivity;Z)V

    .line 2295
    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    .line 2296
    iget-object v0, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/RoundProgressBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    .line 2297
    iget-object v1, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/RoundProgressBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/RoundProgressBar;->getMax()I

    move-result v0

    .line 2300
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 2302
    :cond_1
    const/16 v0, 0x58

    if-ne p1, v0, :cond_3

    .line 2303
    iget-object v0, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/RoundProgressBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, -0x1388

    .line 2304
    if-gtz v0, :cond_2

    .line 2305
    const/4 v0, 0x0

    .line 2307
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/ej;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 2309
    :cond_3
    return-void
.end method
