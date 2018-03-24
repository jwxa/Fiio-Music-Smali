.class final Lcom/fiio/music/activity/co;
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
    iput-object p1, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 3242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 3245
    iget-object v0, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 3246
    const v0, 0x7f02033d

    .line 3247
    iget-object v1, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3246
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 3258
    :goto_0
    return-void

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3250
    const v0, 0x7f020507

    .line 3251
    iget-object v1, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3250
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0

    .line 3253
    :cond_1
    const v0, 0x7f020508

    .line 3254
    iget-object v1, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/co;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 3253
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
