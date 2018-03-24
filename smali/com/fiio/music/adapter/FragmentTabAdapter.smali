.class public Lcom/fiio/music/adapter/FragmentTabAdapter;
.super Ljava/lang/Object;
.source "FragmentTabAdapter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private currentTab:I

.field private fragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field private fragmentContentId:I

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCurTabSharedPreferences:Landroid/content/SharedPreferences;

.field private onRgsExtraCheckedChangedListener:Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;

.field private rgs:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;ILandroid/widget/RadioGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;I",
            "Landroid/widget/RadioGroup;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragments:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->rgs:Landroid/widget/RadioGroup;

    .line 35
    iput-object p1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 36
    iput p3, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragmentContentId:I

    .line 37
    const-string v0, "show_cur_tab"

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->mShowCurTabSharedPreferences:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->mShowCurTabSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHOW_CUR_TAB"

    invoke-virtual {p4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->mShowCurTabSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SHOW_CUR_FRAG"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 42
    invoke-virtual {p4, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 43
    iput v1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->currentTab:I

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 45
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    invoke-virtual {p4, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 48
    return-void
.end method

.method private obtainFragmentTransaction(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 112
    iget v1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->currentTab:I

    if-le p1, v1, :cond_0

    .line 113
    const v1, 0x7f05001f

    const v2, 0x7f050020

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const v1, 0x7f050021

    const v2, 0x7f050022

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragments:Ljava/util/List;

    iget v1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->currentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->currentTab:I

    return v0
.end method

.method public getOnRgsExtraCheckedChangedListener()Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->onRgsExtraCheckedChangedListener:Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;

    return-object v0
.end method

.method public getRadioGroup()Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->rgs:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->rgs:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 79
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->rgs:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 55
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 56
    invoke-direct {p0, v1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->obtainFragmentTransaction(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 60
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 68
    :goto_1
    invoke-virtual {p0, v1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->showTab(I)V

    .line 69
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 72
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->onRgsExtraCheckedChangedListener:Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->onRgsExtraCheckedChangedListener:Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;->OnRgsExtraCheckedChanged(Landroid/widget/RadioGroup;II)V

    .line 52
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_2
    iget v3, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragmentContentId:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public setOnRgsExtraCheckedChangedListener(Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->onRgsExtraCheckedChangedListener:Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;

    .line 135
    return-void
.end method

.method public showTab(I)V
    .locals 5

    .prologue
    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 101
    iput p1, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->currentTab:I

    .line 102
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 88
    invoke-direct {p0, p1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->obtainFragmentTransaction(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 90
    if-ne p1, v1, :cond_1

    .line 91
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->mShowCurTabSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    const-string v3, "SHOW_CUR_TAB"

    iget-object v4, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->rgs:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v3, "SHOW_CUR_FRAG"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public tapPerformClick(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fiio/music/adapter/FragmentTabAdapter;->rgs:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 152
    return-void
.end method
