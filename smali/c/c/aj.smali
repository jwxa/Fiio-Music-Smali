.class public Lc/c/aj;
.super Ljava/lang/Object;
.source "ServletResponseWrapper.java"

# interfaces
.implements Lc/c/ai;


# instance fields
.field private response:Lc/c/ai;


# direct methods
.method public constructor <init>(Lc/c/ai;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lc/c/aj;->response:Lc/c/ai;

    .line 92
    return-void
.end method


# virtual methods
.method public flushBuffer()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->flushBuffer()V

    .line 207
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Lc/c/z;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->getOutputStream()Lc/c/z;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isWrapperFor(Lc/c/ai;)Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    if-ne v0, p1, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    instance-of v0, v0, Lc/c/aj;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    check-cast v0, Lc/c/aj;

    invoke-virtual {v0, p1}, Lc/c/aj;->isWrapperFor(Lc/c/ai;)Z

    move-result v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 3

    .prologue
    .line 291
    const-class v0, Lc/c/ai;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a subinterface of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lc/c/ai;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    .line 298
    :cond_1
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    instance-of v0, v0, Lc/c/aj;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    check-cast v0, Lc/c/aj;

    invoke-virtual {v0, p1}, Lc/c/aj;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->reset()V

    .line 224
    return-void
.end method

.method public resetBuffer()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0}, Lc/c/ai;->resetBuffer()V

    .line 233
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0, p1}, Lc/c/ai;->setBufferSize(I)V

    .line 190
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0, p1}, Lc/c/ai;->setCharacterEncoding(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setContentLength(I)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0, p1}, Lc/c/ai;->setContentLength(I)V

    .line 162
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0, p1}, Lc/c/ai;->setContentType(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lc/c/aj;->response:Lc/c/ai;

    invoke-interface {v0, p1}, Lc/c/ai;->setLocale(Ljava/util/Locale;)V

    .line 242
    return-void
.end method

.method public setResponse(Lc/c/ai;)V
    .locals 2

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lc/c/aj;->response:Lc/c/ai;

    .line 113
    return-void
.end method
