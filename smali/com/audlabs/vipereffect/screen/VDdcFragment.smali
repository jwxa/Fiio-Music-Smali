.class public Lcom/audlabs/vipereffect/screen/VDdcFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "VDdcFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private clickPosition:I

.field private entriesArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field etSearch:Landroid/widget/EditText;

.field private mDDCMMData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mRecyclerView:Landroid/widget/ListView;

.field private mVDdcAdapter:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

.field private szDeviceID:Ljava/lang/String;

.field private valuesArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->clickPosition:I

    .line 51
    new-instance v0, Lcom/audlabs/vipereffect/screen/as;

    invoke-direct {v0, p0}, Lcom/audlabs/vipereffect/screen/as;-><init>(Lcom/audlabs/vipereffect/screen/VDdcFragment;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mVDdcAdapter:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/VDdcFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->clickPosition:I

    return v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->entriesArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/VDdcFragment;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->clickPosition:I

    return-void
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->valuesArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/audlabs/vipereffect/screen/VDdcFragment;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mDDCMMData:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$7(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mDDCMMData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->szDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private searchDdc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/audlabs/vipereffect/screen/at;

    invoke-direct {v0, p0, p1}, Lcom/audlabs/vipereffect/screen/at;-><init>(Lcom/audlabs/vipereffect/screen/VDdcFragment;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/at;->start()V

    .line 149
    return-void
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f0b017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->etSearch:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f0b017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mRecyclerView:Landroid/widget/ListView;

    .line 99
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mRecyclerView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mVDdcAdapter:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/audlabs/vipereffect/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->entriesArray:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->valuesArray:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;-><init>(Lcom/audlabs/vipereffect/screen/VDdcFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mVDdcAdapter:Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    .line 72
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.viperddc.device"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->szDeviceID:Ljava/lang/String;

    .line 74
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->searchDdc(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "viper4android.settings.viperddc.notice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "viper4android.settings.viperddc.notice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    const-string v1, "ViPERFX"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    const v2, 0x7f0c012d

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f040073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->setUpUi(Landroid/view/View;)V

    .line 92
    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->searchDdc(Ljava/lang/String;)V

    .line 159
    return-void
.end method
