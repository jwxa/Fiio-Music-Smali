.class final Lcom/fiio/music/activity/cg;
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
    iput-object p1, p0, Lcom/fiio/music/activity/cg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 2672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 2675
    iget-object v0, p0, Lcom/fiio/music/activity/cg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    const v0, 0x7f020507

    .line 2677
    iget-object v1, p0, Lcom/fiio/music/activity/cg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2676
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2683
    :goto_0
    return-void

    .line 2679
    :cond_0
    const v0, 0x7f020508

    .line 2680
    iget-object v1, p0, Lcom/fiio/music/activity/cg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cg;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2679
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
