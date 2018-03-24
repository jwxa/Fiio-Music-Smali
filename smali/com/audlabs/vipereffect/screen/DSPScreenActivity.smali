.class public Lcom/audlabs/vipereffect/screen/DSPScreenActivity;
.super Landroid/app/Activity;
.source "DSPScreenActivity.java"


# instance fields
.field mEnable:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/DSPScreenActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->setEffectEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method private setEffectEnable(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    const-string v2, "vipereffect.headphonefx.viperddc.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1000a

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 93
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "vipereffect.headphonefx.vse.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1000c

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 64
    :cond_4
    const-string v2, "vipereffect.headphonefx.fireq.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1000f

    if-eqz p2, :cond_5

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 66
    :cond_6
    const-string v2, "vipereffect.headphonefx.convolver.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 67
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10002

    if-eqz p2, :cond_7

    :goto_4
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 68
    :cond_8
    const-string v2, "vipereffect.headphonefx.colorfulmusic.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 69
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10011

    if-eqz p2, :cond_9

    :goto_5
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    .line 70
    :cond_a
    const-string v2, "vipereffect.headphonefx.diffsurr.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 71
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10015

    if-eqz p2, :cond_b

    :goto_6
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_6

    .line 72
    :cond_c
    const-string v2, "vipereffect.headphonefx.vhs.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 73
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10008

    if-eqz p2, :cond_d

    :goto_7
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7

    .line 74
    :cond_e
    const-string v2, "vipereffect.headphonefx.reverb.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 75
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10017

    if-eqz p2, :cond_f

    :goto_8
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_8

    .line 76
    :cond_10
    const-string v2, "vipereffect.headphonefx.playbackgain.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 77
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1001d

    if-eqz p2, :cond_11

    :goto_9
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_9

    .line 78
    :cond_12
    const-string v2, "vipereffect.headphonefx.fetcompressor.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 79
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1004a

    if-eqz p2, :cond_13

    :goto_a
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto :goto_a

    .line 80
    :cond_14
    const-string v2, "vipereffect.headphonefx.dynamicsystem.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 81
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10021

    if-eqz p2, :cond_15

    :goto_b
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_15
    move v0, v1

    goto :goto_b

    .line 82
    :cond_16
    const-string v2, "vipereffect.headphonefx.fidelity.clarity.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 83
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1002a

    if-eqz p2, :cond_17

    :goto_c
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_17
    move v0, v1

    goto :goto_c

    .line 84
    :cond_18
    const-string v2, "vipereffect.headphonefx.cure.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 85
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1002d

    if-eqz p2, :cond_19

    :goto_d
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_19
    move v0, v1

    goto :goto_d

    .line 86
    :cond_1a
    const-string v2, "vipereffect.headphonefx.tube.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 87
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1002f

    if-eqz p2, :cond_1b

    :goto_e
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_1b
    move v0, v1

    goto :goto_e

    .line 88
    :cond_1c
    const-string v2, "vipereffect.headphonefx.analogx.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 89
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10030

    if-eqz p2, :cond_1d

    :goto_f
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_1d
    move v0, v1

    goto :goto_f

    .line 90
    :cond_1e
    const-string v2, "vipereffect.headphonefx.fidelity.bass.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10026

    if-eqz p2, :cond_1f

    :goto_10
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    :cond_1f
    move v0, v1

    goto :goto_10
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/audlabs/vipereffect/screen/l;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/l;-><init>(Lcom/audlabs/vipereffect/screen/DSPScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    .line 33
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FLAG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CONFIG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.audlabs.vipereffect."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v2, v5}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 39
    const-string v3, "limiter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0b001f

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/DSPScreenFragment;->newInstance(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    return-void

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 43
    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 44
    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->mEnable:Landroid/widget/CheckBox;

    new-instance v4, Lcom/audlabs/vipereffect/screen/m;

    invoke-direct {v4, p0, v2, v0}, Lcom/audlabs/vipereffect/screen/m;-><init>(Lcom/audlabs/vipereffect/screen/DSPScreenActivity;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
