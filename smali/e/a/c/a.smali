.class public final Le/a/c/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Le/ad;


# instance fields
.field private final a:Le/s;


# direct methods
.method public constructor <init>(Le/s;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Le/a/c/a;->a:Le/s;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Le/ae;)Le/aq;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-interface {p1}, Le/ae;->a()Le/am;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Le/am;->f()Le/an;

    move-result-object v4

    .line 51
    invoke-virtual {v3}, Le/am;->d()Le/ao;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Le/ao;->a()Le/af;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string v5, "Content-Type"

    invoke-virtual {v1}, Le/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 58
    :cond_0
    invoke-virtual {v0}, Le/ao;->b()J

    move-result-wide v0

    .line 59
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_5

    .line 60
    const-string v5, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 61
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Le/an;->b(Ljava/lang/String;)Le/an;

    .line 68
    :cond_1
    :goto_0
    const-string v0, "Host"

    invoke-virtual {v3, v0}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 69
    const-string v0, "Host"

    invoke-virtual {v3}, Le/am;->a()Le/aa;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/c;->a(Le/aa;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 72
    :cond_2
    const-string v0, "Connection"

    invoke-virtual {v3, v0}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 73
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v4, v0, v1}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 79
    :cond_3
    const-string v0, "Accept-Encoding"

    invoke-virtual {v3, v0}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 80
    const/4 v0, 0x1

    .line 81
    const-string v1, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v4, v1, v5}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    move v1, v0

    .line 84
    :goto_1
    iget-object v0, p0, Le/a/c/a;->a:Le/s;

    invoke-virtual {v3}, Le/am;->a()Le/aa;

    invoke-interface {v0}, Le/s;->b()Ljava/util/List;

    move-result-object v5

    .line 85
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 86
    const-string v6, "Cookie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v2, v8, :cond_6

    if-lez v2, :cond_4

    const-string v0, "; "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/r;

    invoke-virtual {v0}, Le/r;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Le/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63
    :cond_5
    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {v4, v0, v1}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 64
    const-string v0, "Content-Length"

    invoke-virtual {v4, v0}, Le/an;->b(Ljava/lang/String;)Le/an;

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 89
    :cond_7
    const-string v0, "User-Agent"

    invoke-virtual {v3, v0}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 90
    const-string v0, "User-Agent"

    const-string v2, "okhttp/3.5.0"

    invoke-virtual {v4, v0, v2}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    .line 93
    :cond_8
    invoke-virtual {v4}, Le/an;->a()Le/am;

    move-result-object v0

    invoke-interface {p1, v0}, Le/ae;->a(Le/am;)Le/aq;

    move-result-object v0

    .line 95
    iget-object v2, p0, Le/a/c/a;->a:Le/s;

    invoke-virtual {v3}, Le/am;->a()Le/aa;

    move-result-object v4

    invoke-virtual {v0}, Le/aq;->e()Le/y;

    move-result-object v5

    invoke-static {v2, v4, v5}, Le/a/c/f;->a(Le/s;Le/aa;Le/y;)V

    .line 97
    invoke-virtual {v0}, Le/aq;->g()Le/ar;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v3}, Le/ar;->a(Le/am;)Le/ar;

    move-result-object v2

    .line 100
    if-eqz v1, :cond_9

    const-string v1, "gzip"

    const-string v3, "Content-Encoding"

    .line 101
    invoke-virtual {v0, v3}, Le/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    invoke-static {v0}, Le/a/c/f;->b(Le/aq;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 103
    new-instance v1, Lf/m;

    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v3

    invoke-virtual {v3}, Le/as;->d()Lf/i;

    move-result-object v3

    invoke-direct {v1, v3}, Lf/m;-><init>(Lf/z;)V

    .line 104
    invoke-virtual {v0}, Le/aq;->e()Le/y;

    move-result-object v0

    invoke-virtual {v0}, Le/y;->b()Le/z;

    move-result-object v0

    const-string v3, "Content-Encoding"

    .line 105
    invoke-virtual {v0, v3}, Le/z;->a(Ljava/lang/String;)Le/z;

    move-result-object v0

    const-string v3, "Content-Length"

    .line 106
    invoke-virtual {v0, v3}, Le/z;->a(Ljava/lang/String;)Le/z;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Le/z;->a()Le/y;

    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Le/ar;->a(Le/y;)Le/ar;

    .line 109
    new-instance v3, Le/a/c/i;

    invoke-static {v1}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Le/a/c/i;-><init>(Le/y;Lf/i;)V

    invoke-virtual {v2, v3}, Le/ar;->a(Le/as;)Le/ar;

    .line 112
    :cond_9
    invoke-virtual {v2}, Le/ar;->a()Le/aq;

    move-result-object v0

    return-object v0

    :cond_a
    move v1, v2

    goto/16 :goto_1
.end method
