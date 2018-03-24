.class public Lcom/audlabs/vipereffect/screen/FetCompressorFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "FetCompressorFragment.java"


# static fields
.field private static final MAXADAPTTIME:F = 4.0f

.field private static final MAXATTACKTIME:F = 0.2f

.field private static final MAXCRESTTIME:F = 2.0f

.field private static final MAXGAINDB:F = 60.0f

.field private static final MAXKNEEMULT:F = 4.0f

.field private static final MAXRELEASETIME:F = 2.0f

.field private static final MINADAPTTIME:F = 1.0f

.field private static final MINATTACKTIME:F = 1.0E-4f

.field private static final MINCRESTTIME:F = 0.005f

.field private static final MINKNEEMULT:F = 0.0f

.field private static final MINRELEASETIME:F = 0.005f


# instance fields
.field private isHeadphonefx:Z

.field private mDf:Ljava/text/DecimalFormat;

.field mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

.field mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

.field mFetCompressorAutokneeEnable:Landroid/widget/CheckBox;

.field mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

.field mFetCompressorNoclipenableEnable:Landroid/widget/CheckBox;

.field mPbvFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorCrest:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorKnee:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorRatio:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mPbvFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mTrbFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorCrest:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorRatio:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvFetCompressorAdaptVal:Landroid/widget/TextView;

.field mTvFetCompressorAttackVal:Landroid/widget/TextView;

.field mTvFetCompressorCrestVal:Landroid/widget/TextView;

.field mTvFetCompressorGainVal:Landroid/widget/TextView;

.field mTvFetCompressorKneeVal:Landroid/widget/TextView;

.field mTvFetCompressorKneemultiVal:Landroid/widget/TextView;

.field mTvFetCompressorMaxattackVal:Landroid/widget/TextView;

.field mTvFetCompressorMaxreleaseVal:Landroid/widget/TextView;

.field mTvFetCompressorRatioVal:Landroid/widget/TextView;

.field mTvFetCompressorReleaseVal:Landroid/widget/TextView;

.field mTvFetCompressorThresholdVal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show01(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    return v0
.end method

.method static synthetic access$10(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show08(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show09(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show10(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show11(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->setFetEffect()V

    return-void
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show02(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show03(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show04(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show05(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show06(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show07(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private param2lin(FFF)F
    .locals 1

    .prologue
    .line 656
    sub-float v0, p3, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private param2log(FFF)F
    .locals 8

    .prologue
    .line 651
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p1

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private setFetEffect()V
    .locals 10

    .prologue
    const v9, 0x10052

    const v8, 0x10050

    const v7, 0x1004e

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 708
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1004b

    .line 709
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.threshold"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 710
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1004c

    .line 711
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.ratio"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 712
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1004d

    .line 713
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.knee"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 714
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1004f

    .line 715
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.gain"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 716
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10051

    .line 717
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.attack"

    const-string v4, "20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 718
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10053

    .line 719
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.release"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 720
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10055

    .line 721
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.kneemulti"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 722
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10056

    .line 723
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.maxattack"

    const-string v4, "80"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 724
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10057

    .line 725
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.maxrelease"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 726
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10058

    .line 727
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.crest"

    const-string v4, "20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 728
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10059

    .line 729
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "vipereffect.headphonefx.fetcompressor.adapt"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 730
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fetcompressor.noclipenable"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1005a

    invoke-virtual {v0, v1, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 735
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fetcompressor.autoknee"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 740
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fetcompressor.autogain"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 745
    :goto_2
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fetcompressor.autoattack"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, v9, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 750
    :goto_3
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fetcompressor.autorelease"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 751
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10054

    invoke-virtual {v0, v1, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 755
    :goto_4
    return-void

    .line 733
    :cond_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1005a

    invoke-virtual {v0, v1, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_0

    .line 738
    :cond_1
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_1

    .line 743
    :cond_2
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_2

    .line 748
    :cond_3
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_3

    .line 753
    :cond_4
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10054

    invoke-virtual {v0, v1, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto :goto_4
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f030022

    const v3, 0x7f030021

    const/16 v2, 0x12c

    .line 105
    const v0, 0x7f0b00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorThresholdVal:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 107
    const v0, 0x7f0b00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 109
    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorRatioVal:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRatio:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 111
    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRatio:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 113
    const v0, 0x7f0b00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutokneeEnable:Landroid/widget/CheckBox;

    .line 114
    const v0, 0x7f0b00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorKneeVal:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0b00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 116
    const v0, 0x7f0b00f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKnee:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 118
    const v0, 0x7f0b00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

    .line 119
    const v0, 0x7f0b0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorGainVal:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0b0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 121
    const v0, 0x7f0b0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 123
    const v0, 0x7f0b0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

    .line 124
    const v0, 0x7f0b0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorAttackVal:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 126
    const v0, 0x7f0b0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 128
    const v0, 0x7f0b010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

    .line 129
    const v0, 0x7f0b0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorReleaseVal:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0b0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 131
    const v0, 0x7f0b0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 133
    const v0, 0x7f0b00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorKneemultiVal:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0b00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 135
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 137
    const v0, 0x7f0b010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorMaxattackVal:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0b010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 139
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 141
    const v0, 0x7f0b0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorMaxreleaseVal:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0b0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 143
    const v0, 0x7f0b0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 145
    const v0, 0x7f0b0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorCrestVal:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0b0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorCrest:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 147
    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorCrest:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 149
    const v0, 0x7f0b011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorAdaptVal:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0b011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 151
    const v0, 0x7f0b011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 153
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorNoclipenableEnable:Landroid/widget/CheckBox;

    .line 155
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 156
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 157
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 159
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/s;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/s;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 177
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRatio:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 178
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRatio:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 179
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRatio:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 181
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRatio:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/aa;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/aa;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 199
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutokneeEnable:Landroid/widget/CheckBox;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ab;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ab;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 228
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 229
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKnee:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 231
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ac;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ac;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 249
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ad;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ad;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 272
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 273
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 275
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ae;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ae;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 293
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

    new-instance v1, Lcom/audlabs/vipereffect/screen/af;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/af;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 322
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 323
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 325
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ag;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ag;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 343
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ah;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ah;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 372
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 373
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 375
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/t;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/t;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 394
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 395
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 396
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 398
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/u;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/u;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 416
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 417
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 418
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 420
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/v;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/v;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 438
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 439
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 440
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 442
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/w;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/w;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 460
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorCrest:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 461
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorCrest:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 462
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorCrest:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 464
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorCrest:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/x;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/x;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 482
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 483
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 484
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 486
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/y;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/y;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 504
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorNoclipenableEnable:Landroid/widget/CheckBox;

    new-instance v1, Lcom/audlabs/vipereffect/screen/z;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/z;-><init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    return-void
.end method

.method private show01(F)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/high16 v4, -0x3d900000    # -60.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c7

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show02(F)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 665
    float-to-double v0, p1

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 666
    const-string v0, "\u221e:1"

    .line 668
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    sub-double v2, v4, v2

    div-double v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private show03(F)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c7

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show04(F)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c7

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show05(F)Ljava/lang/String;
    .locals 6

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const v2, 0x38d1b717    # 1.0E-4f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, p1, v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->param2log(FFF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c8

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show06(F)Ljava/lang/String;
    .locals 6

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const v2, 0x3ba3d70a    # 0.005f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->param2log(FFF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c8

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show07(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, p1, v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->param2lin(FFF)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show08(F)Ljava/lang/String;
    .locals 6

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const v2, 0x38d1b717    # 1.0E-4f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, p1, v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->param2log(FFF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c8

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show09(F)Ljava/lang/String;
    .locals 6

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const v2, 0x3ba3d70a    # 0.005f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->param2log(FFF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c8

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show10(F)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c7

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show11(F)Ljava/lang/String;
    .locals 6

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mDf:Ljava/text/DecimalFormat;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, p1, v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->param2log(FFF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c01c8

    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const v9, 0x7f080068

    const v8, 0x7f08000d

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/4 v4, 0x1

    .line 520
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_0

    const-string v0, "vipereffect.headphonefx.fetcompressor.threshold"

    .line 521
    :goto_0
    const-string v2, "100"

    .line 520
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 522
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorThresholdVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show01(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 524
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorThreshold:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 526
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_1

    const-string v0, "vipereffect.headphonefx.fetcompressor.ratio"

    .line 527
    :goto_1
    const-string v2, "100"

    .line 526
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorRatioVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show02(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRatio:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 530
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRatio:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 532
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_2

    const-string v0, "vipereffect.headphonefx.fetcompressor.knee"

    .line 533
    :goto_2
    const-string v2, "0"

    .line 532
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 534
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorKneeVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show03(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKnee:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 536
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 538
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_3

    const-string v0, "vipereffect.headphonefx.fetcompressor.gain"

    .line 539
    :goto_3
    const-string v2, "0"

    .line 538
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorGainVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show04(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 542
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 544
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_4

    const-string v0, "vipereffect.headphonefx.fetcompressor.attack"

    .line 545
    :goto_4
    const-string v2, "20"

    .line 544
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorAttackVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show05(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 548
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 550
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_5

    const-string v0, "vipereffect.headphonefx.fetcompressor.release"

    .line 551
    :goto_5
    const-string v2, "50"

    .line 550
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorReleaseVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show06(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 554
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 556
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_6

    const-string v0, "vipereffect.headphonefx.fetcompressor.kneemulti"

    .line 557
    :goto_6
    const-string v2, "0"

    .line 556
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorKneemultiVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show07(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 560
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 562
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_7

    const-string v0, "vipereffect.headphonefx.fetcompressor.maxattack"

    .line 563
    :goto_7
    const-string v2, "80"

    .line 562
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 564
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorMaxattackVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show08(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 566
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 568
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_8

    const-string v0, "vipereffect.headphonefx.fetcompressor.maxrelease"

    .line 569
    :goto_8
    const-string v2, "100"

    .line 568
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorMaxreleaseVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show09(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 572
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 574
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_9

    const-string v0, "vipereffect.headphonefx.fetcompressor.crest"

    .line 575
    :goto_9
    const-string v2, "20"

    .line 574
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 576
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorCrestVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show10(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorCrest:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 578
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorCrest:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 580
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_a

    const-string v0, "vipereffect.headphonefx.fetcompressor.adapt"

    .line 581
    :goto_a
    const-string v2, "50"

    .line 580
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 582
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorAdaptVal:Landroid/widget/TextView;

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->show11(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 584
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAdapt:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 586
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_b

    const-string v0, "vipereffect.headphonefx.fetcompressor.autoknee"

    :goto_b
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 588
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutokneeEnable:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 589
    if-eqz v0, :cond_c

    .line 590
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 591
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKnee:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 593
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 594
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 602
    :goto_c
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_d

    const-string v0, "vipereffect.headphonefx.fetcompressor.autogain"

    :goto_d
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 604
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 605
    if-eqz v0, :cond_e

    .line 606
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 607
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 612
    :goto_e
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_f

    const-string v0, "vipereffect.headphonefx.fetcompressor.autoattack"

    :goto_f
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 615
    if-eqz v0, :cond_10

    .line 616
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 617
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 619
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 620
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 628
    :goto_10
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_11

    const-string v0, "vipereffect.headphonefx.fetcompressor.autorelease"

    :goto_11
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 631
    if-eqz v0, :cond_12

    .line 632
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 633
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 635
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 636
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 644
    :goto_12
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    if-eqz v0, :cond_13

    const-string v0, "vipereffect.headphonefx.fetcompressor.noclipenable"

    :goto_13
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorNoclipenableEnable:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 647
    return-void

    .line 521
    :cond_0
    const-string v0, "vipereffect.speakerfx.fetcompressor.threshold"

    goto/16 :goto_0

    .line 527
    :cond_1
    const-string v0, "vipereffect.speakerfx.fetcompressor.ratio"

    goto/16 :goto_1

    .line 533
    :cond_2
    const-string v0, "vipereffect.speakerfx.fetcompressor.knee"

    goto/16 :goto_2

    .line 539
    :cond_3
    const-string v0, "vipereffect.speakerfx.fetcompressor.gain"

    goto/16 :goto_3

    .line 545
    :cond_4
    const-string v0, "vipereffect.speakerfx.fetcompressor.attack"

    goto/16 :goto_4

    .line 551
    :cond_5
    const-string v0, "vipereffect.speakerfx.fetcompressor.release"

    goto/16 :goto_5

    .line 557
    :cond_6
    const-string v0, "vipereffect.speakerfx.fetcompressor.kneemulti"

    goto/16 :goto_6

    .line 563
    :cond_7
    const-string v0, "vipereffect.speakerfx.fetcompressor.maxattack"

    goto/16 :goto_7

    .line 569
    :cond_8
    const-string v0, "vipereffect.speakerfx.fetcompressor.maxrelease"

    goto/16 :goto_8

    .line 575
    :cond_9
    const-string v0, "vipereffect.speakerfx.fetcompressor.crest"

    goto/16 :goto_9

    .line 581
    :cond_a
    const-string v0, "vipereffect.speakerfx.fetcompressor.adapt"

    goto/16 :goto_a

    .line 587
    :cond_b
    const-string v0, "vipereffect.speakerfx.fetcompressor.autoknee"

    goto/16 :goto_b

    .line 596
    :cond_c
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKnee:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 597
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKnee:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 599
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 600
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorKneemulti:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto/16 :goto_c

    .line 603
    :cond_d
    const-string v0, "vipereffect.speakerfx.fetcompressor.autogain"

    goto/16 :goto_d

    .line 609
    :cond_e
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 610
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto/16 :goto_e

    .line 613
    :cond_f
    const-string v0, "vipereffect.speakerfx.fetcompressor.autoattack"

    goto/16 :goto_f

    .line 622
    :cond_10
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 623
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 625
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 626
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto/16 :goto_10

    .line 629
    :cond_11
    const-string v0, "vipereffect.speakerfx.fetcompressor.autorelease"

    goto/16 :goto_11

    .line 638
    :cond_12
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 639
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 641
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 642
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto/16 :goto_12

    .line 645
    :cond_13
    const-string v0, "vipereffect.speakerfx.fetcompressor.noclipenable"

    goto/16 :goto_13
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/audlabs/vipereffect/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headphonefx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->isHeadphonefx:Z

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f040063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->setUpUi(Landroid/view/View;)V

    .line 100
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->updateUi()V

    .line 101
    return-object v0
.end method
