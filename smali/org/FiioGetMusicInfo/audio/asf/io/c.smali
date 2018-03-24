.class final Lorg/FiioGetMusicInfo/audio/asf/io/c;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a:J

    .line 37
    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->b:J

    .line 38
    return-void
.end method

.method private declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 66
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->b:J

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read()I
    .locals 4

    .prologue
    .line 74
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 75
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a(J)V

    .line 76
    return v0
.end method

.method public final read([BII)I
    .locals 4

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 86
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a(J)V

    .line 87
    return v0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 96
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a:J

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/c;->b:J

    .line 96
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 107
    invoke-direct {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a(J)V

    .line 108
    return-wide v0
.end method
