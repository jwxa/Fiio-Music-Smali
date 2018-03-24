.class final La/a/a/b;
.super Ljava/lang/Object;
.source "Frame.java"


# direct methods
.method public static a(La/a/a/d;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, La/a/a/d;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/h;

    invoke-virtual {v0}, La/a/a/h;->b()[B
    :try_end_0
    .catch La/a/a/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
