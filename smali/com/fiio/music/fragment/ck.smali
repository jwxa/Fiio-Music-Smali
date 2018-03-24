.class final Lcom/fiio/music/fragment/ck;
.super Ljava/lang/Object;
.source "TabEFm.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabEFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabEFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ck;->a:Lcom/fiio/music/fragment/TabEFm;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 701
    if-nez p2, :cond_0

    .line 702
    iget-object v0, p0, Lcom/fiio/music/fragment/ck;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/fiio/music/fragment/ck;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ck;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$10(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 704
    iget-object v0, p0, Lcom/fiio/music/fragment/ck;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ck;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$11(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 707
    :cond_0
    return-void
.end method
