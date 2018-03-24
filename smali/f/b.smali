.class final Lf/b;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lf/y;


# instance fields
.field final synthetic a:Lf/y;

.field final synthetic b:Lf/a;


# direct methods
.method constructor <init>(Lf/a;Lf/y;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lf/b;->b:Lf/a;

    iput-object p2, p0, Lf/b;->a:Lf/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lf/b;->b:Lf/a;

    return-object v0
.end method

.method public final a_(Lf/f;J)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 161
    iget-wide v0, p1, Lf/f;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    move-wide v4, p2

    .line 163
    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p1, Lf/f;->a:Lf/v;

    move-object v6, v0

    move-wide v0, v2

    :goto_1
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 167
    iget-object v7, p1, Lf/f;->a:Lf/v;

    iget v7, v7, Lf/v;->c:I

    iget-object v8, p1, Lf/f;->a:Lf/v;

    iget v8, v8, Lf/v;->b:I

    sub-int/2addr v7, v8

    .line 168
    int-to-long v8, v7

    add-long/2addr v8, v0

    .line 169
    cmp-long v0, v8, v4

    if-ltz v0, :cond_1

    move-wide v0, v4

    .line 176
    :cond_0
    iget-object v6, p0, Lf/b;->b:Lf/a;

    invoke-virtual {v6}, Lf/a;->c()V

    .line 179
    :try_start_0
    iget-object v6, p0, Lf/b;->a:Lf/y;

    invoke-interface {v6, p1, v0, v1}, Lf/y;->a_(Lf/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    sub-long/2addr v4, v0

    .line 181
    iget-object v0, p0, Lf/b;->b:Lf/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/a;->a(Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, v6, Lf/v;->f:Lf/v;

    move-object v6, v0

    move-wide v0, v8

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    iget-object v1, p0, Lf/b;->b:Lf/a;

    invoke-virtual {v1, v0}, Lf/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/b;->b:Lf/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/a;->a(Z)V

    throw v0

    .line 187
    :cond_2
    return-void
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lf/b;->b:Lf/a;

    invoke-virtual {v0}, Lf/a;->c()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lf/b;->a:Lf/y;

    invoke-interface {v0}, Lf/y;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v0, p0, Lf/b;->b:Lf/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/a;->a(Z)V

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    iget-object v1, p0, Lf/b;->b:Lf/a;

    invoke-virtual {v1, v0}, Lf/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/b;->b:Lf/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/a;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lf/b;->b:Lf/a;

    invoke-virtual {v0}, Lf/a;->c()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lf/b;->a:Lf/y;

    invoke-interface {v0}, Lf/y;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lf/b;->b:Lf/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/a;->a(Z)V

    .line 200
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    iget-object v1, p0, Lf/b;->b:Lf/a;

    invoke-virtual {v1, v0}, Lf/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/b;->b:Lf/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/b;->a:Lf/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
