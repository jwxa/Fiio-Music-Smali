.class final Lcom/fiio/music/activity/aw;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Lcom/fiio/music/adapter/MenuAdapter$ItemListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(ILandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1358
    iget-object v0, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$47(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/custom/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/j;->c()V

    .line 1359
    if-nez p1, :cond_1

    .line 1360
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1361
    iget-object v1, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0, v3}, Lcom/fiio/music/activity/ListMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1363
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/SkinSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1364
    iget-object v1, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0, v4}, Lcom/fiio/music/activity/ListMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1365
    :cond_2
    if-ne p1, v4, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoShutdown()V

    .line 1367
    iget-object v0, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->e()V

    .line 1368
    iget-object v0, p0, Lcom/fiio/music/activity/aw;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->finish()V

    goto :goto_0
.end method
