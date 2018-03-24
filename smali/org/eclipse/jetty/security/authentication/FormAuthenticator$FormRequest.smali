.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;
.super Lc/c/c/d;
.source "FormAuthenticator.java"


# direct methods
.method public constructor <init>(Lc/c/c/c;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lc/c/c/d;-><init>(Lc/c/c/c;)V

    .line 401
    return-void
.end method


# virtual methods
.method public getDateHeader(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 406
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-wide/16 v0, -0x1

    .line 408
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lc/c/c/d;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lc/c/c/d;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 422
    invoke-super {p0}, Lc/c/c/d;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 428
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lc/c/c/d;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method
