.class public Lcom/audlabs/vipereffect/screen/DSPScreenFragment;
.super Landroid/app/Fragment;
.source "DSPScreenFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 48
    :cond_0
    new-instance v0, Lcom/audlabs/vipereffect/screen/DSPScreenFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/DSPScreenFragment;-><init>()V

    :goto_0
    return-object v0

    .line 14
    :sswitch_0
    const-string v0, "colorfulmusic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_1
    const-string v0, "reverb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/audlabs/vipereffect/screen/ReverbFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/ReverbFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_2
    const-string v0, "analogx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/AnalogxFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_3
    const-string v0, "compressor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_4
    const-string v0, "convolver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_5
    const-string v0, "diffsurr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_6
    const-string v0, "vhs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/audlabs/vipereffect/screen/VhsFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/VhsFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_7
    const-string v0, "vse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/audlabs/vipereffect/screen/VseFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/VseFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_8
    const-string v0, "bass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/VBassFragment;-><init>()V

    goto :goto_0

    .line 14
    :sswitch_9
    const-string v0, "cure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/CuresystemFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_a
    const-string v0, "fireq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_b
    const-string v0, "limiter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_c
    const-string v0, "clarity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/audlabs/vipereffect/screen/VClarityFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_d
    const-string v0, "playbackgain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_e
    const-string v0, "dynamicsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_f
    const-string v0, "viperddc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;-><init>()V

    goto/16 :goto_0

    .line 14
    :sswitch_data_0
    .sparse-switch
        -0x5b0d9cd5 -> :sswitch_0
        -0x37b1162e -> :sswitch_1
        -0x3384ca78 -> :sswitch_2
        -0x1605573b -> :sswitch_3
        -0x144e3e0e -> :sswitch_4
        -0x5ba7259 -> :sswitch_5
        0x1c801 -> :sswitch_6
        0x1c948 -> :sswitch_7
        0x2e06df -> :sswitch_8
        0x2ec625 -> :sswitch_9
        0x5ced0fb -> :sswitch_a
        0xa7f55a8 -> :sswitch_b
        0x32e0a014 -> :sswitch_c
        0x50d39c1a -> :sswitch_d
        0x54e2672e -> :sswitch_e
        0x591c5e19 -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DSPScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    return-object v0
.end method
