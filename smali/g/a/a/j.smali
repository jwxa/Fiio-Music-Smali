.class final Lg/a/a/j;
.super Ljava/io/FilterOutputStream;
.source "FixedLengthOutputStream.java"


# instance fields
.field a:Lg/a/a/h;

.field private b:J

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Lg/a/a/h;Ljava/io/OutputStream;J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    iput-boolean v0, p0, Lg/a/a/j;->c:Z

    .line 27
    iput-boolean v0, p0, Lg/a/a/j;->d:Z

    .line 32
    iput-object p1, p0, Lg/a/a/j;->a:Lg/a/a/h;

    .line 33
    iput-wide p3, p0, Lg/a/a/j;->b:J

    .line 34
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 65
    iget-boolean v0, p0, Lg/a/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-boolean v4, p0, Lg/a/a/j;->d:Z

    .line 69
    iget-wide v0, p0, Lg/a/a/j;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lg/a/a/j;->a:Lg/a/a/h;

    invoke-virtual {v0}, Lg/a/a/h;->f()V

    .line 71
    new-instance v0, Ljava/io/IOException;

    const-string v1, "insufficient bytes written to stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lg/a/a/j;->flush()V

    .line 74
    iput-boolean v4, p0, Lg/a/a/j;->c:Z

    .line 75
    iget-object v0, p0, Lg/a/a/j;->a:Lg/a/a/h;

    invoke-virtual {v0}, Lg/a/a/h;->h()Lg/a/a/q;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lg/a/a/q;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lg/a/a/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_2
    :goto_1
    new-instance v0, Lg/a/a/ao;

    iget-object v1, p0, Lg/a/a/j;->a:Lg/a/a/h;

    invoke-direct {v0, v1}, Lg/a/a/ao;-><init>(Lg/a/a/h;)V

    .line 82
    iget-object v1, p0, Lg/a/a/j;->a:Lg/a/a/h;

    invoke-virtual {v1}, Lg/a/a/h;->e()Lg/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lg/a/a/l;->c()Lg/a/a/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/a/a/ae;->a(Lg/a/a/g;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final write(I)V
    .locals 4

    .prologue
    .line 37
    iget-boolean v0, p0, Lg/a/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-wide v0, p0, Lg/a/a/j;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lg/a/a/j;->c:Z

    .line 41
    iget-boolean v0, p0, Lg/a/a/j;->c:Z

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lg/a/a/al;

    invoke-direct {v0}, Lg/a/a/al;-><init>()V

    throw v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lg/a/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 45
    iget-wide v0, p0, Lg/a/a/j;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lg/a/a/j;->b:J

    .line 46
    return-void
.end method

.method public final write([BII)V
    .locals 4

    .prologue
    .line 49
    iget-boolean v0, p0, Lg/a/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-wide v0, p0, Lg/a/a/j;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lg/a/a/j;->c:Z

    .line 53
    iget-boolean v0, p0, Lg/a/a/j;->c:Z

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Lg/a/a/al;

    invoke-direct {v0}, Lg/a/a/al;-><init>()V

    throw v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    int-to-long v0, p3

    iget-wide v2, p0, Lg/a/a/j;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many bytes to write to stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    iget-object v0, p0, Lg/a/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 61
    iget-wide v0, p0, Lg/a/a/j;->b:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lg/a/a/j;->b:J

    .line 62
    return-void
.end method
