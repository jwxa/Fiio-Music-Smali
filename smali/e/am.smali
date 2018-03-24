.class public final Le/am;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field final a:Le/aa;

.field final b:Ljava/lang/String;

.field final c:Le/y;

.field final d:Le/ao;

.field final e:Ljava/lang/Object;

.field private volatile f:Le/e;


# direct methods
.method constructor <init>(Le/an;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p1, Le/an;->a:Le/aa;

    iput-object v0, p0, Le/am;->a:Le/aa;

    .line 38
    iget-object v0, p1, Le/an;->b:Ljava/lang/String;

    iput-object v0, p0, Le/am;->b:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Le/an;->c:Le/z;

    invoke-virtual {v0}, Le/z;->a()Le/y;

    move-result-object v0

    iput-object v0, p0, Le/am;->c:Le/y;

    .line 40
    iget-object v0, p1, Le/an;->d:Le/ao;

    iput-object v0, p0, Le/am;->d:Le/ao;

    .line 41
    iget-object v0, p1, Le/an;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Le/an;->e:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Le/am;->e:Ljava/lang/Object;

    .line 42
    return-void

    :cond_0
    move-object v0, p0

    .line 41
    goto :goto_0
.end method


# virtual methods
.method public final a()Le/aa;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Le/am;->a:Le/aa;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Le/am;->c:Le/y;

    invoke-virtual {v0, p1}, Le/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Le/am;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Le/y;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Le/am;->c:Le/y;

    return-object v0
.end method

.method public final d()Le/ao;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Le/am;->d:Le/ao;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Le/am;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Le/an;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Le/an;

    invoke-direct {v0, p0}, Le/an;-><init>(Le/am;)V

    return-object v0
.end method

.method public final g()Le/e;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Le/am;->f:Le/e;

    .line 82
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/am;->c:Le/y;

    invoke-static {v0}, Le/e;->a(Le/y;)Le/e;

    move-result-object v0

    iput-object v0, p0, Le/am;->f:Le/e;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Le/am;->a:Le/aa;

    invoke-virtual {v0}, Le/aa;->c()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/am;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/am;->a:Le/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Le/am;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Le/am;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
