.class final Le/k;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Lf/j;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 297
    instance-of v0, p1, Le/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/k;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Le/k;

    iget-object v0, v0, Le/k;->a:Ljava/lang/String;

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/k;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Le/k;

    iget-object v0, v0, Le/k;->c:Ljava/lang/String;

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/k;->d:Lf/j;

    check-cast p1, Le/k;

    iget-object v1, p1, Le/k;->d:Lf/j;

    .line 300
    invoke-virtual {v0, v1}, Lf/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 297
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Le/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 306
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/k;->d:Lf/j;

    invoke-virtual {v1}, Lf/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k;->d:Lf/j;

    invoke-virtual {v1}, Lf/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
