.class public final Le/aq;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Le/am;

.field final b:Le/aj;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Le/x;

.field final f:Le/y;

.field final g:Le/as;

.field final h:Le/aq;

.field final i:Le/aq;

.field final j:Le/aq;

.field final k:J

.field final l:J

.field private volatile m:Le/e;


# direct methods
.method constructor <init>(Le/ar;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Le/ar;->a:Le/am;

    iput-object v0, p0, Le/aq;->a:Le/am;

    .line 60
    iget-object v0, p1, Le/ar;->b:Le/aj;

    iput-object v0, p0, Le/aq;->b:Le/aj;

    .line 61
    iget v0, p1, Le/ar;->c:I

    iput v0, p0, Le/aq;->c:I

    .line 62
    iget-object v0, p1, Le/ar;->d:Ljava/lang/String;

    iput-object v0, p0, Le/aq;->d:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Le/ar;->e:Le/x;

    iput-object v0, p0, Le/aq;->e:Le/x;

    .line 64
    iget-object v0, p1, Le/ar;->f:Le/z;

    invoke-virtual {v0}, Le/z;->a()Le/y;

    move-result-object v0

    iput-object v0, p0, Le/aq;->f:Le/y;

    .line 65
    iget-object v0, p1, Le/ar;->g:Le/as;

    iput-object v0, p0, Le/aq;->g:Le/as;

    .line 66
    iget-object v0, p1, Le/ar;->h:Le/aq;

    iput-object v0, p0, Le/aq;->h:Le/aq;

    .line 67
    iget-object v0, p1, Le/ar;->i:Le/aq;

    iput-object v0, p0, Le/aq;->i:Le/aq;

    .line 68
    iget-object v0, p1, Le/ar;->j:Le/aq;

    iput-object v0, p0, Le/aq;->j:Le/aq;

    .line 69
    iget-wide v0, p1, Le/ar;->k:J

    iput-wide v0, p0, Le/aq;->k:J

    .line 70
    iget-wide v0, p1, Le/ar;->l:J

    iput-wide v0, p0, Le/aq;->l:J

    .line 71
    return-void
.end method


# virtual methods
.method public final a()Le/am;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Le/aq;->a:Le/am;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Le/aq;->f:Le/y;

    invoke-virtual {v0, p1}, Le/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Le/aq;->c:I

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Le/aq;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Le/aq;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Le/aq;->g:Le/as;

    invoke-virtual {v0}, Le/as;->close()V

    .line 274
    return-void
.end method

.method public final d()Le/x;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Le/aq;->e:Le/x;

    return-object v0
.end method

.method public final e()Le/y;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Le/aq;->f:Le/y;

    return-object v0
.end method

.method public final f()Le/as;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Le/aq;->g:Le/as;

    return-object v0
.end method

.method public final g()Le/ar;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Le/ar;

    invoke-direct {v0, p0}, Le/ar;-><init>(Le/aq;)V

    return-object v0
.end method

.method public final h()Le/e;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Le/aq;->m:Le/e;

    .line 250
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/aq;->f:Le/y;

    invoke-static {v0}, Le/e;->a(Le/y;)Le/e;

    move-result-object v0

    iput-object v0, p0, Le/aq;->m:Le/e;

    goto :goto_0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Le/aq;->k:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Le/aq;->l:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/aq;->b:Le/aj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/aq;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/aq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/aq;->a:Le/am;

    .line 284
    iget-object v1, v1, Le/am;->a:Le/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    return-object v0
.end method
