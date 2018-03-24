.class final Lcom/fiio/music/util/dslv/l;
.super Lcom/fiio/music/util/dslv/s;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    .line 1244
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/util/dslv/s;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;I)V

    .line 1245
    return-void
.end method

.method private e()I
    .locals 4

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1258
    iget-object v1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->j(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1259
    iget-object v2, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    iget v3, p0, Lcom/fiio/music/util/dslv/l;->d:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1260
    const/4 v0, -0x1

    .line 1261
    if-eqz v2, :cond_2

    .line 1262
    iget v0, p0, Lcom/fiio/music/util/dslv/l;->d:I

    iget v3, p0, Lcom/fiio/music/util/dslv/l;->e:I

    if-ne v0, v3, :cond_0

    .line 1263
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1276
    :goto_0
    return v0

    .line 1264
    :cond_0
    iget v0, p0, Lcom/fiio/music/util/dslv/l;->d:I

    iget v3, p0, Lcom/fiio/music/util/dslv/l;->e:I

    if-ge v0, v3, :cond_1

    .line 1266
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1267
    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->k(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1271
    goto :goto_0

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/l;->d()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->h(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/dslv/l;->d:I

    .line 1250
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->i(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/dslv/l;->e:I

    .line 1251
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->b(Lcom/fiio/music/util/dslv/DragSortListView;I)V

    .line 1252
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/fiio/music/util/dslv/l;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/util/dslv/l;->f:F

    .line 1253
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/util/dslv/l;->g:F

    .line 1254
    return-void
.end method

.method public final a(F)V
    .locals 5

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/l;->e()I

    move-result v0

    .line 1282
    iget-object v1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1283
    iget-object v2, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1284
    iget-object v3, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v3}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1285
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    .line 1286
    iget v4, p0, Lcom/fiio/music/util/dslv/l;->f:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/fiio/music/util/dslv/l;->g:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 1287
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/util/dslv/l;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1288
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/fiio/music/util/dslv/l;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1289
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->g(Lcom/fiio/music/util/dslv/DragSortListView;)V

    .line 1291
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/fiio/music/util/dslv/l;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->l(Lcom/fiio/music/util/dslv/DragSortListView;)V

    .line 1296
    return-void
.end method
