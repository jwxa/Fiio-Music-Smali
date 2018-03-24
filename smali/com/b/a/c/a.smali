.class public final Lcom/b/a/c/a;
.super Ljava/lang/Object;
.source "DiskCacheUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/b/a/a/a/a;)Z
    .locals 2

    .prologue
    .line 46
    invoke-interface {p1, p0}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
