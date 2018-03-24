.class final Lcom/fiio/music/util/dslv/f;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/e;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/dslv/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/dslv/f;->a:Lcom/fiio/music/util/dslv/e;

    .line 650
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/fiio/music/util/dslv/f;->a:Lcom/fiio/music/util/dslv/e;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/e;->notifyDataSetChanged()V

    .line 653
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/fiio/music/util/dslv/f;->a:Lcom/fiio/music/util/dslv/e;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/e;->notifyDataSetInvalidated()V

    .line 657
    return-void
.end method
