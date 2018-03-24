.class public Lcom/fiio/music/fragment/DlnaFirstFragment;
.super Landroid/support/v4/app/Fragment;
.source "DlnaFirstFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private changestylesp:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mDevAdapter:Lcom/fiio/music/fragment/c;

.field private mDevList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private mDevLv:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/DlnaFirstFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevList:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/DlnaFirstFragment;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/DlnaFirstFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/DlnaFirstFragment;)Lcom/fiio/music/fragment/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevAdapter:Lcom/fiio/music/fragment/c;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/DlnaFirstFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    const v0, 0x7f0b009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevLv:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/d;

    sput-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    .line 86
    :cond_0
    new-instance v0, Lcom/fiio/music/fragment/c;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/fiio/music/fragment/c;-><init>(Lcom/fiio/music/fragment/DlnaFirstFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevAdapter:Lcom/fiio/music/fragment/c;

    .line 87
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevAdapter:Lcom/fiio/music/fragment/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevLv:Landroid/widget/ListView;

    new-instance v1, Lcom/fiio/music/fragment/a;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/a;-><init>(Lcom/fiio/music/fragment/DlnaFirstFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    const v0, 0x7f0b0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    new-instance v1, Lcom/fiio/music/fragment/b;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/b;-><init>(Lcom/fiio/music/fragment/DlnaFirstFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getDevAdapter()Lcom/fiio/music/fragment/c;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevAdapter:Lcom/fiio/music/fragment/c;

    return-object v0
.end method

.method public getDevListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevLv:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mContext:Landroid/content/Context;

    const-string v1, "changestyle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->changestylesp:Landroid/content/SharedPreferences;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->changestylesp:Landroid/content/SharedPreferences;

    const-string v2, "styleChange"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->UI_IS_CHANGE:Z

    .line 61
    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    .line 63
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 64
    const v0, 0x7f040034

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;->init(Landroid/view/View;)V

    .line 79
    return-object v0

    .line 65
    :cond_1
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 66
    const v0, 0x7f040035

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 68
    const v0, 0x7f040036

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 70
    const v0, 0x7f040037

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 239
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 234
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 244
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 202
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 210
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 229
    return-void
.end method

.method public updateDevAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFirstFragment;->mDevAdapter:Lcom/fiio/music/fragment/c;

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/c;->a(Ljava/util/List;)V

    .line 119
    return-void
.end method
