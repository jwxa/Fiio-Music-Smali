.class final Lcom/fiio/music/fragment/bl;
.super Ljava/lang/Object;
.source "TabBFm.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabBFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabBFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$4(Lcom/fiio/music/fragment/TabBFm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$29(Lcom/fiio/music/fragment/TabBFm;I)V

    .line 166
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$30(Lcom/fiio/music/fragment/TabBFm;I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$21(Lcom/fiio/music/fragment/TabBFm;I)V

    .line 172
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$22(Lcom/fiio/music/fragment/TabBFm;I)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$31(Lcom/fiio/music/fragment/TabBFm;I)V

    .line 175
    iget-object v0, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/bl;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$32(Lcom/fiio/music/fragment/TabBFm;I)V

    goto :goto_0
.end method
