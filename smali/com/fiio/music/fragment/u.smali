.class final Lcom/fiio/music/fragment/u;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 1488
    const-string v0, "zxy = = = "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxVoice  :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    add-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$42(Lcom/fiio/music/fragment/SettingMenuFragment;I)V

    .line 1491
    iget-object v0, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$43(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$44(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$40(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/u;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1484
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1478
    return-void
.end method
