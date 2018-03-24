.class public final Le/a/c/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Le/ad;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Le/a/c/b;->a:Z

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Le/ae;)Le/aq;
    .locals 8

    .prologue
    .line 38
    move-object v0, p1

    check-cast v0, Le/a/c/h;

    invoke-virtual {v0}, Le/a/c/h;->c()Le/a/c/c;

    move-result-object v1

    move-object v0, p1

    .line 39
    check-cast v0, Le/a/c/h;

    invoke-virtual {v0}, Le/a/c/h;->b()Le/a/b/g;

    move-result-object v2

    .line 40
    invoke-interface {p1}, Le/ae;->a()Le/am;

    move-result-object v0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 43
    invoke-interface {v1, v0}, Le/a/c/c;->a(Le/am;)V

    .line 45
    invoke-virtual {v0}, Le/am;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/c/g;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Le/am;->d()Le/ao;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v0}, Le/am;->d()Le/ao;

    move-result-object v3

    invoke-virtual {v3}, Le/ao;->b()J

    move-result-wide v6

    invoke-interface {v1, v0, v6, v7}, Le/a/c/c;->a(Le/am;J)Lf/y;

    move-result-object v3

    .line 47
    invoke-static {v3}, Lf/o;->a(Lf/y;)Lf/h;

    move-result-object v3

    .line 48
    invoke-virtual {v0}, Le/am;->d()Le/ao;

    move-result-object v6

    invoke-virtual {v6, v3}, Le/ao;->a(Lf/h;)V

    .line 49
    invoke-interface {v3}, Lf/h;->close()V

    .line 52
    :cond_0
    invoke-interface {v1}, Le/a/c/c;->a()V

    .line 54
    invoke-interface {v1}, Le/a/c/c;->b()Le/ar;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v0}, Le/ar;->a(Le/am;)Le/ar;

    move-result-object v0

    .line 56
    invoke-virtual {v2}, Le/a/b/g;->b()Le/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Le/a/b/c;->d()Le/x;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/ar;->a(Le/x;)Le/ar;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4, v5}, Le/ar;->a(J)Le/ar;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Le/ar;->b(J)Le/ar;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Le/aq;->b()I

    move-result v3

    .line 62
    iget-boolean v4, p0, Le/a/c/b;->a:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x65

    if-ne v3, v4, :cond_4

    .line 64
    invoke-virtual {v0}, Le/aq;->g()Le/ar;

    move-result-object v0

    sget-object v1, Le/a/c;->c:Le/as;

    .line 65
    invoke-virtual {v0, v1}, Le/ar;->a(Le/as;)Le/ar;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    .line 73
    :goto_0
    const-string v1, "close"

    invoke-virtual {v0}, Le/aq;->a()Le/am;

    move-result-object v4

    const-string v5, "Connection"

    invoke-virtual {v4, v5}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "close"

    const-string v4, "Connection"

    .line 74
    invoke-virtual {v0, v4}, Le/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    :cond_1
    invoke-virtual {v2}, Le/a/b/g;->d()V

    .line 78
    :cond_2
    const/16 v1, 0xcc

    if-eq v3, v1, :cond_3

    const/16 v1, 0xcd

    if-ne v3, v1, :cond_5

    :cond_3
    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v1

    invoke-virtual {v1}, Le/as;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 79
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Le/aq;->f()Le/as;

    move-result-object v0

    invoke-virtual {v0}, Le/as;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_4
    invoke-virtual {v0}, Le/aq;->g()Le/ar;

    move-result-object v4

    .line 69
    invoke-interface {v1, v0}, Le/a/c/c;->a(Le/aq;)Le/as;

    move-result-object v0

    invoke-virtual {v4, v0}, Le/ar;->a(Le/as;)Le/ar;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Le/ar;->a()Le/aq;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_5
    return-object v0
.end method
