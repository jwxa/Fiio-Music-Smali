.class public Lcom/fiio/music/activity/WidgetInitActivity;
.super Landroid/app/Activity;
.source "WidgetInitActivity.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/WidgetInitActivity;->a:I

    .line 11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/WidgetInitActivity;->setResult(I)V

    .line 21
    invoke-virtual {p0}, Lcom/fiio/music/activity/WidgetInitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/WidgetInitActivity;->a:I

    .line 26
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/WidgetInitActivity;->a:I

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/fiio/music/activity/WidgetInitActivity;->finish()V

    .line 30
    :cond_1
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/fiio/music/activity/WidgetInitActivity;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/WidgetInitActivity;->setResult(ILandroid/content/Intent;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/WidgetInitActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    invoke-virtual {p0}, Lcom/fiio/music/activity/WidgetInitActivity;->finish()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    return-void
.end method
