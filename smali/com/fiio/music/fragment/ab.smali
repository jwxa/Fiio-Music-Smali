.class final Lcom/fiio/music/fragment/ab;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/ab;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/fiio/music/fragment/ab;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$51(Lcom/fiio/music/fragment/SettingMenuFragment;I)V

    .line 1666
    iget-object v0, p0, Lcom/fiio/music/fragment/ab;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$52(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fiio/music/fragment/ab;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$53(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1661
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1655
    return-void
.end method
