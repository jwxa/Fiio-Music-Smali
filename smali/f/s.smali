.class final Lf/s;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lf/h;


# instance fields
.field public final a:Lf/f;

.field public final b:Lf/y;

.field c:Z


# direct methods
.method constructor <init>(Lf/y;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Lf/s;->a:Lf/f;

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lf/s;->b:Lf/y;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lf/s;->b:Lf/y;

    invoke-interface {v0}, Lf/y;->a()Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lf/f;J)V
    .locals 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1, p2, p3}, Lf/f;->a_(Lf/f;J)V

    .line 41
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    .line 42
    return-void
.end method

.method public final b(Ljava/lang/String;)Lf/h;
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->a(Ljava/lang/String;)Lf/f;

    .line 53
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)Lf/h;
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->a([B)Lf/f;

    .line 85
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lf/f;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lf/s;->a:Lf/f;

    return-object v0
.end method

.method public final c([BII)Lf/h;
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1, p2, p3}, Lf/f;->b([BII)Lf/f;

    .line 91
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6

    .prologue
    .line 222
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lf/s;->a:Lf/f;

    iget-wide v2, v1, Lf/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 229
    iget-object v1, p0, Lf/s;->b:Lf/y;

    iget-object v2, p0, Lf/s;->a:Lf/f;

    iget-object v3, p0, Lf/s;->a:Lf/f;

    iget-wide v4, v3, Lf/f;->b:J

    invoke-interface {v1, v2, v4, v5}, Lf/y;->a_(Lf/f;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lf/s;->b:Lf/y;

    invoke-interface {v1}, Lf/y;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/s;->c:Z

    .line 242
    if-eqz v0, :cond_0

    invoke-static {v0}, Lf/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 231
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final f(I)Lf/h;
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->d(I)Lf/f;

    .line 135
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 4

    .prologue
    .line 214
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    iget-wide v0, v0, Lf/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lf/s;->b:Lf/y;

    iget-object v1, p0, Lf/s;->a:Lf/f;

    iget-object v2, p0, Lf/s;->a:Lf/f;

    iget-wide v2, v2, Lf/f;->b:J

    invoke-interface {v0, v1, v2, v3}, Lf/y;->a_(Lf/f;J)V

    .line 218
    :cond_1
    iget-object v0, p0, Lf/s;->b:Lf/y;

    invoke-interface {v0}, Lf/y;->flush()V

    .line 219
    return-void
.end method

.method public final g(I)Lf/h;
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->c(I)Lf/f;

    .line 123
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)Lf/h;
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1}, Lf/f;->b(I)Lf/f;

    .line 117
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final i(J)Lf/h;
    .locals 3

    .prologue
    .line 163
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1, p2}, Lf/f;->h(J)Lf/f;

    .line 165
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final j(J)Lf/h;
    .locals 3

    .prologue
    .line 157
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0, p1, p2}, Lf/f;->g(J)Lf/f;

    .line 159
    invoke-virtual {p0}, Lf/s;->r()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lf/h;
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Lf/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lf/s;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->f()J

    move-result-wide v0

    .line 171
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lf/s;->b:Lf/y;

    iget-object v3, p0, Lf/s;->a:Lf/f;

    invoke-interface {v2, v3, v0, v1}, Lf/y;->a_(Lf/f;J)V

    .line 172
    :cond_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/s;->b:Lf/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
