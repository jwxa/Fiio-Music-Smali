.class final Le/al;
.super Le/a/b;
.source "RealCall.java"


# instance fields
.field final synthetic a:Le/ak;

.field private final c:Le/h;


# direct methods
.method constructor <init>(Le/ak;Le/h;)V
    .locals 4

    .prologue
    .line 109
    iput-object p1, p0, Le/al;->a:Le/ak;

    .line 110
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Le/ak;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iput-object p2, p0, Le/al;->c:Le/h;

    .line 112
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Le/al;->a:Le/ak;

    iget-object v0, v0, Le/ak;->c:Le/am;

    iget-object v0, v0, Le/am;->a:Le/aa;

    invoke-virtual {v0}, Le/aa;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 127
    const/4 v2, 0x0

    .line 129
    :try_start_0
    iget-object v0, p0, Le/al;->a:Le/ak;

    invoke-virtual {v0}, Le/ak;->e()Le/aq;

    move-result-object v0

    .line 130
    iget-object v3, p0, Le/al;->a:Le/ak;

    iget-object v3, v3, Le/ak;->b:Le/a/c/k;

    invoke-virtual {v3}, Le/a/c/k;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :try_start_1
    iget-object v0, p0, Le/al;->c:Le/h;

    iget-object v2, p0, Le/al;->a:Le/ak;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Le/h;->a(Le/g;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    iget-object v0, p0, Le/al;->a:Le/ak;

    iget-object v0, v0, Le/ak;->a:Le/ag;

    invoke-virtual {v0}, Le/ag;->s()Le/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/u;->b(Le/al;)V

    .line 146
    :goto_1
    return-void

    .line 135
    :cond_0
    :try_start_2
    iget-object v2, p0, Le/al;->c:Le/h;

    iget-object v3, p0, Le/al;->a:Le/ak;

    invoke-interface {v2, v3, v0}, Le/h;->a(Le/g;Le/aq;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :goto_2
    if-eqz v1, :cond_1

    .line 140
    :try_start_3
    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Le/al;->a:Le/ak;

    invoke-virtual {v4}, Le/ak;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Le/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :goto_3
    iget-object v0, p0, Le/al;->a:Le/ak;

    iget-object v0, v0, Le/ak;->a:Le/ag;

    invoke-virtual {v0}, Le/ag;->s()Le/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/u;->b(Le/al;)V

    goto :goto_1

    .line 142
    :cond_1
    :try_start_4
    iget-object v1, p0, Le/al;->c:Le/h;

    iget-object v2, p0, Le/al;->a:Le/ak;

    invoke-interface {v1, v2, v0}, Le/h;->a(Le/g;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 145
    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/al;->a:Le/ak;

    iget-object v1, v1, Le/ak;->a:Le/ag;

    invoke-virtual {v1}, Le/ag;->s()Le/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Le/u;->b(Le/al;)V

    throw v0

    .line 137
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
