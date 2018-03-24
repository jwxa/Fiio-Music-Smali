.class public final Le/a/b/g;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Le/a;

.field private c:Le/au;

.field private final d:Le/n;

.field private final e:Ljava/lang/Object;

.field private final f:Le/a/b/f;

.field private g:I

.field private h:Le/a/b/c;

.field private i:Z

.field private j:Z

.field private k:Le/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Le/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Le/a/b/g;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Le/n;Le/a;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Le/a/b/g;->d:Le/n;

    .line 89
    iput-object p2, p0, Le/a/b/g;->a:Le/a;

    .line 90
    new-instance v0, Le/a/b/f;

    invoke-direct {p0}, Le/a/b/g;->g()Le/a/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Le/a/b/f;-><init>(Le/a;Le/a/b/d;)V

    iput-object v0, p0, Le/a/b/g;->f:Le/a/b/f;

    .line 91
    iput-object p3, p0, Le/a/b/g;->e:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private a(IIIZ)Le/a/b/c;
    .locals 6

    .prologue
    .line 160
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-boolean v0, p0, Le/a/b/g;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "codec != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iget-boolean v0, p0, Le/a/b/g;->j:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    .line 166
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Le/a/b/c;->h:Z

    if-nez v2, :cond_3

    .line 167
    monitor-exit v1

    .line 200
    :goto_0
    return-object v0

    .line 171
    :cond_3
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v2, p0, Le/a/b/g;->d:Le/n;

    iget-object v3, p0, Le/a/b/g;->a:Le/a;

    invoke-virtual {v0, v2, v3, p0}, Le/a/a;->a(Le/n;Le/a;Le/a/b/g;)Le/a/b/c;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    iput-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    .line 174
    monitor-exit v1

    goto :goto_0

    .line 177
    :cond_4
    iget-object v0, p0, Le/a/b/g;->c:Le/au;

    .line 178
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-nez v0, :cond_6

    .line 181
    iget-object v0, p0, Le/a/b/g;->f:Le/a/b/f;

    invoke-virtual {v0}, Le/a/b/f;->b()Le/au;

    move-result-object v0

    .line 182
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 183
    :try_start_2
    iput-object v0, p0, Le/a/b/g;->c:Le/au;

    .line 184
    const/4 v2, 0x0

    iput v2, p0, Le/a/b/g;->g:I

    .line 185
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    .line 187
    :goto_1
    new-instance v0, Le/a/b/c;

    invoke-direct {v0, v1}, Le/a/b/c;-><init>(Le/au;)V

    .line 189
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 190
    :try_start_3
    invoke-virtual {p0, v0}, Le/a/b/g;->a(Le/a/b/c;)V

    .line 191
    sget-object v2, Le/a/a;->a:Le/a/a;

    iget-object v3, p0, Le/a/b/g;->d:Le/n;

    invoke-virtual {v2, v3, v0}, Le/a/a;->b(Le/n;Le/a/b/c;)V

    .line 192
    iput-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    .line 193
    iget-boolean v2, p0, Le/a/b/g;->j:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 185
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 194
    :cond_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    iget-object v1, p0, Le/a/b/g;->a:Le/a;

    invoke-virtual {v1}, Le/a;->f()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Le/a/b/c;->a(IIILjava/util/List;Z)V

    .line 198
    invoke-direct {p0}, Le/a/b/g;->g()Le/a/b/d;

    move-result-object v1

    invoke-virtual {v0}, Le/a/b/c;->a()Le/au;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/b/d;->b(Le/au;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private a(IIIZZ)Le/a/b/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/b/g;->a(IIIZ)Le/a/b/c;

    move-result-object v0

    .line 136
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 137
    :try_start_0
    iget v2, v0, Le/a/b/c;->c:I

    if-nez v2, :cond_1

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    return-object v0

    .line 140
    :cond_1
    monitor-exit v1

    .line 144
    invoke-virtual {v0, p5}, Le/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v3}, Le/a/b/g;->a(ZZZ)V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ZZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 243
    .line 244
    iget-object v3, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v3

    .line 245
    if-eqz p3, :cond_0

    .line 246
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    .line 248
    :cond_0
    if-eqz p2, :cond_1

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/b/g;->i:Z

    .line 251
    :cond_1
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    if-eqz v0, :cond_8

    .line 252
    if-eqz p1, :cond_2

    .line 253
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Le/a/b/c;->h:Z

    .line 255
    :cond_2
    iget-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Le/a/b/g;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    iget-boolean v0, v0, Le/a/b/c;->h:Z

    if-eqz v0, :cond_8

    .line 256
    :cond_3
    iget-object v4, p0, Le/a/b/g;->h:Le/a/b/c;

    const/4 v0, 0x0

    iget-object v2, v4, Le/a/b/c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_6

    iget-object v0, v4, Le/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_5

    iget-object v0, v4, Le/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    iget-object v0, v0, Le/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v0, Le/a/b/c;->i:J

    .line 259
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v2, p0, Le/a/b/g;->d:Le/n;

    iget-object v4, p0, Le/a/b/g;->h:Le/a/b/c;

    invoke-virtual {v0, v2, v4}, Le/a/a;->a(Le/n;Le/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    iget-object v1, p0, Le/a/b/g;->h:Le/a/b/c;

    move-object v0, v1

    .line 263
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Le/a/b/g;->h:Le/a/b/c;

    .line 266
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {v0}, Le/a/b/c;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Le/a/c;->a(Ljava/net/Socket;)V

    .line 270
    :cond_4
    return-void

    .line 256
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method private g()Le/a/b/d;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Le/a/a;->a:Le/a/a;

    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    invoke-virtual {v0, v1}, Le/a/a;->a(Le/n;)Le/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Le/a/c/c;
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Le/ag;Z)Le/a/c/c;
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p1}, Le/ag;->a()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Le/ag;->b()I

    move-result v2

    .line 97
    invoke-virtual {p1}, Le/ag;->c()I

    move-result v3

    .line 98
    invoke-virtual {p1}, Le/ag;->r()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    .line 101
    :try_start_0
    invoke-direct/range {v0 .. v5}, Le/a/b/g;->a(IIIZZ)Le/a/b/c;

    move-result-object v1

    .line 105
    iget-object v0, v1, Le/a/b/c;->b:Le/a/e/j;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Le/a/e/h;

    iget-object v1, v1, Le/a/b/c;->b:Le/a/e/j;

    invoke-direct {v0, p1, p0, v1}, Le/a/e/h;-><init>(Le/ag;Le/a/b/g;Le/a/e/j;)V

    .line 115
    :goto_0
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    iput-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    .line 117
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 108
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Le/a/b/c;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 109
    iget-object v0, v1, Le/a/b/c;->d:Lf/i;

    invoke-interface {v0}, Lf/i;->a()Lf/aa;

    move-result-object v0

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    .line 110
    iget-object v0, v1, Le/a/b/c;->e:Lf/h;

    invoke-interface {v0}, Lf/h;->a()Lf/aa;

    move-result-object v0

    int-to-long v2, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    .line 111
    new-instance v0, Le/a/d/a;

    iget-object v2, v1, Le/a/b/c;->d:Lf/i;

    iget-object v1, v1, Le/a/b/c;->e:Lf/h;

    invoke-direct {v0, p1, p0, v2, v1}, Le/a/d/a;-><init>(Le/ag;Le/a/b/g;Lf/i;Lf/h;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Le/a/b/e;

    invoke-direct {v1, v0}, Le/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 118
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public final a(Le/a/b/c;)V
    .locals 3

    .prologue
    .line 324
    sget-boolean v0, Le/a/b/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/g;->d:Le/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 325
    :cond_0
    iget-object v0, p1, Le/a/b/c;->g:Ljava/util/List;

    new-instance v1, Le/a/b/h;

    iget-object v2, p0, Le/a/b/g;->e:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Le/a/b/h;-><init>(Le/a/b/g;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 288
    .line 290
    iget-object v3, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v3

    .line 291
    :try_start_0
    instance-of v0, p1, Le/a/e/am;

    if-eqz v0, :cond_3

    .line 292
    check-cast p1, Le/a/e/am;

    .line 293
    iget-object v0, p1, Le/a/e/am;->a:Le/a/e/b;

    sget-object v4, Le/a/e/b;->e:Le/a/e/b;

    if-ne v0, v4, :cond_0

    .line 294
    iget v0, p0, Le/a/b/g;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/b/g;->g:I

    .line 298
    :cond_0
    iget-object v0, p1, Le/a/e/am;->a:Le/a/e/b;

    sget-object v4, Le/a/e/b;->e:Le/a/e/b;

    if-ne v0, v4, :cond_1

    iget v0, p0, Le/a/b/g;->g:I

    if-le v0, v2, :cond_7

    .line 300
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/b/g;->c:Le/au;

    :cond_2
    :goto_0
    move v0, v2

    .line 314
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-direct {p0, v0, v1, v2}, Le/a/b/g;->a(ZZZ)V

    .line 317
    return-void

    .line 302
    :cond_3
    :try_start_1
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    invoke-virtual {v0}, Le/a/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    instance-of v0, p1, Le/a/e/a;

    if-eqz v0, :cond_7

    .line 307
    :cond_5
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    iget v0, v0, Le/a/b/c;->c:I

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Le/a/b/g;->c:Le/au;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 309
    iget-object v0, p0, Le/a/b/g;->f:Le/a/b/f;

    iget-object v4, p0, Le/a/b/g;->c:Le/au;

    invoke-virtual {v0, v4, p1}, Le/a/b/f;->a(Le/au;Ljava/io/IOException;)V

    .line 311
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/b/g;->c:Le/au;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public final a(ZLe/a/c/c;)V
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 205
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    if-eq p2, v0, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Le/a/b/g;->k:Le/a/c/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 208
    :cond_1
    if-nez p1, :cond_2

    .line 209
    :try_start_1
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;

    iget v2, v0, Le/a/b/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Le/a/b/c;->c:I

    .line 211
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Le/a/b/g;->a(ZZZ)V

    .line 213
    return-void
.end method

.method public final declared-synchronized b()Le/a/b/c;
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/b/g;->h:Le/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Le/a/b/g;->a(ZZZ)V

    .line 231
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Le/a/b/g;->a(ZZZ)V

    .line 236
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Le/a/b/g;->d:Le/n;

    monitor-enter v1

    .line 276
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Le/a/b/g;->j:Z

    .line 277
    iget-object v0, p0, Le/a/b/g;->k:Le/a/c/c;

    .line 278
    iget-object v2, p0, Le/a/b/g;->h:Le/a/b/c;

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Le/a/c/c;->c()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 282
    :cond_1
    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {v2}, Le/a/b/c;->b()V

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Le/a/b/g;->c:Le/au;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/g;->f:Le/a/b/f;

    invoke-virtual {v0}, Le/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Le/a/b/g;->a:Le/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
