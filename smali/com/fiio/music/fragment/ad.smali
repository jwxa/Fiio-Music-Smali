.class final Lcom/fiio/music/fragment/ad;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/ad;->b:Landroid/app/AlertDialog;

    .line 1676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$40(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$54(Lcom/fiio/music/fragment/SettingMenuFragment;I)V

    .line 1681
    iget-object v0, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$55(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    const-string v1, "MAX_VOICE"

    iget-object v2, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1683
    iget-object v1, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$56(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$40(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1685
    iget-object v0, p0, Lcom/fiio/music/fragment/ad;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1687
    iget-object v0, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1688
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1689
    iget-object v2, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1690
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/fiio/music/fragment/ad;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1692
    :cond_0
    return-void
.end method
