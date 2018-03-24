.class final Lcom/audlabs/vipereffect/screen/au;
.super Ljava/lang/Object;
.source "VDdcFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/au;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    iput p2, p0, Lcom/audlabs/vipereffect/screen/au;->b:I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/au;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/VDdcFragment;

    move-result-object v0

    iget v1, p0, Lcom/audlabs/vipereffect/screen/au;->b:I

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$3(Lcom/audlabs/vipereffect/screen/VDdcFragment;I)V

    .line 220
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/au;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/VDdcFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$4(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.viperddc.device"

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/au;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/VDdcFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$5(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/audlabs/vipereffect/screen/au;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/au;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;->notifyDataSetChanged()V

    .line 224
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/au;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/VDdcFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$4(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->extractDDCCoeffs(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x1000b

    invoke-virtual {v1, v2, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx1x1024(ILjava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method
