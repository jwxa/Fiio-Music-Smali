.class final Lcom/fiio/music/util/dslv/d;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/dslv/d;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    .line 554
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/fiio/music/util/dslv/d;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->d(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/fiio/music/util/dslv/d;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->a()V

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/d;->a()V

    .line 564
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/d;->a()V

    .line 569
    return-void
.end method
