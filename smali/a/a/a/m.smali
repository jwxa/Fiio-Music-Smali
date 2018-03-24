.class public final La/a/a/m;
.super Ljava/lang/Object;
.source "IOAdapter.java"


# instance fields
.field a:Ljava/io/RandomAccessFile;

.field b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, La/a/a/m;->a:Ljava/io/RandomAccessFile;

    .line 24
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, La/a/a/m;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, La/a/a/m;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 33
    :cond_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, La/a/a/m;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, La/a/a/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
