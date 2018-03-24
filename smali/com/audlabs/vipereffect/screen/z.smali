.class final Lcom/audlabs/vipereffect/screen/z;
.super Ljava/lang/Object;
.source "FetCompressorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$1(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fetcompressor.noclipenable"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorNoclipenableEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$3(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    .line 515
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.speakerfx.fetcompressor.noclipenable"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/z;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorNoclipenableEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
