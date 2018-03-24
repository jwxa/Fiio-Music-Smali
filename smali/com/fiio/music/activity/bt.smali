.class final Lcom/fiio/music/activity/bt;
.super Landroid/os/CountDownTimer;
.source "ListMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 571
    const-wide/16 v0, 0x1770

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$44(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/service/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 582
    iget-object v0, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 583
    return-void
.end method

.method public final onTick(J)V
    .locals 2

    .prologue
    .line 573
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$43()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$44(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/service/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 576
    iget-object v0, p0, Lcom/fiio/music/activity/bt;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 577
    invoke-virtual {p0}, Lcom/fiio/music/activity/bt;->cancel()V

    .line 579
    :cond_0
    return-void
.end method
