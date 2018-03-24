.class final Lcom/fiio/music/widget/i;
.super Ljava/lang/Object;
.source "LockScreenView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/LockScreenView;


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/LockScreenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/i;->a:Lcom/fiio/music/widget/LockScreenView;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fiio/music/widget/i;->a:Lcom/fiio/music/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/LockScreenView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fiio/music/widget/i;->a:Lcom/fiio/music/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/LockScreenView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/widget/i;->a:Lcom/fiio/music/widget/LockScreenView;

    invoke-static {v1}, Lcom/fiio/music/widget/LockScreenView;->a(Lcom/fiio/music/widget/LockScreenView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fiio/music/widget/i;->a:Lcom/fiio/music/widget/LockScreenView;

    invoke-static {v2}, Lcom/fiio/music/widget/LockScreenView;->b(Lcom/fiio/music/widget/LockScreenView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/fiio/music/widget/i;->a:Lcom/fiio/music/widget/LockScreenView;

    invoke-static {v2}, Lcom/fiio/music/widget/LockScreenView;->a(Lcom/fiio/music/widget/LockScreenView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    :cond_0
    return-void
.end method
