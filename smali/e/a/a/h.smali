.class final Le/a/a/h;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Le/a/a/g;


# virtual methods
.method final a(Lf/h;)V
    .locals 6

    .prologue
    .line 1003
    iget-object v1, p0, Le/a/a/h;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1004
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lf/h;->h(I)Lf/h;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lf/h;->j(J)Lf/h;

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    return-void
.end method
