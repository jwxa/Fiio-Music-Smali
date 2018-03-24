.class public Lcom/fiio/music/activity/ScanMusicActivity;
.super Lcom/fiio/music/activity/SettingActivity;
.source "ScanMusicActivity.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fiio/music/activity/SettingActivity;-><init>()V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->b:I

    .line 66
    new-instance v0, Lcom/fiio/music/activity/gg;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gg;-><init>(Lcom/fiio/music/activity/ScanMusicActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->c:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ScanMusicActivity;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->a:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/fiio/music/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanMusicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->a:Z

    .line 44
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->b:I

    .line 46
    iget v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 47
    const v0, 0x7f0400d9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->setContentView(I)V

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanMusicActivity;->b()V

    .line 57
    invoke-virtual {p0}, Lcom/fiio/music/activity/ScanMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->a(Ljava/lang/String;)V

    .line 58
    const v0, 0x7f0b0289

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanMusicActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0b0288

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanMusicActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0b027e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanMusicActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0b027d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanMusicActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanMusicActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void

    .line 48
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 49
    const v0, 0x7f0400da

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->setContentView(I)V

    goto :goto_0

    .line 50
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 51
    const v0, 0x7f0400db

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->setContentView(I)V

    goto :goto_0

    .line 52
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/ScanMusicActivity;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 53
    const v0, 0x7f0400dc

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ScanMusicActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 33
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onDestroy()V

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 104
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 105
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 106
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/SettingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
