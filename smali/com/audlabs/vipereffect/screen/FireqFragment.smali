.class public Lcom/audlabs/vipereffect/screen/FireqFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "FireqFragment.java"


# instance fields
.field private mEQPreset:I

.field mEQPresetNames:[Ljava/lang/String;

.field private mEQPresetValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

.field mEqualizerView:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/FireqFragment;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPreset:I

    return-void
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPreset:I

    return v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/FireqFragment;I)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FireqFragment;->equalizerSetPreset(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/FireqFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/screen/FireqFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetValues:Ljava/util/List;

    return-object v0
.end method

.method private equalizerSetPreset(I)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    const-string v1, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fireq.custom"

    .line 101
    const-string v2, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    .line 100
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    const/16 v1, 0xa

    new-array v2, v1, [F

    .line 107
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 110
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqualizerView:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->setBands([F)V

    .line 111
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1
.end method

.method private setFireq(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 45
    const v0, 0x7f0b0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqualizerView:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    .line 46
    const v0, 0x7f0b013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/Gallery;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

    .line 48
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetNames:[Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetValues:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetValues:Ljava/util/List;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.fireq"

    .line 53
    const-string v3, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    .line 52
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPreset:I

    .line 55
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04005c

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/Gallery;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

    iget v1, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPreset:I

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/Gallery;->setSelection(I)V

    .line 59
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ai;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ai;-><init>(Lcom/audlabs/vipereffect/screen/FireqFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/Gallery;->setOnItemSelectedListener(Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;)V

    .line 75
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqualizerView:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    new-instance v1, Lcom/audlabs/vipereffect/screen/aj;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/aj;-><init>(Lcom/audlabs/vipereffect/screen/FireqFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->setBandUpdatedListener(Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f040068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->setFireq(Landroid/view/View;)V

    .line 36
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;->onDestroy()V

    .line 42
    return-void
.end method
