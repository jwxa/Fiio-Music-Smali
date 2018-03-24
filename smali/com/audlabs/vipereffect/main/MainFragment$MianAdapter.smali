.class public Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainFragment.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/audlabs/vipereffect/main/MainFragment;


# direct methods
.method public constructor <init>(Lcom/audlabs/vipereffect/main/MainFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->this$0:Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 102
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->setEffectEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->this$0:Lcom/audlabs/vipereffect/main/MainFragment;

    return-object v0
.end method

.method private setEffectEnable(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    const-string v2, "vipereffect.headphonefx.viperddc.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x1000a

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 253
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 222
    :cond_2
    const-string v2, "vipereffect.headphonefx.vse.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
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

    .line 224
    :cond_4
    const-string v2, "vipereffect.headphonefx.fireq.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
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

    .line 226
    :cond_6
    const-string v2, "vipereffect.headphonefx.convolver.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 227
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

    .line 228
    :cond_8
    const-string v2, "vipereffect.headphonefx.colorfulmusic.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 229
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

    .line 230
    :cond_a
    const-string v2, "vipereffect.headphonefx.diffsurr.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 231
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

    .line 232
    :cond_c
    const-string v2, "vipereffect.headphonefx.vhs.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 233
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

    .line 234
    :cond_e
    const-string v2, "vipereffect.headphonefx.reverb.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 235
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

    .line 236
    :cond_10
    const-string v2, "vipereffect.headphonefx.playbackgain.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 237
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

    .line 238
    :cond_12
    const-string v2, "vipereffect.headphonefx.fetcompressor.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 239
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

    .line 240
    :cond_14
    const-string v2, "vipereffect.headphonefx.dynamicsystem.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 241
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

    .line 242
    :cond_16
    const-string v2, "vipereffect.headphonefx.fidelity.clarity.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 243
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

    .line 244
    :cond_18
    const-string v2, "vipereffect.headphonefx.cure.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 245
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

    .line 246
    :cond_1a
    const-string v2, "vipereffect.headphonefx.tube.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 247
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

    .line 248
    :cond_1c
    const-string v2, "vipereffect.headphonefx.analogx.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 249
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

    .line 250
    :cond_1e
    const-string v2, "vipereffect.headphonefx.fidelity.bass.enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
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
.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->this$0:Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$0(Lcom/audlabs/vipereffect/main/MainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    if-nez p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040084

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 125
    new-instance v1, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;-><init>(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)V

    .line 126
    const v0, 0x7f0b0190

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0b0192

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->tvTilte:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0b0191

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->this$0:Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$0(Lcom/audlabs/vipereffect/main/MainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 144
    iget-object v3, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const-string v1, "ICON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v3, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->tvTilte:Landroid/widget/TextView;

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->this$0:Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/main/MainFragment;->access$1(Lcom/audlabs/vipereffect/main/MainFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const v3, 0x7f03003c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    :goto_2
    iget-object v1, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    new-instance v3, Lcom/audlabs/vipereffect/main/e;

    invoke-direct {v3, p0, v0, v2}, Lcom/audlabs/vipereffect/main/e;-><init>(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;Ljava/util/HashMap;Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v1, Lcom/audlabs/vipereffect/main/g;

    invoke-direct {v1, p0, v0, v2}, Lcom/audlabs/vipereffect/main/g;-><init>(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;Ljava/util/HashMap;Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-object p2

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v1, v2, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const v3, 0x7f03003b

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
