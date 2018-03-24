.class public Lcom/fiio/music/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final BROADCASTRECEVIER_ACTON:Ljava/lang/String; = "com.fiio.music.recevier.commonrecevier"


# instance fields
.field public brightnesslevel:F

.field private commonRecevier:Lcom/fiio/music/activity/BaseActivity$CommonRecevier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/BaseActivity;->brightnesslevel:F

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/fiio/music/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 34
    const-string v1, "brightness"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 36
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v3, p0, Lcom/fiio/music/activity/BaseActivity;->brightnesslevel:F

    .line 37
    if-eqz v1, :cond_0

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const v1, 0x3dcccccd    # 0.1f

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 39
    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/fiio/music/c/b;->a()I

    move-result v0

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    new-instance v0, Lcom/fiio/music/activity/BaseActivity$CommonRecevier;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/BaseActivity$CommonRecevier;-><init>(Lcom/fiio/music/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/BaseActivity;->commonRecevier:Lcom/fiio/music/activity/BaseActivity$CommonRecevier;

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 96
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 97
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 103
    :goto_0
    return v0

    .line 99
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/fiio/music/activity/BaseActivity;->commonRecevier:Lcom/fiio/music/activity/BaseActivity$CommonRecevier;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.fiio.music.recevier.commonrecevier"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/fiio/music/activity/BaseActivity;->commonRecevier:Lcom/fiio/music/activity/BaseActivity$CommonRecevier;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method

.method public setBrightness(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 50
    new-instance v1, Lcom/fiio/music/c/b;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v0}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 51
    const-string v0, "brightness"

    invoke-virtual {v1, v0}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;

    .line 53
    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 54
    if-eqz v2, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, v0, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, v0, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    const v2, 0x7f0201a7

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 57
    iget v0, p0, Lcom/fiio/music/activity/BaseActivity;->brightnesslevel:F

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 58
    const-string v0, "brightness"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, v0, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, v0, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    const v2, 0x7f0201a6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 63
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 64
    const-string v0, "brightness"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/fiio/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method
