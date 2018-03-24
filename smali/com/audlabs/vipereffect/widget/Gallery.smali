.class public Lcom/audlabs/vipereffect/widget/Gallery;
.super Landroid/widget/Gallery;
.source "Gallery.java"


# instance fields
.field private mDisabledColor:I

.field private mEnabled:Z

.field private mHighlightColor:I

.field private mLastView:Landroid/widget/TextView;

.field private mLowlightColor:I

.field private mOnItemSelectedListener:Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/audlabs/vipereffect/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/audlabs/vipereffect/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mEnabled:Z

    .line 54
    iput-object v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mLastView:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mOnItemSelectedListener:Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;

    .line 60
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mHighlightColor:I

    .line 62
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mLowlightColor:I

    .line 63
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mDisabledColor:I

    .line 65
    new-instance v0, Lcom/audlabs/vipereffect/widget/f;

    invoke-direct {v0, p0}, Lcom/audlabs/vipereffect/widget/f;-><init>(Lcom/audlabs/vipereffect/widget/Gallery;)V

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/widget/Gallery;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/widget/Gallery;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mHighlightColor:I

    return v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/widget/Gallery;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mDisabledColor:I

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/widget/Gallery;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mLastView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/widget/Gallery;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mLowlightColor:I

    return v0
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/widget/Gallery;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mLastView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$6(Lcom/audlabs/vipereffect/widget/Gallery;)Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mOnItemSelectedListener:Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mEnabled:Z

    .line 102
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/Gallery;->getChildCount()I

    move-result v3

    .line 103
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/Gallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0, v2}, Lcom/audlabs/vipereffect/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 106
    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mLowlightColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 106
    :cond_3
    iget v1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mDisabledColor:I

    goto :goto_1
.end method

.method public setOnItemSelectedListener(Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/Gallery;->mOnItemSelectedListener:Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;

    .line 97
    return-void
.end method
