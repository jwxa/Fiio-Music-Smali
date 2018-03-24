.class final Lcom/fiio/music/activity/cp;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/c;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 3260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 3263
    iget-object v0, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3264
    const v0, 0x7f0204f5

    .line 3265
    iget-object v1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3264
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 3266
    const v0, 0x7f0204f7

    .line 3267
    iget-object v1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3266
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 3268
    const v0, 0x7f020516

    .line 3269
    iget-object v1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3268
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 3278
    :goto_0
    return-void

    .line 3271
    :cond_0
    const v0, 0x7f0204f6

    .line 3272
    iget-object v1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3271
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 3273
    const v0, 0x7f0204f8

    .line 3274
    iget-object v1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3273
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 3275
    const v0, 0x7f020517

    .line 3276
    iget-object v1, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cp;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3275
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
