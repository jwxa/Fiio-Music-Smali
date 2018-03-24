.class public final Lcom/b/a/b/d;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/b/a/b/a/e;

.field private final k:Landroid/graphics/BitmapFactory$Options;

.field private final l:I

.field private final m:Z

.field private final n:Ljava/lang/Object;

.field private final o:Lcom/b/a/b/g/a;

.field private final p:Lcom/b/a/b/g/a;

.field private final q:Lcom/b/a/b/c/a;

.field private final r:Landroid/os/Handler;

.field private final s:Z


# direct methods
.method private constructor <init>(Lcom/b/a/b/e;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/e;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/d;->a:I

    .line 89
    invoke-static {p1}, Lcom/b/a/b/e;->b(Lcom/b/a/b/e;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/d;->b:I

    .line 90
    invoke-static {p1}, Lcom/b/a/b/e;->c(Lcom/b/a/b/e;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/d;->c:I

    .line 91
    invoke-static {p1}, Lcom/b/a/b/e;->d(Lcom/b/a/b/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {p1}, Lcom/b/a/b/e;->e(Lcom/b/a/b/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Lcom/b/a/b/e;->f(Lcom/b/a/b/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/b/a/b/e;->g(Lcom/b/a/b/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/d;->g:Z

    .line 95
    invoke-static {p1}, Lcom/b/a/b/e;->h(Lcom/b/a/b/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/d;->h:Z

    .line 96
    invoke-static {p1}, Lcom/b/a/b/e;->i(Lcom/b/a/b/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/d;->i:Z

    .line 97
    invoke-static {p1}, Lcom/b/a/b/e;->j(Lcom/b/a/b/e;)Lcom/b/a/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->j:Lcom/b/a/b/a/e;

    .line 98
    invoke-static {p1}, Lcom/b/a/b/e;->k(Lcom/b/a/b/e;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    .line 99
    invoke-static {p1}, Lcom/b/a/b/e;->l(Lcom/b/a/b/e;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/d;->l:I

    .line 100
    invoke-static {p1}, Lcom/b/a/b/e;->m(Lcom/b/a/b/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/d;->m:Z

    .line 101
    invoke-static {p1}, Lcom/b/a/b/e;->n(Lcom/b/a/b/e;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->n:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/b/a/b/e;->o(Lcom/b/a/b/e;)Lcom/b/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->o:Lcom/b/a/b/g/a;

    .line 103
    invoke-static {p1}, Lcom/b/a/b/e;->p(Lcom/b/a/b/e;)Lcom/b/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->p:Lcom/b/a/b/g/a;

    .line 104
    invoke-static {p1}, Lcom/b/a/b/e;->q(Lcom/b/a/b/e;)Lcom/b/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->q:Lcom/b/a/b/c/a;

    .line 105
    invoke-static {p1}, Lcom/b/a/b/e;->r(Lcom/b/a/b/e;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/d;->r:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/b/a/b/e;->s(Lcom/b/a/b/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/d;->s:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/b/e;B)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/b/a/b/d;-><init>(Lcom/b/a/b/e;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/b/d;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/b/a/b/d;->a:I

    return v0
.end method

.method static synthetic b(Lcom/b/a/b/d;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/b/a/b/d;->b:I

    return v0
.end method

.method static synthetic c(Lcom/b/a/b/d;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/b/a/b/d;->c:I

    return v0
.end method

.method static synthetic d(Lcom/b/a/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/b/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/b/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/b/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/b/d;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/b/a/b/d;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/b/a/b/d;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/b/a/b/d;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/b/a/b/d;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/b/a/b/d;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/b/a/b/d;)Lcom/b/a/b/a/e;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/b/a/b/d;->j:Lcom/b/a/b/a/e;

    return-object v0
.end method

.method static synthetic k(Lcom/b/a/b/d;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/b/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/b/a/b/d;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/b/a/b/d;->l:I

    return v0
.end method

.method static synthetic m(Lcom/b/a/b/d;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/b/a/b/d;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/b/a/b/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/b/a/b/d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/b/a/b/d;)Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/b/a/b/d;->o:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method static synthetic p(Lcom/b/a/b/d;)Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/b/a/b/d;->p:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method static synthetic q(Lcom/b/a/b/d;)Lcom/b/a/b/c/a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/b/a/b/d;->q:Lcom/b/a/b/c/a;

    return-object v0
.end method

.method static synthetic r(Lcom/b/a/b/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/b/a/b/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/b/a/b/d;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/b/a/b/d;->s:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/b/a/b/d;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/b/d;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/b/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/b/d;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/b/a/b/d;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/b/d;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/b/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/b/d;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/b/a/b/d;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/b/d;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/b/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/b/d;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/b/a/b/d;->o:Lcom/b/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/b/a/b/d;->p:Lcom/b/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/b/a/b/d;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/b/a/b/d;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/b/a/b/d;->h:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/b/a/b/d;->i:Z

    return v0
.end method

.method public final j()Lcom/b/a/b/a/e;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/b/a/b/d;->j:Lcom/b/a/b/a/e;

    return-object v0
.end method

.method public final k()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/b/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/b/a/b/d;->l:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/b/a/b/d;->m:Z

    return v0
.end method

.method public final n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/b/a/b/d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final o()Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/b/a/b/d;->o:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method public final p()Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/b/a/b/d;->p:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method public final q()Lcom/b/a/b/c/a;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/b/a/b/d;->q:Lcom/b/a/b/c/a;

    return-object v0
.end method

.method public final r()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/b/a/b/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method final s()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/b/a/b/d;->s:Z

    return v0
.end method
