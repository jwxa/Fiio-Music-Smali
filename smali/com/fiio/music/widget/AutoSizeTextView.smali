.class public Lcom/fiio/music/widget/AutoSizeTextView;
.super Landroid/widget/TextView;
.source "AutoSizeTextView.java"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    .line 56
    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    .line 57
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    iget v1, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 58
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    .line 61
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lcom/fiio/music/R$styleable;->AutoSizeTextView:[I

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 37
    const-string v0, "http://www.xxxx.com.cn"

    .line 38
    const-string v1, "min_textSize"

    .line 37
    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    .line 42
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    iget v1, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 43
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    .line 45
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 119
    if-lez p2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    .line 121
    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getPaddingRight()I

    move-result v1

    .line 120
    sub-int v2, v0, v1

    .line 122
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->b:F

    .line 123
    :cond_0
    iget v1, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    :goto_0
    int-to-float v3, v2

    .line 123
    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3

    .line 131
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/AutoSizeTextView;->setTextSize(F)V

    .line 133
    :cond_2
    return-void

    .line 125
    :cond_3
    sub-float/2addr v0, v6

    .line 126
    iget v1, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 127
    iget v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    goto :goto_1

    .line 124
    :cond_4
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 105
    if-eq p1, p3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/fiio/music/widget/AutoSizeTextView;->a(Ljava/lang/String;I)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fiio/music/widget/AutoSizeTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/widget/AutoSizeTextView;->a(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 1

    .prologue
    .line 69
    int-to-float v0, p1

    iput v0, p0, Lcom/fiio/music/widget/AutoSizeTextView;->a:F

    .line 70
    return-void
.end method
