.class final Lcom/audlabs/vipereffect/screen/i;
.super Ljava/lang/Object;
.source "ConvolverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    iput p2, p0, Lcom/audlabs/vipereffect/screen/i;->b:I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/screen/i;)Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    iget v1, p0, Lcom/audlabs/vipereffect/screen/i;->b:I

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$3(Lcom/audlabs/vipereffect/screen/ConvolverFragment;I)V

    .line 295
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    iget-object v1, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mBtnConvolverKnl:Landroid/widget/Button;

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/audlabs/vipereffect/screen/i;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$4(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.convolver.kernel"

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/audlabs/vipereffect/screen/i;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlSearch:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$5(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlSearch:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$5(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Lcom/audlabs/vipereffect/screen/j;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/j;-><init>(Lcom/audlabs/vipereffect/screen/i;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 319
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/i;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/audlabs/vipereffect/screen/i;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setConvIRFile(Ljava/lang/String;)V

    .line 330
    return-void
.end method
