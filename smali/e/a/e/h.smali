.class public final Le/a/e/h;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Le/a/c/c;


# static fields
.field private static final b:Lf/j;

.field private static final c:Lf/j;

.field private static final d:Lf/j;

.field private static final e:Lf/j;

.field private static final f:Lf/j;

.field private static final g:Lf/j;

.field private static final h:Lf/j;

.field private static final i:Lf/j;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lf/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lf/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Le/a/b/g;

.field private final l:Le/ag;

.field private final m:Le/a/e/j;

.field private n:Le/a/e/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const-string v0, "connection"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->b:Lf/j;

    .line 52
    const-string v0, "host"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->c:Lf/j;

    .line 53
    const-string v0, "keep-alive"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->d:Lf/j;

    .line 54
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->e:Lf/j;

    .line 55
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->f:Lf/j;

    .line 56
    const-string v0, "te"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->g:Lf/j;

    .line 57
    const-string v0, "encoding"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->h:Lf/j;

    .line 58
    const-string v0, "upgrade"

    invoke-static {v0}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v0

    sput-object v0, Le/a/e/h;->i:Lf/j;

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [Lf/j;

    sget-object v1, Le/a/e/h;->b:Lf/j;

    aput-object v1, v0, v3

    sget-object v1, Le/a/e/h;->c:Lf/j;

    aput-object v1, v0, v4

    sget-object v1, Le/a/e/h;->d:Lf/j;

    aput-object v1, v0, v5

    sget-object v1, Le/a/e/h;->e:Lf/j;

    aput-object v1, v0, v6

    sget-object v1, Le/a/e/h;->g:Lf/j;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Le/a/e/h;->f:Lf/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Le/a/e/h;->h:Lf/j;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Le/a/e/h;->i:Lf/j;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Le/a/e/c;->c:Lf/j;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Le/a/e/c;->d:Lf/j;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Le/a/e/c;->e:Lf/j;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Le/a/e/c;->f:Lf/j;

    aput-object v2, v0, v1

    invoke-static {v0}, Le/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/e/h;->j:Ljava/util/List;

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Lf/j;

    sget-object v1, Le/a/e/h;->b:Lf/j;

    aput-object v1, v0, v3

    sget-object v1, Le/a/e/h;->c:Lf/j;

    aput-object v1, v0, v4

    sget-object v1, Le/a/e/h;->d:Lf/j;

    aput-object v1, v0, v5

    sget-object v1, Le/a/e/h;->e:Lf/j;

    aput-object v1, v0, v6

    sget-object v1, Le/a/e/h;->g:Lf/j;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Le/a/e/h;->f:Lf/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Le/a/e/h;->h:Lf/j;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Le/a/e/h;->i:Lf/j;

    aput-object v2, v0, v1

    invoke-static {v0}, Le/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/e/h;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le/ag;Le/a/b/g;Le/a/e/j;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Le/a/e/h;->l:Le/ag;

    .line 92
    iput-object p2, p0, Le/a/e/h;->a:Le/a/b/g;

    .line 93
    iput-object p3, p0, Le/a/e/h;->m:Le/a/e/j;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Le/aq;)Le/as;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Le/a/e/i;

    iget-object v1, p0, Le/a/e/h;->n:Le/a/e/ab;

    invoke-virtual {v1}, Le/a/e/ab;->g()Lf/z;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Le/a/e/i;-><init>(Le/a/e/h;Lf/z;)V

    .line 163
    new-instance v1, Le/a/c/i;

    invoke-virtual {p1}, Le/aq;->e()Le/y;

    move-result-object v2

    invoke-static {v0}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Le/a/c/i;-><init>(Le/y;Lf/i;)V

    return-object v1
.end method

.method public final a(Le/am;J)Lf/y;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->h()Lf/y;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->h()Lf/y;

    move-result-object v0

    invoke-interface {v0}, Lf/y;->close()V

    .line 112
    return-void
.end method

.method public final a(Le/am;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Le/am;->d()Le/ao;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 104
    :goto_1
    invoke-virtual {p1}, Le/am;->c()Le/y;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Le/y;->a()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Le/a/e/c;

    sget-object v5, Le/a/e/c;->c:Lf/j;

    invoke-virtual {p1}, Le/am;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/e/c;-><init>(Lf/j;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Le/a/e/c;

    sget-object v5, Le/a/e/c;->d:Lf/j;

    invoke-virtual {p1}, Le/am;->a()Le/aa;

    move-result-object v6

    invoke-static {v6}, Le/a/c/j;->a(Le/aa;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/e/c;-><init>(Lf/j;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Le/a/e/c;

    sget-object v5, Le/a/e/c;->f:Lf/j;

    invoke-virtual {p1}, Le/am;->a()Le/aa;

    move-result-object v6

    invoke-static {v6, v1}, Le/a/c;->a(Le/aa;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/e/c;-><init>(Lf/j;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Le/a/e/c;

    sget-object v5, Le/a/e/c;->e:Lf/j;

    invoke-virtual {p1}, Le/am;->a()Le/aa;

    move-result-object v6

    invoke-virtual {v6}, Le/aa;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/e/c;-><init>(Lf/j;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Le/y;->a()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-virtual {v2, v1}, Le/y;->a(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lf/j;->a(Ljava/lang/String;)Lf/j;

    move-result-object v5

    sget-object v6, Le/a/e/h;->j:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Le/a/e/c;

    invoke-virtual {v2, v1}, Le/y;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Le/a/e/c;-><init>(Lf/j;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 103
    goto :goto_1

    .line 105
    :cond_3
    iget-object v1, p0, Le/a/e/h;->m:Le/a/e/j;

    invoke-virtual {v1, v3, v0}, Le/a/e/j;->a(Ljava/util/List;Z)Le/a/e/ab;

    move-result-object v0

    iput-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    .line 106
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->e()Lf/aa;

    move-result-object v0

    iget-object v1, p0, Le/a/e/h;->l:Le/ag;

    invoke-virtual {v1}, Le/ag;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    .line 107
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->f()Lf/aa;

    move-result-object v0

    iget-object v1, p0, Le/a/e/h;->l:Le/ag;

    invoke-virtual {v1}, Le/ag;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    goto/16 :goto_0
.end method

.method public final b()Le/ar;
    .locals 8

    .prologue
    .line 115
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->d()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    new-instance v4, Le/z;

    invoke-direct {v4}, Le/z;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/c;

    iget-object v6, v0, Le/a/e/c;->g:Lf/j;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/c;

    iget-object v0, v0, Le/a/e/c;->h:Lf/j;

    invoke-virtual {v0}, Lf/j;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Le/a/e/c;->b:Lf/j;

    invoke-virtual {v6, v7}, Lf/j;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v7, Le/a/e/h;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Le/a/a;->a:Le/a/a;

    invoke-virtual {v6}, Lf/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v0}, Le/a/a;->a(Le/z;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1.1 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/l;->a(Ljava/lang/String;)Le/a/c/l;

    move-result-object v0

    new-instance v1, Le/ar;

    invoke-direct {v1}, Le/ar;-><init>()V

    sget-object v2, Le/aj;->d:Le/aj;

    invoke-virtual {v1, v2}, Le/ar;->a(Le/aj;)Le/ar;

    move-result-object v1

    iget v2, v0, Le/a/c/l;->b:I

    invoke-virtual {v1, v2}, Le/ar;->a(I)Le/ar;

    move-result-object v1

    iget-object v0, v0, Le/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/ar;->a(Ljava/lang/String;)Le/ar;

    move-result-object v0

    invoke-virtual {v4}, Le/z;->a()Le/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/ar;->a(Le/y;)Le/ar;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/e/h;->n:Le/a/e/ab;

    sget-object v1, Le/a/e/b;->f:Le/a/e/b;

    invoke-virtual {v0, v1}, Le/a/e/ab;->b(Le/a/e/b;)V

    .line 168
    :cond_0
    return-void
.end method
