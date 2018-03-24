.class public final Le/a/d/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Le/a/c/c;


# instance fields
.field final a:Le/ag;

.field final b:Le/a/b/g;

.field final c:Lf/i;

.field final d:Lf/h;

.field e:I


# direct methods
.method public constructor <init>(Le/ag;Le/a/b/g;Lf/i;Lf/h;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Le/a/d/a;->e:I

    .line 89
    iput-object p1, p0, Le/a/d/a;->a:Le/ag;

    .line 90
    iput-object p2, p0, Le/a/d/a;->b:Le/a/b/g;

    .line 91
    iput-object p3, p0, Le/a/d/a;->c:Lf/i;

    .line 92
    iput-object p4, p0, Le/a/d/a;->d:Lf/h;

    .line 93
    return-void
.end method

.method static a(Lf/l;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lf/l;->a()Lf/aa;

    move-result-object v0

    .line 261
    sget-object v1, Lf/aa;->b:Lf/aa;

    invoke-virtual {p0, v1}, Lf/l;->a(Lf/aa;)Lf/l;

    .line 262
    invoke-virtual {v0}, Lf/aa;->e_()Lf/aa;

    .line 263
    invoke-virtual {v0}, Lf/aa;->d_()Lf/aa;

    .line 264
    return-void
.end method


# virtual methods
.method public final a(Le/aq;)Le/as;
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 136
    invoke-static {p1}, Le/a/c/f;->b(Le/aq;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/d/a;->a(J)Lf/z;

    move-result-object v0

    .line 137
    :goto_0
    new-instance v1, Le/a/c/i;

    invoke-virtual {p1}, Le/aq;->e()Le/y;

    move-result-object v2

    invoke-static {v0}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Le/a/c/i;-><init>(Le/y;Lf/i;)V

    return-object v1

    .line 136
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Le/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le/aq;->a()Le/am;

    move-result-object v0

    invoke-virtual {v0}, Le/am;->a()Le/aa;

    move-result-object v1

    iget v0, p0, Le/a/d/a;->e:I

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v5, p0, Le/a/d/a;->e:I

    new-instance v0, Le/a/d/d;

    invoke-direct {v0, p0, v1}, Le/a/d/d;-><init>(Le/a/d/a;Le/aa;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/a/c/f;->a(Le/aq;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Le/a/d/a;->a(J)Lf/z;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p0, Le/a/d/a;->e:I

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Le/a/d/a;->b:Le/a/b/g;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput v5, p0, Le/a/d/a;->e:I

    iget-object v0, p0, Le/a/d/a;->b:Le/a/b/g;

    invoke-virtual {v0}, Le/a/b/g;->d()V

    new-instance v0, Le/a/d/g;

    invoke-direct {v0, p0}, Le/a/d/g;-><init>(Le/a/d/a;)V

    goto/16 :goto_0
.end method

.method public final a(Le/am;J)Lf/y;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 96
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Le/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Le/a/d/a;->e:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v3, p0, Le/a/d/a;->e:I

    new-instance v0, Le/a/d/c;

    invoke-direct {v0, p0}, Le/a/d/c;-><init>(Le/a/d/a;)V

    .line 103
    :goto_0
    return-object v0

    .line 101
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 103
    iget v0, p0, Le/a/d/a;->e:I

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v3, p0, Le/a/d/a;->e:I

    new-instance v0, Le/a/d/e;

    invoke-direct {v0, p0, p2, p3}, Le/a/d/e;-><init>(Le/a/d/a;J)V

    goto :goto_0

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)Lf/z;
    .locals 3

    .prologue
    .line 235
    iget v0, p0, Le/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Le/a/d/a;->e:I

    .line 237
    new-instance v0, Le/a/d/f;

    invoke-direct {v0, p0, p1, p2}, Le/a/d/f;-><init>(Le/a/d/a;J)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V

    .line 167
    return-void
.end method

.method public final a(Le/am;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Le/a/d/a;->b:Le/a/b/g;

    .line 127
    invoke-virtual {v0}, Le/a/b/g;->b()Le/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/c;->a()Le/au;

    move-result-object v0

    invoke-virtual {v0}, Le/au;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/am;->h()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/am;->a()Le/aa;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Le/am;->c()Le/y;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Le/a/d/a;->a(Le/y;Ljava/lang/String;)V

    .line 129
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/am;->a()Le/aa;

    move-result-object v0

    invoke-static {v0}, Le/a/c/j;->a(Le/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final a(Le/y;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 171
    iget v0, p0, Le/a/d/a;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0, p2}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1}, Le/y;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Le/a/d/a;->d:Lf/h;

    invoke-virtual {p1, v0}, Le/y;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v2

    const-string v3, ": "

    .line 175
    invoke-interface {v2, v3}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0}, Le/y;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v2

    const-string v3, "\r\n"

    .line 177
    invoke-interface {v2, v3}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Le/a/d/a;->d:Lf/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Le/a/d/a;->e:I

    .line 181
    return-void
.end method

.method public final b()Le/ar;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Le/a/d/a;->d()Le/ar;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Le/a/d/a;->b:Le/a/b/g;

    invoke-virtual {v0}, Le/a/b/g;->b()Le/a/b/c;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/b/c;->b()V

    .line 113
    :cond_0
    return-void
.end method

.method public final d()Le/ar;
    .locals 4

    .prologue
    .line 185
    iget v0, p0, Le/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Le/a/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/d/a;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/l;->a(Ljava/lang/String;)Le/a/c/l;

    move-result-object v0

    .line 193
    new-instance v1, Le/ar;

    invoke-direct {v1}, Le/ar;-><init>()V

    iget-object v2, v0, Le/a/c/l;->a:Le/aj;

    .line 194
    invoke-virtual {v1, v2}, Le/ar;->a(Le/aj;)Le/ar;

    move-result-object v1

    iget v2, v0, Le/a/c/l;->b:I

    .line 195
    invoke-virtual {v1, v2}, Le/ar;->a(I)Le/ar;

    move-result-object v1

    iget-object v2, v0, Le/a/c/l;->c:Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v2}, Le/ar;->a(Ljava/lang/String;)Le/ar;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Le/a/d/a;->e()Le/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/ar;->a(Le/y;)Le/ar;

    move-result-object v1

    .line 199
    iget v0, v0, Le/a/c/l;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 200
    const/4 v0, 0x4

    iput v0, p0, Le/a/d/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Le/a/d/a;->b:Le/a/b/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v1
.end method

.method public final e()Le/y;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Le/z;

    invoke-direct {v0}, Le/z;-><init>()V

    .line 216
    :goto_0
    iget-object v1, p0, Le/a/d/a;->c:Lf/i;

    invoke-interface {v1}, Lf/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Le/a/a;->a:Le/a/a;

    invoke-virtual {v2, v0, v1}, Le/a/a;->a(Le/z;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Le/z;->a()Le/y;

    move-result-object v0

    return-object v0
.end method
