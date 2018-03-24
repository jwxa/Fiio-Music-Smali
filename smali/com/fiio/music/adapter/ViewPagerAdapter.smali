.class public Lcom/fiio/music/adapter/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# static fields
.field private static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "first_pref"


# instance fields
.field private activity:Landroid/app/Activity;

.field private guideMode:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    .line 31
    iput p3, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->guideMode:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/fiio/music/adapter/ViewPagerAdapter;->setGuided()V

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/fiio/music/adapter/ViewPagerAdapter;->goHome()V

    return-void
.end method

.method private goHome()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->guideMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    const-class v3, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v2, "changeStyleboolean"

    const-string v3, "styleChange"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private setGuided()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    .line 103
    const-string v1, "first_pref"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    const-string v1, "isFirstIn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 55
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 58
    const v0, 0x7f0b00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 59
    new-instance v1, Lcom/fiio/music/adapter/as;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/as;-><init>(Lcom/fiio/music/adapter/ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0b00ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 71
    new-instance v1, Lcom/fiio/music/adapter/at;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/at;-><init>(Lcom/fiio/music/adapter/ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 111
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
