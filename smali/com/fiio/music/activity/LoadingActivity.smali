.class public Lcom/fiio/music/activity/LoadingActivity;
.super Landroid/app/Activity;
.source "LoadingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 28
    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LoadingActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/fiio/music/activity/LoadingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LoadingActivity;->setRequestedOrientation(I)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    const v1, 0x7f0204c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LoadingActivity;->setContentView(Landroid/view/View;)V

    .line 47
    new-instance v0, Lcom/fiio/music/util/ca;

    invoke-direct {v0}, Lcom/fiio/music/util/ca;-><init>()V

    new-instance v1, Lcom/fiio/music/activity/ca;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ca;-><init>(Lcom/fiio/music/activity/LoadingActivity;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ca;->a(Lcom/fiio/music/util/cd;)V

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 60
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 61
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
