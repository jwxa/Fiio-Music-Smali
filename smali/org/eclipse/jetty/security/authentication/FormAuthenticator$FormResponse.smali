.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;
.super Lc/c/c/f;
.source "FormAuthenticator.java"


# direct methods
.method public constructor <init>(Lc/c/c/e;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lc/c/c/f;-><init>(Lc/c/c/e;)V

    .line 441
    return-void
.end method

.method private notIgnored(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 473
    const-string v0, "Cache-Control"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Pragma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ETag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expires"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Last-Modified"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-super {p0, p1, p2, p3}, Lc/c/c/f;->addDateHeader(Ljava/lang/String;J)V

    .line 448
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-super {p0, p1, p2}, Lc/c/c/f;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-super {p0, p1, p2, p3}, Lc/c/c/f;->setDateHeader(Ljava/lang/String;J)V

    .line 462
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;->notIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-super {p0, p1, p2}, Lc/c/c/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method
