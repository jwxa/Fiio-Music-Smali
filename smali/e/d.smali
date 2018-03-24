.class public final Le/d;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Le/a/a/i;

.field final b:Le/a/a/f;


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Le/d;->b:Le/a/a/f;

    invoke-virtual {v0}, Le/a/a/f;->close()V

    .line 391
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Le/d;->b:Le/a/a/f;

    invoke-virtual {v0}, Le/a/a/f;->flush()V

    .line 387
    return-void
.end method
