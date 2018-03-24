.class final Le/a/a/b;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lf/z;


# instance fields
.field a:Z

.field final synthetic b:Lf/i;

.field final synthetic c:Le/a/a/c;

.field final synthetic d:Lf/h;

.field final synthetic e:Le/a/a/a;


# direct methods
.method constructor <init>(Le/a/a/a;Lf/i;Le/a/a/c;Lf/h;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Le/a/a/b;->e:Le/a/a/a;

    iput-object p2, p0, Le/a/a/b;->b:Lf/i;

    iput-object p3, p0, Le/a/a/b;->c:Le/a/a/c;

    iput-object p4, p0, Le/a/a/b;->d:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf/f;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 183
    :try_start_0
    iget-object v2, p0, Le/a/a/b;->b:Lf/i;

    invoke-interface {v2, p1, p2, p3}, Lf/i;->a(Lf/f;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 192
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 193
    iget-boolean v2, p0, Le/a/a/b;->a:Z

    if-nez v2, :cond_0

    .line 194
    iput-boolean v3, p0, Le/a/a/b;->a:Z

    .line 195
    iget-object v2, p0, Le/a/a/b;->d:Lf/h;

    invoke-interface {v2}, Lf/h;->close()V

    :cond_0
    move-wide v4, v0

    .line 202
    :goto_0
    return-wide v4

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-boolean v1, p0, Le/a/a/b;->a:Z

    if-nez v1, :cond_1

    .line 186
    iput-boolean v3, p0, Le/a/a/b;->a:Z

    .line 187
    iget-object v1, p0, Le/a/a/b;->c:Le/a/a/c;

    .line 189
    :cond_1
    throw v0

    .line 200
    :cond_2
    iget-object v0, p0, Le/a/a/b;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->c()Lf/f;

    move-result-object v1

    invoke-virtual {p1}, Lf/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lf/f;->a(Lf/f;JJ)Lf/f;

    .line 201
    iget-object v0, p0, Le/a/a/b;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->r()Lf/h;

    goto :goto_0
.end method

.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Le/a/a/b;->b:Lf/i;

    invoke-interface {v0}, Lf/i;->a()Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Le/a/a/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    invoke-static {p0, v0}, Le/a/c;->a(Lf/z;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/b;->a:Z

    .line 213
    iget-object v0, p0, Le/a/a/b;->c:Le/a/a/c;

    .line 215
    :cond_0
    iget-object v0, p0, Le/a/a/b;->b:Lf/i;

    invoke-interface {v0}, Lf/i;->close()V

    .line 216
    return-void
.end method
