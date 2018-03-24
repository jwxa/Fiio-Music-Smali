.class final Lcom/fiio/music/activity/ey;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ex;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ex;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ey;->a:Lcom/fiio/music/activity/ex;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/fiio/music/activity/ey;->a:Lcom/fiio/music/activity/ex;

    iget-object v0, v0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    invoke-static {v0}, Lcom/fiio/music/activity/ew;->a(Lcom/fiio/music/activity/ew;)Lcom/fiio/music/activity/PlayerMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$43(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 586
    iget-object v0, p0, Lcom/fiio/music/activity/ey;->a:Lcom/fiio/music/activity/ex;

    iget-object v0, v0, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    invoke-static {v0}, Lcom/fiio/music/activity/ew;->a(Lcom/fiio/music/activity/ew;)Lcom/fiio/music/activity/PlayerMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$78(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ey;->a:Lcom/fiio/music/activity/ex;

    iget-object v1, v1, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    invoke-static {v1}, Lcom/fiio/music/activity/ew;->a(Lcom/fiio/music/activity/ew;)Lcom/fiio/music/activity/PlayerMainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$79(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    .line 587
    iget-object v2, p0, Lcom/fiio/music/activity/ey;->a:Lcom/fiio/music/activity/ex;

    iget-object v2, v2, Lcom/fiio/music/activity/ex;->a:Lcom/fiio/music/activity/ew;

    invoke-static {v2}, Lcom/fiio/music/activity/ew;->a(Lcom/fiio/music/activity/ew;)Lcom/fiio/music/activity/PlayerMainActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$78(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/16 v3, 0x1f4

    .line 586
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 588
    return-void
.end method
