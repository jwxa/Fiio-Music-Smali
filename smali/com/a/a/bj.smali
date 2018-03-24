.class final Lcom/a/a/bj;
.super Ljava/lang/Object;
.source "JsonSerializationVisitor.java"

# interfaces
.implements Lcom/a/a/by;


# instance fields
.field private final a:Lcom/a/a/bx;

.field private final b:Lcom/a/a/ap;

.field private final c:Lcom/a/a/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/bk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/a/a/bh;

.field private final f:Lcom/a/a/bt;

.field private g:Lcom/a/a/ba;


# direct methods
.method constructor <init>(Lcom/a/a/bx;Lcom/a/a/ap;ZLcom/a/a/cb;Lcom/a/a/bh;Lcom/a/a/bt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/bx;",
            "Lcom/a/a/ap;",
            "Z",
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/bk",
            "<*>;>;",
            "Lcom/a/a/bh;",
            "Lcom/a/a/bt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/a/a/bj;->a:Lcom/a/a/bx;

    .line 45
    iput-object p2, p0, Lcom/a/a/bj;->b:Lcom/a/a/ap;

    .line 46
    iput-boolean p3, p0, Lcom/a/a/bj;->d:Z

    .line 47
    iput-object p4, p0, Lcom/a/a/bj;->c:Lcom/a/a/cb;

    .line 48
    iput-object p5, p0, Lcom/a/a/bj;->e:Lcom/a/a/bh;

    .line 49
    iput-object p6, p0, Lcom/a/a/bj;->f:Lcom/a/a/bt;

    .line 50
    return-void
.end method

.method private a(Lcom/a/a/ao;Lcom/a/a/ba;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    invoke-virtual {v0}, Lcom/a/a/ba;->s()Lcom/a/a/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/bj;->b:Lcom/a/a/ap;

    invoke-interface {v1, p1}, Lcom/a/a/ap;->a(Lcom/a/a/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/a/a/bd;->a(Ljava/lang/String;Lcom/a/a/ba;)V

    .line 133
    return-void
.end method

.method private a(Lcom/a/a/ao;Lcom/a/a/bz;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p2}, Lcom/a/a/bj;->d(Lcom/a/a/bz;)Lcom/a/a/ba;

    move-result-object v0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/ba;)V

    .line 129
    return-void
.end method

.method private a(Lcom/a/a/ba;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {p1}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ba;

    iput-object v0, p0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    .line 219
    return-void
.end method

.method private static a(Lcom/a/a/ao;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 222
    invoke-static {p0, p1}, Lcom/a/a/bj;->b(Lcom/a/a/ao;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/a/a/ao;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/a/a/ao;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d(Lcom/a/a/bz;)Lcom/a/a/ba;
    .locals 7

    .prologue
    .line 145
    new-instance v0, Lcom/a/a/bj;

    iget-object v1, p0, Lcom/a/a/bj;->a:Lcom/a/a/bx;

    iget-object v2, p0, Lcom/a/a/bj;->b:Lcom/a/a/ap;

    iget-boolean v3, p0, Lcom/a/a/bj;->d:Z

    iget-object v4, p0, Lcom/a/a/bj;->c:Lcom/a/a/cb;

    iget-object v5, p0, Lcom/a/a/bj;->e:Lcom/a/a/bh;

    iget-object v6, p0, Lcom/a/a/bj;->f:Lcom/a/a/bt;

    invoke-direct/range {v0 .. v6}, Lcom/a/a/bj;-><init>(Lcom/a/a/bx;Lcom/a/a/ap;ZLcom/a/a/cb;Lcom/a/a/bh;Lcom/a/a/bt;)V

    .line 147
    iget-object v1, p0, Lcom/a/a/bj;->a:Lcom/a/a/bx;

    invoke-virtual {v1, p1, v0}, Lcom/a/a/bx;->a(Lcom/a/a/bz;Lcom/a/a/by;)V

    .line 148
    iget-object v0, v0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    return-object v0
.end method

.method private e(Lcom/a/a/bz;)Lcom/a/a/ba;
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/a/a/bj;->c:Lcom/a/a/cb;

    invoke-virtual {p1, v0}, Lcom/a/a/bz;->a(Lcom/a/a/cb;)Lcom/a/a/ca;

    move-result-object v1

    .line 177
    if-nez v1, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v0, v1, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/bk;

    .line 181
    iget-object v1, v1, Lcom/a/a/ca;->b:Ljava/lang/Object;

    check-cast v1, Lcom/a/a/bz;

    .line 182
    invoke-virtual {p0, v1}, Lcom/a/a/bj;->a(Lcom/a/a/bz;)V

    .line 184
    :try_start_0
    invoke-virtual {v1}, Lcom/a/a/bz;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/a/a/bj;->e:Lcom/a/a/bh;

    invoke-interface {v0, v2, v3, v4}, Lcom/a/a/bk;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 188
    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/a/bj;->b(Lcom/a/a/bz;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/a/a/bj;->b(Lcom/a/a/bz;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    return-object v0
.end method

.method public final a(Lcom/a/a/ao;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    invoke-static {p1, p3}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-boolean v0, p0, Lcom/a/a/bj;->d:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/ba;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {p1, p3}, Lcom/a/a/bj;->b(Lcom/a/a/ao;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/a/a/bz;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v1}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/bz;)V
    :try_end_0
    .catch Lcom/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/a/a/d;->a(Lcom/a/a/ao;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/a/a/bz;)V
    .locals 1

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/a/a/bj;->f:Lcom/a/a/bt;

    invoke-virtual {v0, p1}, Lcom/a/a/bt;->b(Lcom/a/a/bz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0, p1}, Lcom/a/a/d;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/a/a/bj;->f:Lcom/a/a/bt;

    invoke-virtual {v0, p1}, Lcom/a/a/bt;->a(Lcom/a/a/bz;)Lcom/a/a/bz;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/a/a/bd;

    invoke-direct {v0}, Lcom/a/a/bd;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/bj;->a(Lcom/a/a/ba;)V

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v0, Lcom/a/a/at;

    invoke-direct {v0}, Lcom/a/a/at;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/bj;->a(Lcom/a/a/ba;)V

    .line 78
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 79
    invoke-static {p2}, Lcom/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    move v0, v1

    .line 80
    :goto_0
    if-ge v0, v2, :cond_1

    .line 81
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/a/a/bz;

    invoke-direct {v5, v4, v3, v1}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v5}, Lcom/a/a/bz;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    invoke-virtual {v4}, Lcom/a/a/ba;->t()Lcom/a/a/at;

    move-result-object v4

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/a/a/at;->a(Lcom/a/a/ba;)V

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, v5}, Lcom/a/a/bj;->d(Lcom/a/a/bz;)Lcom/a/a/ba;

    move-result-object v4

    iget-object v5, p0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    invoke-virtual {v5}, Lcom/a/a/ba;->t()Lcom/a/a/at;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/a/a/at;->a(Lcom/a/a/ba;)V

    goto :goto_1

    .line 86
    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/a/a/ao;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    invoke-static {p1, p3}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-boolean v0, p0, Lcom/a/a/bj;->d:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/ba;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p1, p3}, Lcom/a/a/bj;->b(Lcom/a/a/ao;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/a/a/bz;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v1}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/bz;)V
    :try_end_0
    .catch Lcom/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/a/a/d;->a(Lcom/a/a/ao;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final b(Lcom/a/a/bz;)V
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/a/a/bj;->f:Lcom/a/a/bt;

    invoke-virtual {v0}, Lcom/a/a/bt;->a()Lcom/a/a/bz;

    .line 70
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 122
    if-nez p1, :cond_0

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    .line 123
    :goto_0
    invoke-direct {p0, v0}, Lcom/a/a/bj;->a(Lcom/a/a/ba;)V

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/a/a/bg;

    invoke-direct {v0, p1}, Lcom/a/a/bg;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c(Lcom/a/a/ao;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/a/a/bj;->g:Lcom/a/a/ba;

    invoke-virtual {v2}, Lcom/a/a/ba;->p()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/a/a/d; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {p1, p3}, Lcom/a/a/ao;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 197
    if-nez v2, :cond_2

    .line 198
    iget-boolean v1, p0, Lcom/a/a/bj;->d:Z

    if-eqz v1, :cond_1

    .line 199
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/ba;)V

    .line 209
    :cond_1
    :goto_0
    return v0

    .line 203
    :cond_2
    new-instance v3, Lcom/a/a/bz;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 204
    invoke-direct {p0, v3}, Lcom/a/a/bj;->e(Lcom/a/a/bz;)Lcom/a/a/ba;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_3

    .line 206
    invoke-direct {p0, p1, v2}, Lcom/a/a/bj;->a(Lcom/a/a/ao;Lcom/a/a/ba;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/a/a/d; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/a/a/d;->a(Lcom/a/a/ao;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_3
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public final c(Lcom/a/a/bz;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/bz;->a()Ljava/lang/Object;

    move-result-object v1

    .line 154
    if-nez v1, :cond_1

    .line 155
    iget-boolean v1, p0, Lcom/a/a/bj;->d:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/a/bj;->a(Lcom/a/a/ba;)V

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/bj;->e(Lcom/a/a/bz;)Lcom/a/a/ba;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0, v1}, Lcom/a/a/bj;->a(Lcom/a/a/ba;)V
    :try_end_0
    .catch Lcom/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(Lcom/a/a/ao;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
