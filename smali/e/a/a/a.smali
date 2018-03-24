.class public final Le/a/a/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Le/ad;


# instance fields
.field final a:Le/a/a/i;


# direct methods
.method public constructor <init>(Le/a/a/i;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Le/a/a/a;->a:Le/a/a/i;

    .line 50
    return-void
.end method

.method private static a(Le/aq;)Le/aq;
    .locals 2

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le/aq;->f()Le/as;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Le/aq;->g()Le/ar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/ar;->a(Le/as;)Le/ar;

    move-result-object v0

    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 257
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 257
    goto :goto_0
.end method


# virtual methods
.method public final a(Le/ae;)Le/aq;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Le/a/a/a;->a:Le/a/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/a/a;->a:Le/a/a/i;

    .line 54
    invoke-interface {p1}, Le/ae;->a()Le/am;

    invoke-interface {v0}, Le/a/a/i;->a()Le/aq;

    move-result-object v0

    .line 57
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 59
    new-instance v3, Le/a/a/e;

    invoke-interface {p1}, Le/ae;->a()Le/am;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Le/a/a/e;-><init>(JLe/am;Le/aq;)V

    invoke-virtual {v3}, Le/a/a/e;->a()Le/a/a/d;

    move-result-object v3

    .line 60
    iget-object v4, v3, Le/a/a/d;->a:Le/am;

    .line 61
    iget-object v3, v3, Le/a/a/d;->b:Le/aq;

    .line 63
    iget-object v5, p0, Le/a/a/a;->a:Le/a/a/i;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Le/a/a/a;->a:Le/a/a/i;

    .line 67
    :cond_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 68
    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v5

    invoke-static {v5}, Le/a/c;->a(Ljava/io/Closeable;)V

    .line 72
    :cond_1
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .line 73
    new-instance v0, Le/ar;

    invoke-direct {v0}, Le/ar;-><init>()V

    .line 74
    invoke-interface {p1}, Le/ae;->a()Le/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/ar;->a(Le/am;)Le/ar;

    move-result-object v0

    sget-object v1, Le/aj;->b:Le/aj;

    .line 75
    invoke-virtual {v0, v1}, Le/ar;->a(Le/aj;)Le/ar;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 76
    invoke-virtual {v0, v1}, Le/ar;->a(I)Le/ar;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 77
    invoke-virtual {v0, v1}, Le/ar;->a(Ljava/lang/String;)Le/ar;

    move-result-object v0

    sget-object v1, Le/a/c;->c:Le/as;

    .line 78
    invoke-virtual {v0, v1}, Le/ar;->a(Le/as;)Le/ar;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 79
    invoke-virtual {v0, v2, v3}, Le/ar;->a(J)Le/ar;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Le/ar;->b(J)Le/ar;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    .line 133
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    .line 54
    goto :goto_0

    .line 85
    :cond_4
    if-nez v4, :cond_5

    .line 86
    invoke-virtual {v3}, Le/aq;->g()Le/ar;

    move-result-object v0

    .line 87
    invoke-static {v3}, Le/a/a/a;->a(Le/aq;)Le/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/ar;->b(Le/aq;)Le/ar;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    goto :goto_1

    .line 91
    :cond_5
    :try_start_0
    invoke-interface {p1, v4}, Le/ae;->a(Le/am;)Le/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 96
    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    .line 97
    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v0

    invoke-static {v0}, Le/a/c;->a(Ljava/io/Closeable;)V

    .line 102
    :cond_6
    if-eqz v3, :cond_f

    .line 103
    invoke-virtual {v4}, Le/aq;->b()I

    move-result v0

    const/16 v5, 0x130

    if-ne v0, v5, :cond_e

    .line 104
    invoke-virtual {v3}, Le/aq;->g()Le/ar;

    move-result-object v1

    .line 105
    invoke-virtual {v3}, Le/aq;->e()Le/y;

    move-result-object v5

    invoke-virtual {v4}, Le/aq;->e()Le/y;

    move-result-object v6

    new-instance v7, Le/z;

    invoke-direct {v7}, Le/z;-><init>()V

    invoke-virtual {v5}, Le/y;->a()I

    move-result v8

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_b

    invoke-virtual {v5, v0}, Le/y;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v0}, Le/y;->b(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Warning"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_7
    invoke-static {v9}, Le/a/a/a;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v6, v9}, Le/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    :cond_8
    sget-object v11, Le/a/a;->a:Le/a/a;

    invoke-virtual {v11, v7, v9, v10}, Le/a/a;->a(Le/z;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    .line 97
    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v0

    invoke-static {v0}, Le/a/c;->a(Ljava/io/Closeable;)V

    :cond_a
    throw v1

    .line 105
    :cond_b
    invoke-virtual {v6}, Le/y;->a()I

    move-result v5

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_d

    invoke-virtual {v6, v0}, Le/y;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "Content-Length"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v2}, Le/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Le/a/a;->a:Le/a/a;

    invoke-virtual {v6, v0}, Le/y;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v2, v9}, Le/a/a;->a(Le/z;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v7}, Le/z;->a()Le/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/ar;->a(Le/y;)Le/ar;

    move-result-object v0

    .line 106
    invoke-virtual {v4}, Le/aq;->i()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/ar;->a(J)Le/ar;

    move-result-object v0

    .line 107
    invoke-virtual {v4}, Le/aq;->j()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/ar;->b(J)Le/ar;

    move-result-object v0

    .line 108
    invoke-static {v3}, Le/a/a/a;->a(Le/aq;)Le/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/ar;->b(Le/aq;)Le/ar;

    move-result-object v0

    .line 109
    invoke-static {v4}, Le/a/a/a;->a(Le/aq;)Le/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/ar;->a(Le/aq;)Le/ar;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    .line 111
    invoke-virtual {v4}, Le/aq;->f()Le/as;

    move-result-object v1

    invoke-virtual {v1}, Le/as;->close()V

    .line 115
    iget-object v1, p0, Le/a/a/a;->a:Le/a/a/i;

    .line 116
    iget-object v1, p0, Le/a/a/a;->a:Le/a/a/i;

    goto/16 :goto_1

    .line 119
    :cond_e
    invoke-virtual {v3}, Le/aq;->f()Le/as;

    move-result-object v0

    invoke-static {v0}, Le/a/c;->a(Ljava/io/Closeable;)V

    .line 123
    :cond_f
    invoke-virtual {v4}, Le/aq;->g()Le/ar;

    move-result-object v0

    .line 124
    invoke-static {v3}, Le/a/a/a;->a(Le/aq;)Le/aq;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/ar;->b(Le/aq;)Le/ar;

    move-result-object v0

    .line 125
    invoke-static {v4}, Le/a/a/a;->a(Le/aq;)Le/aq;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/ar;->a(Le/aq;)Le/ar;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    .line 128
    invoke-static {v0}, Le/a/c/f;->b(Le/aq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v4}, Le/aq;->a()Le/am;

    move-result-object v2

    iget-object v3, p0, Le/a/a/a;->a:Le/a/a/i;

    if-nez v3, :cond_11

    .line 130
    :cond_10
    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Le/a/a/c;->a()Lf/y;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v3

    invoke-virtual {v3}, Le/as;->d()Lf/i;

    move-result-object v3

    invoke-static {v2}, Lf/o;->a(Lf/y;)Lf/h;

    move-result-object v2

    new-instance v4, Le/a/a/b;

    invoke-direct {v4, p0, v3, v1, v2}, Le/a/a/b;-><init>(Le/a/a/a;Lf/i;Le/a/a/c;Lf/h;)V

    invoke-virtual {v0}, Le/aq;->g()Le/ar;

    move-result-object v1

    new-instance v2, Le/a/c/i;

    invoke-virtual {v0}, Le/aq;->e()Le/y;

    move-result-object v0

    invoke-static {v4}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Le/a/c/i;-><init>(Le/y;Lf/i;)V

    invoke-virtual {v1, v2}, Le/ar;->a(Le/as;)Le/ar;

    move-result-object v0

    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    goto/16 :goto_1

    .line 129
    :cond_11
    invoke-static {v0, v2}, Le/a/a/d;->a(Le/aq;Le/am;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2}, Le/am;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "PATCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "PUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "MOVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    invoke-interface {v3}, Le/a/a/i;->b()Le/a/a/c;

    move-result-object v1

    goto :goto_4
.end method
