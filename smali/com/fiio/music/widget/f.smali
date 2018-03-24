.class final Lcom/fiio/music/widget/f;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/DragGridView;

.field private final synthetic b:Lcom/fiio/music/adapter/DragAdapter;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/DragGridView;Lcom/fiio/music/adapter/DragAdapter;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/f;->a:Lcom/fiio/music/widget/DragGridView;

    iput-object p2, p0, Lcom/fiio/music/widget/f;->b:Lcom/fiio/music/adapter/DragAdapter;

    iput p3, p0, Lcom/fiio/music/widget/f;->c:I

    iput p4, p0, Lcom/fiio/music/widget/f;->d:I

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fiio/music/widget/f;->b:Lcom/fiio/music/adapter/DragAdapter;

    iget v1, p0, Lcom/fiio/music/widget/f;->c:I

    .line 443
    iget v2, p0, Lcom/fiio/music/widget/f;->d:I

    .line 442
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/DragAdapter;->exchange(II)V

    .line 444
    iget-object v0, p0, Lcom/fiio/music/widget/f;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->b(Lcom/fiio/music/widget/DragGridView;)V

    .line 445
    const-string v0, "log"

    .line 446
    const-string v1, "isMoving=false===================================="

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 432
    return-void
.end method
