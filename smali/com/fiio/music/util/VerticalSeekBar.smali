.class public Lcom/fiio/music/util/VerticalSeekBar;
.super Landroid/view/View;
.source "VerticalSeekBar.java"


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field public a:Lcom/fiio/music/util/cy;

.field b:D

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:D

.field private n:D

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/fiio/music/util/cx;

.field private s:D

.field private t:D

.field private u:Z

.field private v:D

.field private w:I

.field private x:I

.field private y:Landroid/content/SharedPreferences;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/fiio/music/util/VerticalSeekBar;->c:[I

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/util/VerticalSeekBar;->d:[I

    .line 34
    return-void

    .line 33
    :array_0
    .array-data 4
        0x10100a7
        0x101009d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/util/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const v7, 0x7f020313

    const/4 v6, 0x3

    const-wide/16 v4, 0x0

    const v3, 0x7f020314

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 74
    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->n:D

    .line 78
    iput v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    .line 82
    const/16 v0, 0x1e

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->p:I

    .line 84
    iput v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->q:I

    .line 87
    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->s:D

    .line 88
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->t:D

    .line 90
    iput-boolean v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->u:Z

    .line 91
    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    .line 92
    iput v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->w:I

    .line 93
    iput v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->x:I

    .line 98
    iput v6, p0, Lcom/fiio/music/util/VerticalSeekBar;->A:I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->a:Lcom/fiio/music/util/cy;

    .line 240
    iput v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->B:I

    .line 248
    iput-boolean v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->C:Z

    .line 115
    const-string v0, "changestyle"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->y:Landroid/content/SharedPreferences;

    .line 116
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->y:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->z:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->A:I

    .line 118
    invoke-virtual {p0}, Lcom/fiio/music/util/VerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 122
    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    .line 123
    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->h:Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/fiio/music/util/VerticalSeekBar;->c:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 148
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->h:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/fiio/music/util/VerticalSeekBar;->c:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->w:I

    .line 152
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    .line 154
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->x:I

    .line 156
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    .line 157
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    .line 159
    return-void

    .line 127
    :cond_1
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 128
    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    .line 129
    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->A:I

    if-ne v1, v6, :cond_3

    .line 134
    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    .line 135
    const v1, 0x7f0202f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 139
    :cond_3
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 140
    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    .line 141
    const v1, 0x7f0202f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->h:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    iput-boolean p2, p0, Lcom/fiio/music/util/VerticalSeekBar;->z:Z

    .line 106
    return-void
.end method

.method private static b(D)D
    .locals 4

    .prologue
    .line 581
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 582
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 584
    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->C:Z

    .line 251
    const-wide v0, 0x4051800000000000L    # 70.0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->n:D

    .line 252
    invoke-virtual {p0}, Lcom/fiio/music/util/VerticalSeekBar;->invalidate()V

    .line 254
    return-void
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->B:I

    .line 243
    iput-wide p1, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 244
    iget-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    .line 245
    invoke-virtual {p0}, Lcom/fiio/music/util/VerticalSeekBar;->invalidate()V

    .line 246
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 260
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->p:I

    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    .line 267
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    .line 268
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->p:I

    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    .line 269
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    .line 277
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->w:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 278
    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->w:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 279
    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    iget v5, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 277
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    iget-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->x:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 285
    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    div-int/lit8 v2, v2, 0x2

    .line 286
    iget v3, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->x:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 287
    iget-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    double-to-int v4, v4

    .line 284
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 299
    iget-wide v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    .line 300
    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 301
    iget-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    iget v6, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 298
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    iget-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    mul-double/2addr v0, v8

    .line 321
    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    int-to-double v2, v2

    .line 320
    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v2

    .line 322
    iget-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->n:D

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v0, v4

    .line 323
    mul-double/2addr v0, v8

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 322
    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->b:D

    .line 324
    iget-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->C:Z

    if-eqz v0, :cond_0

    .line 325
    iget-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->n:D

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v0, v4

    .line 326
    mul-double/2addr v0, v8

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 325
    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->b:D

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    if-eqz v0, :cond_1

    .line 334
    iget-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->u:Z

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    .line 336
    iget-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->b:D

    move-object v1, p0

    .line 335
    invoke-interface/range {v0 .. v5}, Lcom/fiio/music/util/cx;->onProgressChanged(Lcom/fiio/music/util/VerticalSeekBar;DD)V

    .line 345
    :cond_1
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->x:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 290
    iget-wide v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    double-to-int v2, v2

    iget v3, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->x:I

    .line 291
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    div-int/lit8 v4, v4, 0x2

    .line 289
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 218
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 220
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 165
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x64

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_1

    .line 166
    :goto_0
    iput v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->i:I

    .line 167
    iput v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    .line 168
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-double v4, v1

    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->n:D

    .line 170
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 171
    iget-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->a:Lcom/fiio/music/util/cy;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->a:Lcom/fiio/music/util/cy;

    iget-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    invoke-interface {v1, p0, v4, v5}, Lcom/fiio/music/util/cy;->setProgress(Lcom/fiio/music/util/VerticalSeekBar;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 176
    :cond_0
    iget-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    iput-wide v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    .line 178
    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    .line 186
    invoke-virtual {p0, v2, v0}, Lcom/fiio/music/util/VerticalSeekBar;->setMeasuredDimension(II)V

    .line 188
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    invoke-interface {v0}, Lcom/fiio/music/util/cx;->onProgressBefore()V

    .line 354
    iput-boolean v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->u:Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/fiio/music/util/VerticalSeekBar;->d:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 364
    :cond_1
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 497
    :cond_2
    :goto_0
    return v3

    .line 366
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 368
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    goto :goto_0

    .line 421
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 426
    :cond_6
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 438
    :goto_1
    iget-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->v:D

    .line 440
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 441
    iput-boolean v3, p0, Lcom/fiio/music/util/VerticalSeekBar;->D:Z

    .line 445
    :cond_7
    iget-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->D:Z

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/fiio/music/util/VerticalSeekBar;->invalidate()V

    goto :goto_0

    .line 427
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 430
    iget v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->j:I

    iget v1, p0, Lcom/fiio/music/util/VerticalSeekBar;->l:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    goto :goto_1

    .line 432
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    goto :goto_1

    .line 466
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 468
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->g:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/fiio/music/util/VerticalSeekBar;->c:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 469
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->h:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/fiio/music/util/VerticalSeekBar;->c:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 471
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    if-eqz v0, :cond_b

    .line 472
    iget-object v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    invoke-interface {v0}, Lcom/fiio/music/util/cx;->onProgressAfter()V

    .line 474
    :cond_b
    iput-boolean v4, p0, Lcom/fiio/music/util/VerticalSeekBar;->D:Z

    goto/16 :goto_0
.end method

.method public setOnProgressChangeListener(Lcom/fiio/music/util/cy;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/fiio/music/util/VerticalSeekBar;->a:Lcom/fiio/music/util/cy;

    .line 233
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/fiio/music/util/cx;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/fiio/music/util/VerticalSeekBar;->r:Lcom/fiio/music/util/cx;

    .line 559
    return-void
.end method

.method public setProgressHigh(D)V
    .locals 5

    .prologue
    .line 550
    iput-wide p1, p0, Lcom/fiio/music/util/VerticalSeekBar;->t:D

    .line 551
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p1, v0

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v0

    .line 552
    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    .line 551
    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->n:D

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->u:Z

    .line 554
    invoke-virtual {p0}, Lcom/fiio/music/util/VerticalSeekBar;->invalidate()V

    .line 555
    return-void
.end method

.method public setProgressLow(D)V
    .locals 5

    .prologue
    .line 541
    iput-wide p1, p0, Lcom/fiio/music/util/VerticalSeekBar;->s:D

    .line 542
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p1, v0

    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->o:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/fiio/music/util/VerticalSeekBar;->b(D)D

    move-result-wide v0

    .line 543
    iget v2, p0, Lcom/fiio/music/util/VerticalSeekBar;->k:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    .line 542
    iput-wide v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->m:D

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/VerticalSeekBar;->u:Z

    .line 545
    invoke-virtual {p0}, Lcom/fiio/music/util/VerticalSeekBar;->invalidate()V

    .line 546
    return-void
.end method
