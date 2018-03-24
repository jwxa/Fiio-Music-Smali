.class final Lcom/fiio/music/activity/ch;
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
    iput-object p1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 2685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 2688
    iget-object v0, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    const v0, 0x7f0204f5

    .line 2690
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2689
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2691
    const v0, 0x7f0204f7

    .line 2692
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2691
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2693
    const v0, 0x7f020516

    .line 2694
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2693
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2695
    const v0, 0x7f020518

    .line 2696
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2695
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2707
    :goto_0
    return-void

    .line 2698
    :cond_0
    const v0, 0x7f0204f6

    .line 2699
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2698
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2700
    const v0, 0x7f0204f8

    .line 2701
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2700
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2702
    const v0, 0x7f020517

    .line 2703
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2702
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 2704
    const v0, 0x7f020519

    .line 2705
    iget-object v1, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ch;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I

    move-result v2

    .line 2704
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
