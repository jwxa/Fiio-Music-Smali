.class final Lcom/fiio/music/service/ac;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerService.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method private constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/service/MediaPlayerService;B)V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/fiio/music/service/ac;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 646
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 647
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 648
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.fiio.music.player.action.SET_PLAY_SERVICE_OPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const-string v0, "flag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_0

    const-string v1, "updateWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "onReceive \u97f3\u4e50\u670d\u52a1\u63a5\u6536\u5230  widget \u53d1\u9001\u7684\u66f4\u65b0\u5e7f\u64ad\u3002\u3002\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v0, "appWidgetIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->r(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/widget/MediaAppWidgetProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Lcom/fiio/music/service/MediaPlayerService;[I)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget-object v0, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->s(Lcom/fiio/music/service/MediaPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isLock"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 660
    const-string v1, "zengxy - - - -"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " screen is off now is time to open the activity  + "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->t(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v1

    if-ne v1, v5, :cond_0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    const-class v2, Lcom/fiio/music/activity/LockScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    const-string v1, "changeUI"

    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    const-string v1, "song"

    iget-object v2, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 667
    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 669
    :cond_2
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v3, v3, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 673
    if-nez v0, :cond_4

    .line 674
    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 676
    if-ne v1, v4, :cond_5

    .line 677
    const-string v0, "drawable://2130837972"

    .line 683
    :cond_3
    :goto_1
    const-string v1, "xyz-MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curAlbum = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_4
    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v6, v6}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 724
    iget-object v2, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v2, v2, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->n(Lcom/fiio/music/service/MediaPlayerService;)Lcom/b/a/b/d;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v2, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/ac;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 679
    const-string v0, "drawable://2130838563"

    goto :goto_1

    .line 680
    :cond_6
    if-ne v1, v5, :cond_3

    .line 681
    const-string v0, "drawable://2130838564"

    goto :goto_1
.end method
