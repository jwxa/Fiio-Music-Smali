.class public abstract La/a/a/s;
.super Ljava/lang/Object;
.source "TextFrame.java"


# direct methods
.method public static a(La/a/a/d;Ljava/lang/String;)La/a/a/r;
    .locals 4

    .prologue
    .line 103
    new-instance v1, La/a/a/r;

    invoke-direct {v1}, La/a/a/r;-><init>()V

    .line 106
    :try_start_0
    invoke-virtual {p0, p1}, La/a/a/d;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/h;

    invoke-virtual {v0}, La/a/a/h;->b()[B

    move-result-object v0

    .line 109
    new-instance v2, La/a/a/q;

    invoke-virtual {p0}, La/a/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, La/a/a/q;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch La/a/a/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch La/a/a/p; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :try_start_1
    invoke-virtual {v2}, La/a/a/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/a/r;->c(Ljava/lang/String;)V
    :try_end_1
    .catch La/a/a/p; {:try_start_1 .. :try_end_1} :catch_0
    .catch La/a/a/f; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :try_start_2
    invoke-virtual {v2}, La/a/a/q;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/a/r;->a(Ljava/util/Date;)V

    .line 121
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    new-instance v0, La/a/a/c;

    invoke-direct {v0}, La/a/a/c;-><init>()V

    throw v0
    :try_end_2
    .catch La/a/a/f; {:try_start_2 .. :try_end_2} :catch_1
    .catch La/a/a/p; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
