.class public Lcom/fiio/music/widget/CustomTextView;
.super Landroid/widget/TextView;
.source "CustomTextView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Landroid/graphics/LinearGradient;

.field private f:Landroid/graphics/Matrix;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/fiio/music/widget/CustomTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/widget/CustomTextView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fiio/music/widget/CustomTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/fiio/music/widget/CustomTextView;->g:I

    iget v1, p0, Lcom/fiio/music/widget/CustomTextView;->d:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/widget/CustomTextView;->g:I

    .line 62
    iget v0, p0, Lcom/fiio/music/widget/CustomTextView;->g:I

    iget v1, p0, Lcom/fiio/music/widget/CustomTextView;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 63
    iget v0, p0, Lcom/fiio/music/widget/CustomTextView;->d:I

    neg-int v0, v0

    iput v0, p0, Lcom/fiio/music/widget/CustomTextView;->g:I

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->f:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/fiio/music/widget/CustomTextView;->g:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 68
    iget-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->e:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/fiio/music/widget/CustomTextView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 69
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/widget/CustomTextView;->postInvalidateDelayed(J)V

    .line 70
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 44
    iget v0, p0, Lcom/fiio/music/widget/CustomTextView;->d:I

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/fiio/music/widget/CustomTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/CustomTextView;->d:I

    .line 46
    invoke-virtual {p0}, Lcom/fiio/music/widget/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->c:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/fiio/music/widget/CustomTextView;->d:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    .line 50
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 48
    iput-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->e:Landroid/graphics/LinearGradient;

    .line 51
    iget-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/fiio/music/widget/CustomTextView;->e:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/CustomTextView;->f:Landroid/graphics/Matrix;

    .line 55
    :cond_0
    return-void

    .line 48
    :array_0
    .array-data 4
        -0x777778
        -0x1
        -0x777778
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
