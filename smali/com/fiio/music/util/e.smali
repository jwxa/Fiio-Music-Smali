.class public final Lcom/fiio/music/util/e;
.super Ljava/lang/Object;
.source "CharacterEnding.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v0, "UTF-8"

    .line 30
    invoke-static {}, Lb/a/a/a/b;->a()Lb/a/a/a/b;

    move-result-object v1

    .line 31
    invoke-static {}, Lb/a/a/a/d;->a()Lb/a/a/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/b;->a(Lb/a/a/a/c;)Z

    .line 33
    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Lb/a/a/a/b;->a(Ljava/net/URL;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method
