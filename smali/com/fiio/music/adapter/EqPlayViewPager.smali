.class public Lcom/fiio/music/adapter/EqPlayViewPager;
.super Landroid/support/v4/view/PagerAdapter;
.source "EqPlayViewPager.java"


# instance fields
.field private datalist:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 15
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 16
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 33
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setdata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fiio/music/adapter/EqPlayViewPager;->datalist:Ljava/util/List;

    .line 39
    return-void
.end method
