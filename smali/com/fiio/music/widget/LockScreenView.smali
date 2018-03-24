.class public Lcom/fiio/music/widget/LockScreenView;
.super Landroid/view/View;
.source "LockScreenView.java"


# instance fields
.field a:F

.field private b:Landroid/view/View;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/LockScreenView;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fiio/music/widget/LockScreenView;->d:I

    return v0
.end method

.method private a(FZ)V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/fiio/music/widget/i;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/i;-><init>(Lcom/fiio/music/widget/LockScreenView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 105
    if-eqz p2, :cond_0

    .line 106
    new-instance v1, Lcom/fiio/music/widget/j;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/j;-><init>(Lcom/fiio/music/widget/LockScreenView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/fiio/music/widget/LockScreenView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/widget/LockScreenView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fiio/music/widget/LockScreenView;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    .line 43
    iput p2, p0, Lcom/fiio/music/widget/LockScreenView;->d:I

    .line 44
    iput-object p3, p0, Lcom/fiio/music/widget/LockScreenView;->c:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 56
    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return v6

    .line 58
    :pswitch_0
    iput v2, p0, Lcom/fiio/music/widget/LockScreenView;->a:F

    .line 59
    invoke-virtual {p0}, Lcom/fiio/music/widget/LockScreenView;->onAnimationEnd()V

    .line 61
    :pswitch_1
    iget v1, p0, Lcom/fiio/music/widget/LockScreenView;->a:F

    sub-float v1, v2, v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/fiio/music/widget/LockScreenView;->d:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fiio/music/widget/LockScreenView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/widget/LockScreenView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float v2, v0, v2

    div-float v0, v2, v0

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget v0, p0, Lcom/fiio/music/widget/LockScreenView;->a:F

    sub-float v0, v2, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/fiio/music/widget/LockScreenView;->d:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/fiio/music/widget/LockScreenView;->d:I

    iget-object v1, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0, v6}, Lcom/fiio/music/widget/LockScreenView;->a(FZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fiio/music/widget/LockScreenView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/widget/LockScreenView;->a(FZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
