.class final Le/a/e/ae;
.super Lf/a;
.source "Http2Stream.java"


# instance fields
.field final synthetic a:Le/a/e/ab;


# direct methods
.method constructor <init>(Le/a/e/ab;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Le/a/e/ae;->a:Le/a/e/ab;

    invoke-direct {p0}, Lf/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 587
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 588
    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 591
    :cond_0
    return-object v0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Le/a/e/ae;->a:Le/a/e/ab;

    sget-object v1, Le/a/e/b;->f:Le/a/e/b;

    invoke-virtual {v0, v1}, Le/a/e/ab;->b(Le/a/e/b;)V

    .line 584
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Le/a/e/ae;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/e/ae;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 596
    :cond_0
    return-void
.end method
