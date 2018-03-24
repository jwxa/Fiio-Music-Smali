.class final Lcom/fiio/music/util/dslv/p;
.super Lcom/fiio/music/util/dslv/s;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/DragSortListView;

.field private d:F

.field private e:F


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->b(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/util/dslv/p;->d:F

    .line 1217
    iget-object v0, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->c(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/util/dslv/p;->e:F

    .line 1218
    return-void
.end method

.method public final a(F)V
    .locals 4

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->d(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/p;->d()V

    .line 1230
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    iget v1, p0, Lcom/fiio/music/util/dslv/p;->e:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 1226
    iget v3, p0, Lcom/fiio/music/util/dslv/p;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1225
    invoke-static {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Lcom/fiio/music/util/dslv/DragSortListView;I)V

    .line 1227
    iget-object v0, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->f(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->b(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1228
    iget-object v0, p0, Lcom/fiio/music/util/dslv/p;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->g(Lcom/fiio/music/util/dslv/DragSortListView;)V

    goto :goto_0
.end method
