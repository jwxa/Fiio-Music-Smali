.class public Lcom/audlabs/vipereffect/screen/ConvolverFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "ConvolverFragment.java"


# instance fields
.field private clickPosition:I

.field private kernelArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kernelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBtnConvolverKnl:Landroid/widget/Button;

.field mConvolverKnlRecyclerview:Landroid/widget/ListView;

.field mEtConvolverKnlSearch:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHiddenAction:Landroid/view/animation/TranslateAnimation;

.field mLayoutConvolverKnlMain:Landroid/widget/ScrollView;

.field mLayoutConvolverKnlSearch:Landroid/widget/LinearLayout;

.field mPbvConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field private mShowAction:Landroid/view/animation/TranslateAnimation;

.field mTrbConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvConvolverCrosschannelVal:Landroid/widget/TextView;

.field private mVDdcAdapter:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

.field private szDeviceID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->clickPosition:I

    .line 68
    new-instance v0, Lcom/audlabs/vipereffect/screen/d;

    invoke-direct {v0, p0}, Lcom/audlabs/vipereffect/screen/d;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mVDdcAdapter:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->kernelArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->szDeviceID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->szDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->clickPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/ConvolverFragment;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->clickPosition:I

    return-void
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mHiddenAction:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$6(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->searchConvolverKnl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->kernelList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->kernelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mShowAction:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method private searchConvolverKnl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/audlabs/vipereffect/screen/h;

    invoke-direct {v0, p0, p1}, Lcom/audlabs/vipereffect/screen/h;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/h;->start()V

    .line 238
    return-void
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    const v0, 0x7f0b0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlMain:Landroid/widget/ScrollView;

    .line 109
    const v0, 0x7f0b0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mBtnConvolverKnl:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0b0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTvConvolverCrosschannelVal:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0b0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTrbConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 113
    const v0, 0x7f0b012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPbvConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 115
    const v0, 0x7f0b0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlSearch:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f0b0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mEtConvolverKnlSearch:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mConvolverKnlRecyclerview:Landroid/widget/ListView;

    .line 120
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mConvolverKnlRecyclerview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mVDdcAdapter:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mEtConvolverKnlSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/audlabs/vipereffect/screen/e;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/e;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mBtnConvolverKnl:Landroid/widget/Button;

    new-instance v1, Lcom/audlabs/vipereffect/screen/f;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/f;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTrbConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 181
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTrbConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 182
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPbvConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 184
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTrbConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/g;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/g;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 197
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.convolver.kernel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mBtnConvolverKnl:Landroid/widget/Button;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.convolver.kernel"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.convolver.crosschannel"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTvConvolverCrosschannelVal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPbvConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 206
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTrbConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 207
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/audlabs/vipereffect/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->kernelArray:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mVDdcAdapter:Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    .line 86
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 88
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 86
    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mShowAction:Landroid/view/animation/TranslateAnimation;

    .line 89
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mShowAction:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 91
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    .line 92
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 94
    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 91
    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mHiddenAction:Landroid/view/animation/TranslateAnimation;

    .line 95
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mHiddenAction:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f040064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->setUpUi(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->updateUi()V

    .line 103
    return-object v0
.end method
