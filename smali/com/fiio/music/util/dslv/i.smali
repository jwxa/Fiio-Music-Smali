.class final Lcom/fiio/music/util/dslv/i;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/DragSortListView;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I

.field private f:F

.field private g:J

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 1

    .prologue
    .line 2837
    iput-object p1, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    .line 2838
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 2841
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    if-nez v0, :cond_0

    .line 2843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->b:Z

    .line 2844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    .line 2845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/util/dslv/i;->g:J

    .line 2846
    iget-wide v0, p0, Lcom/fiio/music/util/dslv/i;->g:J

    iput-wide v0, p0, Lcom/fiio/music/util/dslv/i;->c:J

    .line 2847
    iput p1, p0, Lcom/fiio/music/util/dslv/i;->h:I

    .line 2848
    iget-object v0, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/util/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2850
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2830
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2834
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/util/dslv/i;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/util/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    .line 2856
    return-void
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2865
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/i;->b:Z

    if-eqz v0, :cond_0

    .line 2866
    iput-boolean v10, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    .line 2951
    :goto_0
    return-void

    .line 2872
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2873
    iget-object v0, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2874
    iget-object v2, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 2875
    iget-object v2, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2876
    iget-object v4, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2878
    iget-object v5, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v5}, Lcom/fiio/music/util/dslv/DragSortListView;->f(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->s(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v7}, Lcom/fiio/music/util/dslv/DragSortListView;->c(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2879
    iget-object v6, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->f(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v7}, Lcom/fiio/music/util/dslv/DragSortListView;->s(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v8}, Lcom/fiio/music/util/dslv/DragSortListView;->c(Lcom/fiio/music/util/dslv/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2881
    iget v7, p0, Lcom/fiio/music/util/dslv/i;->h:I

    if-nez v7, :cond_4

    .line 2882
    iget-object v3, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v3, v10}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2884
    if-nez v3, :cond_1

    .line 2885
    iput-boolean v10, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    goto :goto_0

    .line 2888
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2889
    iput-boolean v10, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    goto :goto_0

    .line 2893
    :cond_2
    iget-object v3, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v3}, Lcom/fiio/music/util/dslv/DragSortListView;->t(Lcom/fiio/music/util/dslv/DragSortListView;)Lcom/fiio/music/util/dslv/h;

    move-result-object v3

    iget-object v5, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v5}, Lcom/fiio/music/util/dslv/DragSortListView;->u(Lcom/fiio/music/util/dslv/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 2894
    iget-object v6, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->v(Lcom/fiio/music/util/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/fiio/music/util/dslv/i;->c:J

    .line 2893
    invoke-interface {v3, v5}, Lcom/fiio/music/util/dslv/h;->a(F)F

    move-result v3

    iput v3, p0, Lcom/fiio/music/util/dslv/i;->i:F

    .line 2910
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fiio/music/util/dslv/i;->d:J

    .line 2911
    iget-wide v6, p0, Lcom/fiio/music/util/dslv/i;->d:J

    iget-wide v8, p0, Lcom/fiio/music/util/dslv/i;->c:J

    sub-long/2addr v6, v8

    long-to-float v3, v6

    iput v3, p0, Lcom/fiio/music/util/dslv/i;->f:F

    .line 2917
    iget v3, p0, Lcom/fiio/music/util/dslv/i;->i:F

    iget v5, p0, Lcom/fiio/music/util/dslv/i;->f:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/fiio/music/util/dslv/i;->e:I

    .line 2920
    iget v3, p0, Lcom/fiio/music/util/dslv/i;->e:I

    if-ltz v3, :cond_7

    .line 2921
    iget v0, p0, Lcom/fiio/music/util/dslv/i;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/dslv/i;->e:I

    move v0, v1

    .line 2928
    :goto_2
    iget-object v3, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2929
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/fiio/music/util/dslv/i;->e:I

    add-int/2addr v1, v4

    .line 2931
    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    .line 2936
    :cond_3
    iget-object v4, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Lcom/fiio/music/util/dslv/DragSortListView;Z)V

    .line 2938
    iget-object v4, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2939
    iget-object v1, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->layoutChildren()V

    .line 2940
    iget-object v1, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/fiio/music/util/dslv/DragSortListView;->invalidate()V

    .line 2942
    iget-object v1, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v1, v10}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Lcom/fiio/music/util/dslv/DragSortListView;Z)V

    .line 2945
    iget-object v1, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v1, v0, v3}, Lcom/fiio/music/util/dslv/DragSortListView;->c(Lcom/fiio/music/util/dslv/DragSortListView;ILandroid/view/View;)V

    .line 2947
    iget-wide v0, p0, Lcom/fiio/music/util/dslv/i;->d:J

    iput-wide v0, p0, Lcom/fiio/music/util/dslv/i;->c:J

    .line 2950
    iget-object v0, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/util/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2896
    :cond_4
    iget-object v6, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2897
    if-nez v6, :cond_5

    .line 2898
    iput-boolean v10, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    goto/16 :goto_0

    .line 2901
    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    .line 2902
    iput-boolean v10, p0, Lcom/fiio/music/util/dslv/i;->j:Z

    goto/16 :goto_0

    .line 2906
    :cond_6
    iget-object v3, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v3}, Lcom/fiio/music/util/dslv/DragSortListView;->t(Lcom/fiio/music/util/dslv/DragSortListView;)Lcom/fiio/music/util/dslv/h;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->w(Lcom/fiio/music/util/dslv/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 2907
    iget-object v6, p0, Lcom/fiio/music/util/dslv/i;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v6}, Lcom/fiio/music/util/dslv/DragSortListView;->x(Lcom/fiio/music/util/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/fiio/music/util/dslv/i;->c:J

    .line 2906
    invoke-interface {v3, v5}, Lcom/fiio/music/util/dslv/h;->a(F)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/fiio/music/util/dslv/i;->i:F

    goto/16 :goto_1

    .line 2924
    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/fiio/music/util/dslv/i;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/fiio/music/util/dslv/i;->e:I

    goto/16 :goto_2
.end method
