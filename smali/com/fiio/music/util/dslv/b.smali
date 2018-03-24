.class final Lcom/fiio/music/util/dslv/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/a;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/dslv/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    .line 445
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/a;->a(Lcom/fiio/music/util/dslv/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/a;->b(Lcom/fiio/music/util/dslv/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/a;->c(Lcom/fiio/music/util/dslv/a;)Lcom/fiio/music/util/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getWidth()I

    move-result v0

    .line 452
    div-int/lit8 v0, v0, 0x5

    .line 453
    iget-object v1, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/a;->d(Lcom/fiio/music/util/dslv/a;)F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/a;->e(Lcom/fiio/music/util/dslv/a;)I

    move-result v1

    neg-int v0, v0

    if-le v1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/a;->c(Lcom/fiio/music/util/dslv/a;)Lcom/fiio/music/util/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/util/dslv/DragSortListView;->a(F)Z

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/a;->f(Lcom/fiio/music/util/dslv/a;)V

    .line 464
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/a;->d(Lcom/fiio/music/util/dslv/a;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/a;->e(Lcom/fiio/music/util/dslv/a;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/fiio/music/util/dslv/b;->a:Lcom/fiio/music/util/dslv/a;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/a;->c(Lcom/fiio/music/util/dslv/a;)Lcom/fiio/music/util/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/util/dslv/DragSortListView;->a(F)Z

    goto :goto_0
.end method
