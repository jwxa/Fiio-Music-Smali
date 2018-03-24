.class final Lcom/fiio/music/activity/fx;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/e/a/a;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 4451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$56(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 4456
    iget-object v0, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 4457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4466
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4467
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4468
    const-string v1, "flag"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4469
    const-string v1, "seekToMsec"

    iget-object v2, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4470
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4471
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$56(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 4476
    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    .line 4477
    iget-object v0, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    .line 4478
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4479
    iget-object v0, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 4482
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4483
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4484
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/h/e;->a(J)V

    .line 4488
    :cond_1
    const/16 v0, 0x58

    if-ne p1, v0, :cond_3

    .line 4489
    iget-object v0, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, -0x1388

    .line 4490
    if-gtz v0, :cond_2

    .line 4491
    const/4 v0, 0x0

    .line 4493
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4494
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4495
    iget-object v1, p0, Lcom/fiio/music/activity/fx;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/h/e;->a(J)V

    .line 4497
    :cond_3
    return-void
.end method
