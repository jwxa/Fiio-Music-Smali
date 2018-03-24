.class public final Lcom/fiio/music/h/h;
.super Landroid/app/Dialog;
.source "LyricPopupDialog.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/fiio/music/h/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/h/h;-><init>(Landroid/content/Context;B)V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    const v0, 0x7f090025

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/h/h;->c:I

    .line 97
    new-instance v0, Lcom/fiio/music/h/i;

    invoke-direct {v0, p0}, Lcom/fiio/music/h/i;-><init>(Lcom/fiio/music/h/h;)V

    iput-object v0, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/fiio/music/h/h;->b:Landroid/content/Context;

    .line 38
    invoke-virtual {p0, v1}, Lcom/fiio/music/h/h;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v1}, Lcom/fiio/music/h/h;->setCancelable(Z)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/h/h;)Lcom/fiio/music/h/j;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fiio/music/h/h;->d:Lcom/fiio/music/h/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fiio/music/h/j;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/fiio/music/h/h;->d:Lcom/fiio/music/h/j;

    .line 134
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v2, 0x7f040095

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/fiio/music/h/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/h/h;->c:I

    .line 53
    iget v0, p0, Lcom/fiio/music/h/h;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 54
    invoke-virtual {p0, v2}, Lcom/fiio/music/h/h;->setContentView(I)V

    .line 65
    :cond_0
    :goto_0
    const v0, 0x7f0b01d7

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01dd

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01e0

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01e3

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01e6

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01e9

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01ef

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01da

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01f2

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/h/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/fiio/music/h/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/h/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const v3, 0x7f0b01d5

    invoke-virtual {p0, v3}, Lcom/fiio/music/h/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xf5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    return-void

    .line 55
    :cond_1
    iget v0, p0, Lcom/fiio/music/h/h;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 56
    invoke-virtual {p0, v2}, Lcom/fiio/music/h/h;->setContentView(I)V

    goto/16 :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/fiio/music/h/h;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 58
    invoke-virtual {p0, v2}, Lcom/fiio/music/h/h;->setContentView(I)V

    goto/16 :goto_0

    .line 59
    :cond_3
    iget v0, p0, Lcom/fiio/music/h/h;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 60
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/fiio/music/h/h;->setContentView(I)V

    goto/16 :goto_0
.end method
