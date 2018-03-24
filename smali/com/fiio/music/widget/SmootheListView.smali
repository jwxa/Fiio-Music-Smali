.class public Lcom/fiio/music/widget/SmootheListView;
.super Landroid/widget/ListView;
.source "SmootheListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public smoothScrollToPositionFromTop(III)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/SmootheListView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_2
    new-instance v0, Lcom/fiio/music/widget/m;

    invoke-direct {v0, p0, p1}, Lcom/fiio/music/widget/m;-><init>(Lcom/fiio/music/widget/SmootheListView;I)V

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/SmootheListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fiio/music/widget/o;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fiio/music/widget/o;-><init>(Lcom/fiio/music/widget/SmootheListView;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
