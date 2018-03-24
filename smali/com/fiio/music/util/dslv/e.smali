.class final Lcom/fiio/music/util/dslv/e;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/DragSortListView;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 646
    iput-object p1, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    .line 647
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    .line 650
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/fiio/music/util/dslv/f;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/dslv/f;-><init>(Lcom/fiio/music/util/dslv/e;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 659
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 718
    if-eqz p2, :cond_2

    .line 719
    check-cast p2, Lcom/fiio/music/util/dslv/DragSortItemView;

    .line 720
    invoke-virtual {p2, v3}, Lcom/fiio/music/util/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 723
    if-eq v1, v0, :cond_1

    .line 726
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p2, v3}, Lcom/fiio/music/util/dslv/DragSortItemView;->removeViewAt(I)V

    .line 729
    :cond_0
    invoke-virtual {p2, v1}, Lcom/fiio/music/util/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    .line 746
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Lcom/fiio/music/util/dslv/DragSortListView;ILandroid/view/View;)V

    .line 748
    return-object p2

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 733
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 734
    new-instance v0, Lcom/fiio/music/util/dslv/DragSortItemViewCheckable;

    iget-object v2, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/fiio/music/util/dslv/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 738
    :goto_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    .line 739
    const/4 v3, -0x1

    .line 740
    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 738
    invoke-virtual {v0, v2}, Lcom/fiio/music/util/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    move-object p2, v0

    goto :goto_0

    .line 736
    :cond_3
    new-instance v0, Lcom/fiio/music/util/dslv/DragSortItemView;

    iget-object v2, p0, Lcom/fiio/music/util/dslv/e;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/fiio/music/util/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/fiio/music/util/dslv/e;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
