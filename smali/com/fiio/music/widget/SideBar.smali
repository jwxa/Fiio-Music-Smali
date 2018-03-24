.class public Lcom/fiio/music/widget/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# static fields
.field public static a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/fiio/music/widget/l;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 21
    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 22
    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    .line 20
    sput-object v0, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/widget/SideBar;->c:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/widget/SideBar;->c:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/widget/SideBar;->c:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 79
    iget v2, p0, Lcom/fiio/music/widget/SideBar;->c:I

    .line 80
    iget-object v3, p0, Lcom/fiio/music/widget/SideBar;->b:Lcom/fiio/music/widget/l;

    .line 81
    invoke-virtual {p0}, Lcom/fiio/music/widget/SideBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sget-object v4, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 83
    packed-switch v0, :pswitch_data_0

    .line 95
    if-eq v2, v1, :cond_2

    .line 96
    if-ltz v1, :cond_2

    sget-object v0, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 97
    if-eqz v3, :cond_0

    .line 98
    sget-object v0, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Lcom/fiio/music/widget/l;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/SideBar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/fiio/music/widget/SideBar;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/fiio/music/widget/SideBar;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_1
    iput v1, p0, Lcom/fiio/music/widget/SideBar;->c:I

    .line 106
    invoke-virtual {p0}, Lcom/fiio/music/widget/SideBar;->invalidate()V

    .line 112
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 86
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/widget/SideBar;->c:I

    .line 87
    invoke-virtual {p0}, Lcom/fiio/music/widget/SideBar;->invalidate()V

    .line 88
    iget-object v0, p0, Lcom/fiio/music/widget/SideBar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/fiio/music/widget/SideBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p0}, Lcom/fiio/music/widget/SideBar;->getHeight()I

    .line 52
    invoke-virtual {p0}, Lcom/fiio/music/widget/SideBar;->getWidth()I

    .line 53
    sget-object v0, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 73
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    const/16 v2, 0x21

    const/16 v3, 0x41

    const/16 v4, 0x62

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget v1, p0, Lcom/fiio/music/widget/SideBar;->c:I

    if-ne v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    const-string v2, "#3399ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    sget-object v2, Lcom/fiio/music/widget/SideBar;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 68
    iget-object v1, p0, Lcom/fiio/music/widget/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTouchingLetterChangedListener(Lcom/fiio/music/widget/l;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/fiio/music/widget/SideBar;->b:Lcom/fiio/music/widget/l;

    .line 123
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fiio/music/widget/SideBar;->e:Landroid/widget/TextView;

    .line 30
    return-void
.end method
