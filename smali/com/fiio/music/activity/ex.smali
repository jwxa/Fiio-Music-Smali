.class final Lcom/fiio/music/activity/ex;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ew;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ew;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 580
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    iget-boolean v0, v0, Lcom/fiio/music/activity/ew;->e:Z

    if-nez v0, :cond_1

    .line 593
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fiio/music/activity/ew;->d:J

    .line 582
    iget-object v0, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    iget-wide v0, v0, Lcom/fiio/music/activity/ew;->d:J

    iget-object v2, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    iget-wide v2, v2, Lcom/fiio/music/activity/ew;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    invoke-static {v0}, Lcom/fiio/music/activity/ew;->a(Lcom/fiio/music/activity/ew;)Lcom/fiio/music/activity/PlayerMainActivity;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/activity/ey;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ey;-><init>(Lcom/fiio/music/activity/ex;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 590
    iget-object v0, p0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fiio/music/activity/ew;->e:Z

    goto :goto_0
.end method
