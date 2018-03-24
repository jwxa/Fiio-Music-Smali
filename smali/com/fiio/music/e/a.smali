.class public final Lcom/fiio/music/e/a;
.super Ljava/lang/Object;
.source "MLOG.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 19
    if-eqz p2, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method
