.class public Lcom/fiio/music/widget/BezierCurveChart;
.super Landroid/view/View;
.source "BezierCurveChart.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:[Lcom/fiio/music/widget/a;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:[Ljava/lang/String;

.field private n:F

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:F

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/RectF;

.field private v:Ljava/lang/String;

.field private w:Landroid/graphics/Paint;

.field private x:I

.field private y:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/fiio/music/widget/BezierCurveChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/widget/BezierCurveChart;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0xdd

    const/16 v6, 0xd0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->b:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->h:Landroid/graphics/Path;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->q:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->t:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->u:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    .line 82
    iput v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->x:I

    .line 83
    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0203b0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->y:Landroid/graphics/Bitmap;

    .line 86
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 94
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    const/16 v1, 0x7e

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    const/16 v1, 0xd2

    invoke-static {v4, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    const/16 v1, 0x88

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 111
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    const/16 v1, 0x92

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    const/16 v1, 0x89

    const/16 v2, 0xd8

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    const/16 v1, 0x89

    const/16 v2, 0xd8

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41080000    # 8.5f

    invoke-static {v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 132
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/16 v7, 0xdd

    const/16 v6, 0xd0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->b:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->h:Landroid/graphics/Path;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->q:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->t:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->u:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    .line 82
    iput v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->x:I

    .line 83
    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0203b0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->y:Landroid/graphics/Bitmap;

    .line 86
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 94
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    const/16 v1, 0x7e

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    const/16 v1, 0xd2

    invoke-static {v4, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    const/16 v1, 0x88

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 111
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    const/16 v1, 0x92

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    const/16 v1, 0x89

    const/16 v2, 0xd8

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    const/16 v1, 0x89

    const/16 v2, 0xd8

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41080000    # 8.5f

    invoke-static {v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 132
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->h:Landroid/graphics/Path;

    invoke-direct {p0, v0}, Lcom/fiio/music/widget/BezierCurveChart;->a(Landroid/graphics/Path;)V

    .line 211
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    invoke-direct {p0, v0}, Lcom/fiio/music/widget/BezierCurveChart;->a(Landroid/graphics/Path;)V

    .line 213
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/fiio/music/widget/a;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 219
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 9

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->m:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    .line 231
    int-to-float v0, p2

    int-to-float v1, v7

    div-float v8, v0, v1

    .line 233
    const/4 v0, 0x1

    move v6, v0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 237
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v1, v0

    .line 235
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 233
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 184
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    array-length v1, v1

    .line 186
    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/fiio/music/widget/a;->b:F

    iget-object v3, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/fiio/music/widget/a;->c:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    add-int/lit8 v2, v1, -0x1

    aget-object v0, v0, v2

    iget v0, v0, Lcom/fiio/music/widget/a;->b:F

    .line 199
    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/fiio/music/widget/a;->c:F

    .line 200
    iget-object v3, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/fiio/music/widget/a;->b:F

    .line 201
    iget-object v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    iget v1, v1, Lcom/fiio/music/widget/a;->c:F

    .line 198
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 202
    return-void

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/fiio/music/widget/a;->b:F

    iget-object v3, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/fiio/music/widget/a;->b:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    .line 190
    iget-object v3, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/fiio/music/widget/a;->c:F

    iget-object v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/fiio/music/widget/a;->c:F

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    .line 192
    iget-object v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/fiio/music/widget/a;->b:F

    .line 193
    iget-object v5, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/fiio/music/widget/a;->c:F

    .line 196
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 256
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 258
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    .line 259
    int-to-float v0, v0

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->m:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 261
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->m:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v1

    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v4, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v1, v4

    sub-float/2addr v1, v7

    float-to-double v4, v1

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 277
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->m:[Ljava/lang/String;

    aget-object v4, v1, v0

    .line 263
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 264
    iget-object v5, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 266
    if-nez v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 273
    :goto_1
    const/high16 v5, 0x41000000    # 8.0f

    sub-float v5, v2, v5

    iget-object v6, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iget-object v6, p0, Lcom/fiio/music/widget/BezierCurveChart;->m:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_2

    .line 269
    iget-object v1, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    .line 270
    goto :goto_1

    .line 271
    :cond_2
    div-float/2addr v5, v7

    sub-float/2addr v1, v5

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/widget/a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 375
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    .line 376
    iput-object p2, p0, Lcom/fiio/music/widget/BezierCurveChart;->m:[Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->v:Ljava/lang/String;

    .line 378
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fiio/music/widget/a;

    iput-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    .line 380
    sget-object v0, Lcom/fiio/music/widget/a;->a:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 381
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 382
    return-void
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getChartBgPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCurvePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGridPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTipLinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTipPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTipTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/BezierCurveChart;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 389
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x28

    .line 398
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x1

    .line 399
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v0, v0, Lcom/fiio/music/widget/a;->c:F

    iput v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->n:F

    add-int/lit8 v0, v2, -0x50

    int-to-float v0, v0

    iget v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->n:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->p:F

    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    iget-object v4, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v4, v0, Lcom/fiio/music/widget/a;->b:F

    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v0, v0, Lcom/fiio/music/widget/a;->b:F

    sub-float/2addr v4, v0

    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v5, v0, Lcom/fiio/music/widget/a;->b:F

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    :goto_1
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/BezierCurveChart;->a(Landroid/graphics/Canvas;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/BezierCurveChart;->b(Landroid/graphics/Canvas;)V

    .line 412
    :cond_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    new-instance v6, Lcom/fiio/music/widget/a;

    invoke-direct {v6}, Lcom/fiio/music/widget/a;-><init>()V

    iget v7, v0, Lcom/fiio/music/widget/a;->b:F

    sub-float/2addr v7, v5

    int-to-float v8, v3

    mul-float/2addr v7, v8

    div-float/2addr v7, v4

    iget-object v8, p0, Lcom/fiio/music/widget/BezierCurveChart;->f:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Lcom/fiio/music/widget/a;->b:F

    iget v0, v0, Lcom/fiio/music/widget/a;->c:F

    iget v7, p0, Lcom/fiio/music/widget/BezierCurveChart;->p:F

    mul-float/2addr v0, v7

    iput v0, v6, Lcom/fiio/music/widget/a;->c:F

    int-to-float v0, v2

    iget v7, v6, Lcom/fiio/music/widget/a;->c:F

    sub-float/2addr v0, v7

    iput v0, v6, Lcom/fiio/music/widget/a;->c:F

    iget-object v0, p0, Lcom/fiio/music/widget/BezierCurveChart;->c:[Lcom/fiio/music/widget/a;

    aput-object v6, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 401
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/fiio/music/widget/BezierCurveChart;->a(Landroid/graphics/Canvas;I)V

    goto :goto_1
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->d:Landroid/graphics/Paint;

    .line 436
    return-void
.end method

.method public setChartBgPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->e:Landroid/graphics/Paint;

    .line 440
    return-void
.end method

.method public setCurrentRegion(I)V
    .locals 0

    .prologue
    .line 447
    iput p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->x:I

    .line 448
    invoke-virtual {p0}, Lcom/fiio/music/widget/BezierCurveChart;->invalidate()V

    .line 449
    return-void
.end method

.method public setCurvePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->g:Landroid/graphics/Paint;

    .line 444
    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->i:Landroid/graphics/Paint;

    .line 453
    return-void
.end method

.method public setGridPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->k:Landroid/graphics/Paint;

    .line 457
    return-void
.end method

.method public setLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->l:Landroid/graphics/Paint;

    .line 461
    return-void
.end method

.method public setTipLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->r:Landroid/graphics/Paint;

    .line 465
    return-void
.end method

.method public setTipPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->s:Landroid/graphics/Paint;

    .line 469
    return-void
.end method

.method public setTipTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/fiio/music/widget/BezierCurveChart;->w:Landroid/graphics/Paint;

    .line 473
    return-void
.end method
