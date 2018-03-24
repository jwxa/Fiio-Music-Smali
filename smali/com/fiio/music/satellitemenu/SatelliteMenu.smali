.class public Lcom/fiio/music/satellitemenu/SatelliteMenu;
.super Landroid/widget/FrameLayout;
.source "SatelliteMenu.java"


# instance fields
.field a:Lcom/fiio/music/satellitemenu/f;

.field b:Landroid/os/Handler;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/fiio/music/satellitemenu/h;

.field private g:Lcom/fiio/music/satellitemenu/g;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/fiio/music/satellitemenu/b;

.field private l:Z

.field private m:I

.field private n:I

.field private o:F

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/fiio/music/satellitemenu/a;

    invoke-direct {v0}, Lcom/fiio/music/satellitemenu/a;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->k:Lcom/fiio/music/satellitemenu/b;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 60
    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    .line 61
    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->n:I

    .line 63
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    .line 64
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 65
    const/16 v0, 0x190

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    .line 72
    iput-object v2, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a:Lcom/fiio/music/satellitemenu/f;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b:Landroid/os/Handler;

    .line 77
    invoke-direct {p0, p1, v2, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/fiio/music/satellitemenu/a;

    invoke-direct {v0}, Lcom/fiio/music/satellitemenu/a;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->k:Lcom/fiio/music/satellitemenu/b;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 60
    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    .line 61
    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->n:I

    .line 63
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    .line 64
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 65
    const/16 v0, 0x190

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a:Lcom/fiio/music/satellitemenu/f;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b:Landroid/os/Handler;

    .line 82
    invoke-direct {p0, p1, p2, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/fiio/music/satellitemenu/a;

    invoke-direct {v0}, Lcom/fiio/music/satellitemenu/a;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->k:Lcom/fiio/music/satellitemenu/b;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 60
    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    .line 61
    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->n:I

    .line 63
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    .line 64
    const/16 v0, 0xc8

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 65
    const/16 v0, 0x190

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a:Lcom/fiio/music/satellitemenu/f;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b:Landroid/os/Handler;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c9

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    sget-object v0, Lcom/fiio/music/R$styleable;->SatelliteMenu:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    const/4 v1, 0x3

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 97
    const/4 v1, 0x2

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    .line 98
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    .line 99
    const/16 v1, 0x190

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    :cond_0
    const v0, 0x7f05001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->d:Landroid/view/animation/Animation;

    .line 106
    const v0, 0x7f05001e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c:Landroid/view/animation/Animation;

    .line 108
    new-instance v0, Lcom/fiio/music/satellitemenu/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/satellitemenu/c;-><init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    .line 123
    iget-object v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    iget-object v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 126
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/fiio/music/satellitemenu/d;

    invoke-direct {v1, p0}, Lcom/fiio/music/satellitemenu/d;-><init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v0, Lcom/fiio/music/satellitemenu/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/satellitemenu/g;-><init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->g:Lcom/fiio/music/satellitemenu/g;

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/satellitemenu/SatelliteMenu;Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setonClosed(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Lcom/fiio/music/satellitemenu/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->f:Lcom/fiio/music/satellitemenu/h;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->onClick()V

    return-void
.end method

.method private e(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/satellitemenu/e;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/satellitemenu/e;-><init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    .line 161
    const-wide/16 v2, 0x3e8

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method

.method private onClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    if-nez v0, :cond_3

    .line 139
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->s:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setMainImage(I)V

    .line 140
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    :cond_0
    invoke-direct {p0, p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    .line 152
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 154
    :cond_1
    return-void

    .line 141
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    .line 142
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->f()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 145
    :cond_3
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->t:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setMainImage(I)V

    .line 146
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    .line 148
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->e()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 152
    goto :goto_1
.end method

.method private setonClosed(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p1, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a:Lcom/fiio/music/satellitemenu/f;

    const-string v1, "xxx"

    invoke-interface {v0, v1}, Lcom/fiio/music/satellitemenu/f;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->s:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setMainImage(I)V

    .line 170
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 178
    :cond_1
    return-void

    .line 172
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    .line 173
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->f()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 176
    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->removeView(Landroid/view/View;)V

    .line 197
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->k:Lcom/fiio/music/satellitemenu/b;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    invoke-interface {v3, v2, v4}, Lcom/fiio/music/satellitemenu/b;->a(IF)[F

    move-result-object v13

    .line 201
    const/4 v2, 0x0

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v12, v2

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->addView(Landroid/view/View;)V

    .line 259
    return-void

    .line 202
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/fiio/music/satellitemenu/l;

    .line 204
    aget v2, v13, v12

    .line 203
    const-wide/16 v4, 0x0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v17

    .line 207
    aget v2, v13, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 206
    mul-int/lit8 v3, v3, -0x1

    int-to-double v4, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 208
    add-int/lit8 v3, v12, 0x1

    mul-int/lit8 v3, v3, 0x46

    sub-int v18, v2, v3

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 212
    const v3, 0x7f0400c8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    .line 211
    check-cast v9, Landroid/widget/ImageView;

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 214
    const v3, 0x7f0400c8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    .line 213
    check-cast v10, Landroid/widget/ImageView;

    .line 215
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 216
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->g:Lcom/fiio/music/satellitemenu/g;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 223
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 224
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->b()I

    move-result v2

    if-lez v2, :cond_6

    .line 227
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->b()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->b()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x3c

    const-wide/16 v6, 0x3c

    cmp-long v5, v20, v6

    if-gez v5, :cond_2

    const-wide/16 v2, 0x4

    div-long v2, v20, v2

    :cond_2
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    move/from16 v0, v17

    int-to-float v3, v0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    invoke-direct {v15, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const v2, 0x7f05001c

    invoke-virtual {v15, v14, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const v3, 0x7f05001b

    invoke-virtual {v2, v14, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/content/Context;I)V

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x96

    cmp-long v3, v20, v6

    if-gtz v3, :cond_3

    const-wide/16 v4, 0x3

    div-long v4, v20, v4

    :cond_3
    sub-long v6, v20, v4

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    mul-int/lit8 v2, v12, 0x1e

    int-to-long v2, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    int-to-long v0, v2

    move-wide/from16 v22, v0

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x44340000    # 720.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const v3, 0x7f05001a

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/content/Context;I)V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0xfa

    cmp-long v6, v22, v6

    if-gtz v6, :cond_7

    const-wide/16 v4, 0x3

    div-long v4, v22, v4

    move-wide v14, v4

    :goto_2
    const-wide/16 v4, 0x190

    sub-long v6, v22, v14

    const-wide/16 v24, 0x190

    cmp-long v6, v6, v24

    if-lez v6, :cond_4

    sub-long v4, v22, v14

    :cond_4
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v3, v14, v15}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const v6, 0x7f050018

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0xa

    const-wide/16 v20, 0xa

    cmp-long v20, v22, v20

    if-gez v20, :cond_5

    const-wide/16 v6, 0xa

    div-long v6, v22, v6

    :cond_5
    invoke-virtual {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    add-long/2addr v4, v14

    sub-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v4, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    mul-int/lit8 v2, v12, 0x1e

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    invoke-virtual {v4}, Landroid/view/animation/AnimationSet;->start()V

    invoke-virtual {v4}, Landroid/view/animation/AnimationSet;->startNow()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050017

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 238
    invoke-virtual {v11, v9}, Lcom/fiio/music/satellitemenu/l;->a(Landroid/widget/ImageView;)V

    .line 239
    invoke-virtual {v11, v10}, Lcom/fiio/music/satellitemenu/l;->b(Landroid/widget/ImageView;)V

    .line 240
    invoke-virtual {v11, v4}, Lcom/fiio/music/satellitemenu/l;->a(Landroid/view/animation/Animation;)V

    .line 241
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/fiio/music/satellitemenu/l;->b(Landroid/view/animation/Animation;)V

    .line 242
    invoke-virtual {v11, v2}, Lcom/fiio/music/satellitemenu/l;->c(Landroid/view/animation/Animation;)V

    .line 243
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/fiio/music/satellitemenu/l;->a(I)V

    .line 244
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/fiio/music/satellitemenu/l;->b(I)V

    .line 247
    new-instance v3, Lcom/fiio/music/satellitemenu/i;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    invoke-direct {v3, v9, v5, v6}, Lcom/fiio/music/satellitemenu/i;-><init>(Landroid/view/View;ZLjava/util/Map;)V

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    new-instance v3, Lcom/fiio/music/satellitemenu/i;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    invoke-direct {v3, v9, v4, v5}, Lcom/fiio/music/satellitemenu/i;-><init>(Landroid/view/View;ZLjava/util/Map;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    new-instance v3, Lcom/fiio/music/satellitemenu/j;

    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->a()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/fiio/music/satellitemenu/j;-><init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;I)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->addView(Landroid/view/View;)V

    .line 252
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->addView(Landroid/view/View;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0

    .line 229
    :cond_6
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v11}, Lcom/fiio/music/satellitemenu/l;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    move-wide v14, v4

    goto/16 :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    .line 279
    iget-object v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    .line 278
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    iget-object v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 281
    invoke-virtual {p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->removeAllViews()V

    .line 282
    invoke-virtual {p0, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Ljava/util/List;)V

    .line 284
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->t:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setMainImage(I)V

    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 533
    :cond_1
    invoke-direct {p0, p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    .line 534
    return-void

    .line 532
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->e()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public getViewToItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->i:Ljava/util/Map;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 301
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    :cond_0
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    .line 303
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    iget v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->n:I

    add-int/2addr v0, v1

    .line 304
    iget v1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    .line 307
    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setMeasuredDimension(II)V

    .line 308
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 551
    check-cast p1, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;

    .line 552
    iget-boolean v0, p1, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a:Z

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    .line 553
    invoke-static {p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)F

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    .line 554
    invoke-static {p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->b(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 555
    invoke-static {p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->c(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    .line 556
    invoke-static {p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->d(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    .line 557
    invoke-static {p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->e(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    .line 559
    invoke-virtual {p1}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 560
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 539
    new-instance v1, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 540
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->l:Z

    iput-boolean v0, v1, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a:Z

    .line 541
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    invoke-static {v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;F)V

    .line 542
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    invoke-static {v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;I)V

    .line 543
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->m:I

    invoke-static {v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->b(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;I)V

    .line 544
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    invoke-static {v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->c(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;I)V

    .line 545
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    invoke-static {v1, v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;Z)V

    .line 546
    return-object v1
.end method

.method public setCloseItemsOnClick(Z)V
    .locals 2

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->r:Z

    .line 505
    const-string v0, "xyz"

    const-string v1, "setCloseItemsOnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method

.method public setCloseMaimIcom(I)V
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->s:I

    .line 481
    return-void
.end method

.method public setDefaultMaimIcom(I)V
    .locals 0

    .prologue
    .line 484
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->t:I

    .line 485
    return-void
.end method

.method public setExpandDuration(I)V
    .locals 0

    .prologue
    .line 466
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->q:I

    .line 467
    invoke-virtual {p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 468
    return-void
.end method

.method public setGapDegreeProvider(Lcom/fiio/music/satellitemenu/b;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->k:Lcom/fiio/music/satellitemenu/b;

    .line 434
    invoke-virtual {p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 435
    return-void
.end method

.method public setMainImage(I)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    return-void
.end method

.method public setMainImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    return-void
.end method

.method public setOnItemClickedListener(Lcom/fiio/music/satellitemenu/h;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->f:Lcom/fiio/music/satellitemenu/h;

    .line 423
    return-void
.end method

.method public setSatelliteDistance(I)V
    .locals 0

    .prologue
    .line 455
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->p:I

    .line 456
    invoke-virtual {p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 457
    return-void
.end method

.method public setTotalSpacingDegree(F)V
    .locals 0

    .prologue
    .line 444
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->o:F

    .line 445
    invoke-virtual {p0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 446
    return-void
.end method

.method public setonClick(Lcom/fiio/music/satellitemenu/f;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a:Lcom/fiio/music/satellitemenu/f;

    .line 626
    return-void
.end method

.method public settingHight(I)V
    .locals 0

    .prologue
    .line 496
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu;->n:I

    .line 497
    return-void
.end method
