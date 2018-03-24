.class final Lcom/fiio/music/fragment/am;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/am;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/am;->b:Landroid/widget/TextView;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/fiio/music/fragment/am;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {p2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$5(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$3(Lcom/fiio/music/fragment/SettingMenuFragment;I)V

    .line 953
    iget-object v0, p0, Lcom/fiio/music/fragment/am;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fiio/music/fragment/am;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$2(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 943
    return-void
.end method
