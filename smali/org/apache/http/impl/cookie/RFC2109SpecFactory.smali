.class public Lorg/apache/http/impl/cookie/RFC2109SpecFactory;
.super Ljava/lang/Object;
.source "RFC2109SpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 59
    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 65
    :goto_0
    const-string v1, "http.protocol.single-cookie-header"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 68
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    move-object v0, v1

    .line 70
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
