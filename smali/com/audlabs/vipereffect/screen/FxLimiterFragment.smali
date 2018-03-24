.class public Lcom/audlabs/vipereffect/screen/FxLimiterFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "FxLimiterFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field mOutputVals:[Ljava/lang/String;

.field mOutputVolVals:[Ljava/lang/String;

.field mOutputVols:[Ljava/lang/String;

.field mOutputs:[Ljava/lang/String;

.field mSbLimiter:Landroid/widget/SeekBar;

.field mSbOutputGain:Landroid/widget/SeekBar;

.field mSbOutputPan:Landroid/widget/SeekBar;

.field mTvLimiterVal:Landroid/widget/TextView;

.field mTvOutputGainVal:Landroid/widget/TextView;

.field mTvOutputPanVal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputs:[Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVals:[Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVols:[Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVolVals:[Ljava/lang/String;

    .line 50
    const v0, 0x7f0b013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvOutputPanVal:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0b013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputPan:Landroid/widget/SeekBar;

    .line 53
    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvOutputGainVal:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0b0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputGain:Landroid/widget/SeekBar;

    .line 55
    const v0, 0x7f0b0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvLimiterVal:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0b0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbLimiter:Landroid/widget/SeekBar;

    .line 58
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputPan:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputGain:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbLimiter:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 61
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputPan:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.channelpan"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 65
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvOutputPanVal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.channelpan"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVolVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.outvol"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputGain:Landroid/widget/SeekBar;

    neg-int v2, v0

    add-int/lit8 v2, v2, 0x15

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvOutputGainVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVols:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.limiter"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbLimiter:Landroid/widget/SeekBar;

    neg-int v2, v0

    add-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 73
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvLimiterVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputs:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f040069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->setUpUi(Landroid/view/View;)V

    .line 39
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->updateUi()V

    .line 40
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputPan:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvOutputPanVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.channelpan"

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, -0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10033

    .line 84
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.channelpan"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbOutputGain:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 86
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, -0x15

    neg-int v0, v0

    .line 87
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvOutputGainVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVols:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.outvol"

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVolVals:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10032

    .line 92
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.outvol"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mSbLimiter:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, -0x5

    neg-int v0, v0

    .line 95
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mTvLimiterVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.limiter"

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mOutputVals:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10034

    .line 100
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FxLimiterFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.limiter"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
