.class abstract Lg/a/a/q;
.super Ljava/io/FilterInputStream;
.source "LeftOverInputStream.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field d:Lg/a/a/h;

.field e:Lg/a/a/ae;

.field protected f:Z

.field protected g:Z

.field h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lg/a/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/q;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lg/a/a/h;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-boolean v0, p0, Lg/a/a/q;->f:Z

    .line 29
    iput-boolean v0, p0, Lg/a/a/q;->g:Z

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/q;->h:[B

    .line 34
    iput-object p1, p0, Lg/a/a/q;->d:Lg/a/a/h;

    .line 35
    invoke-virtual {p1}, Lg/a/a/h;->n()Lg/a/a/ae;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/q;->e:Lg/a/a/ae;

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract a([BII)I
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lg/a/a/q;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/a/a/q;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lg/a/a/q;->f:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lg/a/a/q;->g:Z

    return v0
.end method

.method public close()V
    .locals 11

    .prologue
    const/16 v10, 0x800

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 46
    iget-boolean v2, p0, Lg/a/a/q;->f:Z

    if-eqz v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iput-boolean v0, p0, Lg/a/a/q;->f:Z

    .line 50
    iget-boolean v2, p0, Lg/a/a/q;->g:Z

    if-nez v2, :cond_0

    .line 51
    invoke-static {}, Lg/a/a/ad;->g()J

    move-result-wide v2

    new-array v4, v10, [B

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    invoke-virtual {p0, v4, v1, v10}, Lg/a/a/q;->a([BII)I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iput-boolean v0, p0, Lg/a/a/q;->g:Z

    :goto_2
    iput-boolean v0, p0, Lg/a/a/q;->g:Z

    goto :goto_0

    :cond_2
    sub-long/2addr v2, v6

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public declared-synchronized read()I
    .locals 3

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/q;->f:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/a/a/q;->h:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lg/a/a/q;->a([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 70
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    .line 73
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lg/a/a/q;->h:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public declared-synchronized read([BII)I
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/a/a/q;->f:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lg/a/a/q;->a([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method
