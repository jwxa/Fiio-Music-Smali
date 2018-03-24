.class final Le/a/e/af;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field final a:Le/a/e/f;

.field private final c:Lf/h;

.field private final d:Z

.field private final e:Lf/f;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Le/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/a/e/af;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lf/h;Z)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Le/a/e/af;->c:Lf/h;

    .line 59
    iput-boolean p2, p0, Le/a/e/af;->d:Z

    .line 60
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Le/a/e/af;->e:Lf/f;

    .line 61
    new-instance v0, Le/a/e/f;

    iget-object v1, p0, Le/a/e/af;->e:Lf/f;

    invoke-direct {v0, v1}, Le/a/e/f;-><init>(Lf/f;)V

    iput-object v0, p0, Le/a/e/af;->a:Le/a/e/f;

    .line 62
    const/16 v0, 0x4000

    iput v0, p0, Le/a/e/af;->f:I

    .line 63
    return-void
.end method

.method private a(IIBB)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    sget-object v0, Le/a/e/af;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/a/e/af;->b:Ljava/util/logging/Logger;

    invoke-static {v3, p1, p2, p3, p4}, Le/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget v0, p0, Le/a/e/af;->f:I

    if-le p2, v0, :cond_1

    .line 268
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Le/a/e/af;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Le/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 270
    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Le/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 271
    :cond_2
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    and-int/lit16 v1, p2, 0xff

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    .line 272
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    .line 273
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    .line 274
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lf/h;->f(I)Lf/h;

    .line 275
    return-void
.end method

.method private b(IJ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 289
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_1

    .line 290
    iget v0, p0, Le/a/e/af;->f:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 291
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 292
    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_1
    invoke-direct {p0, p1, v1, v2, v0}, Le/a/e/af;->a(IIBB)V

    .line 293
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    iget-object v2, p0, Le/a/e/af;->e:Lf/f;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lf/h;->a_(Lf/f;J)V

    goto :goto_0

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Le/a/e/af;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 73
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    :try_start_2
    sget-object v0, Le/a/e/af;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    sget-object v0, Le/a/e/af;->b:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Le/a/e/g;->a:Lf/j;

    invoke-virtual {v4}, Lf/j;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Le/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    :cond_2
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    sget-object v1, Le/a/e/g;->a:Lf/j;

    invoke-virtual {v1}, Lf/j;->h()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lf/h;->b([B)Lf/h;

    .line 72
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 253
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 254
    :cond_1
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 254
    invoke-static {v0, v1}, Le/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 257
    :cond_2
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Le/a/e/af;->a(IIBB)V

    .line 261
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lf/h;->f(I)Lf/h;

    .line 262
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILe/a/e/b;)V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_0
    :try_start_1
    iget v0, p2, Le/a/e/b;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 147
    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Le/a/e/af;->a(IIBB)V

    .line 151
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    iget v1, p2, Le/a/e/b;->g:I

    invoke-interface {v0, v1}, Lf/h;->f(I)Lf/h;

    .line 152
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILe/a/e/b;[B)V
    .locals 4

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_0
    :try_start_1
    iget v0, p2, Le/a/e/b;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 234
    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 235
    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Le/a/e/af;->a(IIBB)V

    .line 239
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0, p1}, Lf/h;->f(I)Lf/h;

    .line 240
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    iget v1, p2, Le/a/e/b;->g:I

    invoke-interface {v0, v1}, Lf/h;->f(I)Lf/h;

    .line 241
    array-length v0, p3

    if-lez v0, :cond_2

    .line 242
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0, p3}, Lf/h;->b([B)Lf/h;

    .line 244
    :cond_2
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Le/a/e/al;)V
    .locals 4

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_0
    :try_start_1
    iget v0, p0, Le/a/e/af;->f:I

    invoke-virtual {p1, v0}, Le/a/e/al;->c(I)I

    move-result v0

    iput v0, p0, Le/a/e/af;->f:I

    .line 79
    invoke-virtual {p1}, Le/a/e/al;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Le/a/e/af;->a:Le/a/e/f;

    invoke-virtual {p1}, Le/a/e/al;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Le/a/e/f;->a(I)V

    .line 82
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Le/a/e/af;->a(IIBB)V

    .line 87
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Le/a/e/af;->g:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 215
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x6

    :try_start_1
    invoke-direct {p0, v1, v2, v3, v0}, Le/a/e/af;->a(IIBB)V

    .line 217
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0, p2}, Lf/h;->f(I)Lf/h;

    .line 218
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0, p3}, Lf/h;->f(I)Lf/h;

    .line 219
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILf/f;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Le/a/e/af;->g:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 173
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p2, p4, v1, v0}, Le/a/e/af;->a(IIBB)V

    if-lez p4, :cond_2

    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lf/h;->a_(Lf/f;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Le/a/e/af;->a:Le/a/e/f;

    invoke-virtual {v0, p3}, Le/a/e/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Le/a/e/af;->e:Lf/f;

    invoke-virtual {v0}, Lf/f;->b()J

    move-result-wide v2

    iget v0, p0, Le/a/e/af;->f:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x4

    :goto_0
    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, p2, v1, v4, v0}, Le/a/e/af;->a(IIBB)V

    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    iget-object v4, p0, Le/a/e/af;->e:Lf/f;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lf/h;->a_(Lf/f;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Le/a/e/af;->b(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_3
    monitor-exit p0

    return-void

    .line 127
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Le/a/e/al;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/e/af;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Le/a/e/al;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 188
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v0, v4, v5}, Le/a/e/af;->a(IIBB)V

    .line 192
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    .line 193
    invoke-virtual {p1, v2}, Le/a/e/al;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    if-ne v2, v1, :cond_2

    .line 196
    const/4 v0, 0x3

    .line 200
    :goto_1
    iget-object v3, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v3, v0}, Lf/h;->g(I)Lf/h;

    .line 201
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-virtual {p1, v2}, Le/a/e/al;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lf/h;->f(I)Lf/h;

    .line 192
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x7

    if-ne v2, v0, :cond_4

    move v0, v1

    .line 198
    goto :goto_1

    .line 203
    :cond_3
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Le/a/e/af;->f:I

    return v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Le/a/e/af;->g:Z

    .line 279
    iget-object v0, p0, Le/a/e/af;->c:Lf/h;

    invoke-interface {v0}, Lf/h;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
