.class public Lcom/fiio/music/activity/SystemSettingActivity;
.super Lcom/fiio/music/activity/SettingActivity;
.source "SystemSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fiio/music/activity/SettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/fiio/music/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/fiio/music/activity/SystemSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 21
    :cond_0
    const v0, 0x7f04013a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SystemSettingActivity;->setContentView(I)V

    .line 22
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 23
    invoke-virtual {p0}, Lcom/fiio/music/activity/SystemSettingActivity;->b()V

    .line 24
    invoke-virtual {p0}, Lcom/fiio/music/activity/SystemSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SystemSettingActivity;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 31
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onDestroy()V

    .line 32
    return-void
.end method
