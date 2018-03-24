.class public final Lcom/fiio/music/util/FiioPopupWindow;
.super Landroid/widget/PopupWindow;
.source "FiioPopupWindow.java"


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private B:Landroid/widget/AdapterView$OnItemClickListener;

.field private C:Landroid/view/View$OnKeyListener;

.field private D:Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

.field private E:Lcom/fiio/music/util/ac;

.field private F:Lcom/fiio/music/util/dslv/m;

.field public a:I

.field public b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/fiio/music/util/x;

.field private f:Lcom/fiio/music/util/w;

.field private g:Lcom/fiio/music/util/ae;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Lcom/fiio/music/util/dslv/DragSortListView;

.field private q:Landroid/view/View;

.field private r:I

.field private s:Lcom/fiio/music/util/aa;

.field private t:Landroid/graphics/drawable/AnimationDrawable;

.field private u:I

.field private v:Lcom/fiio/music/util/y;

.field private w:Landroid/content/SharedPreferences;

.field private x:Z

.field private y:I

.field private z:Lcom/fiio/music/service/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;Lcom/fiio/music/util/ae;IILcom/fiio/music/util/y;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/fiio/music/util/ae;",
            "II",
            "Lcom/fiio/music/util/y;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 385
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 85
    iput-boolean v7, p0, Lcom/fiio/music/util/FiioPopupWindow;->m:Z

    .line 86
    iput-boolean v7, p0, Lcom/fiio/music/util/FiioPopupWindow;->n:Z

    .line 87
    iput v7, p0, Lcom/fiio/music/util/FiioPopupWindow;->o:I

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    .line 201
    iput v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->a:I

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->b:I

    .line 320
    new-instance v0, Lcom/fiio/music/util/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/s;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 333
    new-instance v0, Lcom/fiio/music/util/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/t;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    .line 348
    new-instance v0, Lcom/fiio/music/util/u;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/u;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->C:Landroid/view/View$OnKeyListener;

    .line 431
    new-instance v0, Lcom/fiio/music/util/v;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/v;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->F:Lcom/fiio/music/util/dslv/m;

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    .line 388
    iput-object p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    .line 389
    iput p5, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    .line 390
    iput p6, p0, Lcom/fiio/music/util/FiioPopupWindow;->u:I

    .line 391
    iput-object p4, p0, Lcom/fiio/music/util/FiioPopupWindow;->g:Lcom/fiio/music/util/ae;

    .line 392
    iput-object p7, p0, Lcom/fiio/music/util/FiioPopupWindow;->v:Lcom/fiio/music/util/y;

    .line 394
    new-array v5, v1, [Ljava/lang/String;

    const-string v0, "albumPath"

    aput-object v0, v5, v7

    .line 395
    new-array v6, v1, [I

    const v0, 0x7f0b0270

    aput v0, v6, v7

    .line 398
    new-instance v0, Lcom/fiio/music/util/ac;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/fiio/music/util/ac;-><init>(Lcom/fiio/music/util/FiioPopupWindow;Landroid/content/Context;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->E:Lcom/fiio/music/util/ac;

    .line 401
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->D:Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

    iget-object v2, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const v3, 0x102000a

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;-><init>(Lcom/fiio/music/util/FiioPopupWindow;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->D:Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->w:Landroid/content/SharedPreferences;

    .line 404
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->w:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->x:Z

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/fiio/music/util/x;IILcom/fiio/music/util/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fiio/music/util/x;",
            "II",
            "Lcom/fiio/music/util/y;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 85
    iput-boolean v2, p0, Lcom/fiio/music/util/FiioPopupWindow;->m:Z

    .line 86
    iput-boolean v2, p0, Lcom/fiio/music/util/FiioPopupWindow;->n:Z

    .line 87
    iput v2, p0, Lcom/fiio/music/util/FiioPopupWindow;->o:I

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->a:I

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->b:I

    .line 320
    new-instance v0, Lcom/fiio/music/util/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/s;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 333
    new-instance v0, Lcom/fiio/music/util/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/t;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    .line 348
    new-instance v0, Lcom/fiio/music/util/u;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/u;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->C:Landroid/view/View$OnKeyListener;

    .line 431
    new-instance v0, Lcom/fiio/music/util/v;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/v;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->F:Lcom/fiio/music/util/dslv/m;

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    .line 166
    iput-object p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/fiio/music/util/FiioPopupWindow;->h:Ljava/util/ArrayList;

    .line 168
    iput p4, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    .line 169
    iput p5, p0, Lcom/fiio/music/util/FiioPopupWindow;->u:I

    .line 170
    iput-object p3, p0, Lcom/fiio/music/util/FiioPopupWindow;->e:Lcom/fiio/music/util/x;

    .line 171
    iput-object p6, p0, Lcom/fiio/music/util/FiioPopupWindow;->v:Lcom/fiio/music/util/y;

    .line 172
    new-instance v0, Lcom/fiio/music/util/aa;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/aa;-><init>(Lcom/fiio/music/util/FiioPopupWindow;)V

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->s:Lcom/fiio/music/util/aa;

    .line 173
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->w:Landroid/content/SharedPreferences;

    .line 174
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->w:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->x:Z

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    .line 176
    return-void
.end method

.method private a(F)I
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 297
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/x;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->e:Lcom/fiio/music/util/x;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/util/FiioPopupWindow;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/FiioPopupWindow;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->t:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->s:Lcom/fiio/music/util/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/w;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->f:Lcom/fiio/music/util/w;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ae;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->g:Lcom/fiio/music/util/ae;

    return-object v0
.end method

.method static synthetic f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->E:Lcom/fiio/music/util/ac;

    return-object v0
.end method

.method static synthetic g(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/y;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->v:Lcom/fiio/music/util/y;

    return-object v0
.end method

.method static synthetic h(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->z:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic i(Lcom/fiio/music/util/FiioPopupWindow;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    return v0
.end method

.method static synthetic j(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/fiio/music/util/FiioPopupWindow;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->n:Z

    return v0
.end method

.method static synthetic l(Lcom/fiio/music/util/FiioPopupWindow;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->o:I

    return v0
.end method

.method static synthetic m(Lcom/fiio/music/util/FiioPopupWindow;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    return v0
.end method

.method static synthetic n(Lcom/fiio/music/util/FiioPopupWindow;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->u:I

    return v0
.end method

.method static synthetic o(Lcom/fiio/music/util/FiioPopupWindow;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->t:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic p(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->D:Lcom/fiio/music/util/FiioPopupWindow$MPopupWindowAdapter;

    return-object v0
.end method

.method static synthetic q(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->h:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    const/16 v0, 0x33

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->j:I

    .line 196
    invoke-direct {p0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(F)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->k:I

    .line 197
    invoke-direct {p0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(F)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->l:I

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->m:Z

    .line 199
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->s:Lcom/fiio/music/util/aa;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->s:Lcom/fiio/music/util/aa;

    invoke-virtual {v0}, Lcom/fiio/music/util/aa;->notifyDataSetChanged()V

    .line 1124
    iput p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->E:Lcom/fiio/music/util/ac;

    if-eqz v0, :cond_1

    .line 1127
    iput p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    .line 1128
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->E:Lcom/fiio/music/util/ac;

    invoke-virtual {v0}, Lcom/fiio/music/util/ac;->notifyDataSetChanged()V

    .line 1130
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 207
    iput p2, p0, Lcom/fiio/music/util/FiioPopupWindow;->b:I

    .line 209
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    if-ne v0, v3, :cond_1

    .line 210
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const v2, 0x7f0400bd

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/dslv/DragSortListView;

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    .line 221
    invoke-virtual {p0, v3}, Lcom/fiio/music/util/FiioPopupWindow;->setOutsideTouchable(Z)V

    .line 225
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    if-ne v0, v3, :cond_4

    .line 226
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 235
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-virtual {v0, v4}, Lcom/fiio/music/util/dslv/DragSortListView;->setCacheColorHint(I)V

    .line 237
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->C:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 239
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->a:I

    if-ne p2, v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->E:Lcom/fiio/music/util/ac;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->F:Lcom/fiio/music/util/dslv/m;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setDropListener(Lcom/fiio/music/util/dslv/m;)V

    .line 245
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->r:I

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 259
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/FiioPopupWindow;->setHeight(I)V

    .line 260
    const/high16 v0, 0x43620000    # 226.0f

    invoke-direct {p0, v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/FiioPopupWindow;->setWidth(I)V

    .line 261
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/FiioPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/FiioPopupWindow;->setContentView(Landroid/view/View;)V

    .line 264
    iget-boolean v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->m:Z

    if-eqz v0, :cond_8

    .line 265
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->j:I

    iget v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->k:I

    iget v2, p0, Lcom/fiio/music/util/FiioPopupWindow;->l:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/fiio/music/util/FiioPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 270
    :goto_3
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/FiioPopupWindow;->setAnimationStyle(I)V

    .line 271
    invoke-virtual {p0}, Lcom/fiio/music/util/FiioPopupWindow;->update()V

    .line 273
    return-void

    .line 211
    :cond_1
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    if-ne v0, v5, :cond_2

    .line 212
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const v2, 0x7f0400be

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    goto/16 :goto_0

    .line 213
    :cond_2
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    if-ne v0, v6, :cond_3

    .line 214
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const v2, 0x7f0400bf

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    goto/16 :goto_0

    .line 215
    :cond_3
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 216
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    const v2, 0x7f0400bf

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->q:Landroid/view/View;

    goto/16 :goto_0

    .line 227
    :cond_4
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    if-ne v0, v5, :cond_5

    .line 228
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 229
    :cond_5
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    if-ne v0, v6, :cond_6

    .line 230
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 231
    :cond_6
    iget v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->y:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 232
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020491

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->s:Lcom/fiio/music/util/aa;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->F:Lcom/fiio/music/util/dslv/m;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setDropListener(Lcom/fiio/music/util/dslv/m;)V

    .line 254
    iget-object v0, p0, Lcom/fiio/music/util/FiioPopupWindow;->p:Lcom/fiio/music/util/dslv/DragSortListView;

    iget-object v1, p0, Lcom/fiio/music/util/FiioPopupWindow;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    .line 267
    :cond_8
    const/16 v0, 0x35

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(F)I

    move-result v1

    .line 268
    const/high16 v2, 0x42700000    # 60.0f

    invoke-direct {p0, v2}, Lcom/fiio/music/util/FiioPopupWindow;->a(F)I

    move-result v2

    .line 267
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/fiio/music/util/FiioPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final a(Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->z:Lcom/fiio/music/service/h;

    .line 279
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    iput-object p1, p0, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    .line 878
    return-void
.end method
