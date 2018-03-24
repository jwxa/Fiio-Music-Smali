.class final Le/ak;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Le/g;


# instance fields
.field final a:Le/ag;

.field final b:Le/a/c/k;

.field final c:Le/am;

.field final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Le/ag;Le/am;Z)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Le/ak;->a:Le/ag;

    .line 46
    iput-object p2, p0, Le/ak;->c:Le/am;

    .line 47
    iput-boolean p3, p0, Le/ak;->d:Z

    .line 48
    new-instance v0, Le/a/c/k;

    invoke-direct {v0, p1, p3}, Le/a/c/k;-><init>(Le/ag;Z)V

    iput-object v0, p0, Le/ak;->b:Le/a/c/k;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Le/ak;->b:Le/a/c/k;

    invoke-virtual {v0}, Le/a/c/k;->a()V

    .line 87
    return-void
.end method

.method public final a(Le/h;)V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Le/ak;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Le/ak;->e:Z

    .line 80
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Le/a/g/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/ak;->b:Le/a/c/k;

    invoke-virtual {v1, v0}, Le/a/c/k;->a(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Le/ak;->a:Le/ag;

    invoke-virtual {v0}, Le/ag;->s()Le/u;

    move-result-object v0

    new-instance v1, Le/al;

    invoke-direct {v1, p0, p1}, Le/al;-><init>(Le/ak;Le/h;)V

    invoke-virtual {v0, v1}, Le/u;->a(Le/al;)V

    .line 83
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Le/ak;->b:Le/a/c/k;

    invoke-virtual {v0}, Le/a/c/k;->b()Z

    move-result v0

    return v0
.end method

.method final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Le/ak;->b:Le/a/c/k;

    invoke-virtual {v0}, Le/a/c/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canceled "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Le/ak;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "web socket"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Le/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "call"

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Le/ak;

    iget-object v1, p0, Le/ak;->a:Le/ag;

    iget-object v2, p0, Le/ak;->c:Le/am;

    iget-boolean v3, p0, Le/ak;->d:Z

    invoke-direct {v0, v1, v2, v3}, Le/ak;-><init>(Le/ag;Le/am;Z)V

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Le/ak;->c:Le/am;

    iget-object v0, v0, Le/am;->a:Le/aa;

    invoke-virtual {v0}, Le/aa;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final e()Le/aq;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Le/ak;->a:Le/ag;

    invoke-virtual {v0}, Le/ag;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Le/ak;->b:Le/a/c/k;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Le/a/c/a;

    iget-object v3, p0, Le/ak;->a:Le/ag;

    invoke-virtual {v3}, Le/ag;->f()Le/s;

    move-result-object v3

    invoke-direct {v0, v3}, Le/a/c/a;-><init>(Le/s;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Le/a/a/a;

    iget-object v3, p0, Le/ak;->a:Le/ag;

    invoke-virtual {v3}, Le/ag;->g()Le/a/a/i;

    move-result-object v3

    invoke-direct {v0, v3}, Le/a/a/a;-><init>(Le/a/a/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Le/a/b/a;

    iget-object v3, p0, Le/ak;->a:Le/ag;

    invoke-direct {v0, v3}, Le/a/b/a;-><init>(Le/ag;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-boolean v0, p0, Le/ak;->d:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Le/ak;->a:Le/ag;

    invoke-virtual {v0}, Le/ag;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_0
    new-instance v0, Le/a/c/b;

    iget-boolean v3, p0, Le/ak;->d:Z

    invoke-direct {v0, v3}, Le/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Le/a/c/h;

    const/4 v5, 0x0

    iget-object v6, p0, Le/ak;->c:Le/am;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Le/a/c/h;-><init>(Ljava/util/List;Le/a/b/g;Le/a/c/c;Le/m;ILe/am;)V

    .line 179
    iget-object v1, p0, Le/ak;->c:Le/am;

    invoke-interface {v0, v1}, Le/ae;->a(Le/am;)Le/aq;

    move-result-object v0

    return-object v0
.end method
