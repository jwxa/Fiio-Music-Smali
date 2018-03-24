.class public Lcom/fiio/music/activity/SettingActivity;
.super Lcom/fiio/music/activity/BaseActivity;
.source "SettingActivity.java"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fiio/music/activity/BaseActivity;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/activity/SettingActivity;->e:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    const v1, 0x7f0b0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    const v1, 0x7f0b0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageButton;

    .line 32
    new-instance v1, Lcom/fiio/music/activity/gt;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gt;-><init>(Lcom/fiio/music/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/fiio/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/fiio/music/activity/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 26
    :cond_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 64
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onDestroy()V

    .line 65
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 53
    iget v0, p0, Lcom/fiio/music/activity/SettingActivity;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    iget v0, p0, Lcom/fiio/music/activity/SettingActivity;->e:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SettingActivity;->setResult(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/SettingActivity;->finish()V

    .line 58
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
