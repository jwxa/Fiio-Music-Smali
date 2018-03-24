.class final Lcom/fiio/music/swipemenulistview/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeMenuLayout.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/e;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 112
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/e;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;Z)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/e;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-static {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/e;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-static {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/e;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;Z)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
