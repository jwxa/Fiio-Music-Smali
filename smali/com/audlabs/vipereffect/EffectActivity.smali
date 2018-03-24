.class public Lcom/audlabs/vipereffect/EffectActivity;
.super Landroid/app/Activity;
.source "EffectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/EffectActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/EffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/audlabs/vipereffect/a;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/a;-><init>(Lcom/audlabs/vipereffect/EffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/EffectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method
