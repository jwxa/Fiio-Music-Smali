.class public Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;
.super Lorg/apache/http/impl/DefaultHttpRequestFactory;
.source "UpnpHttpRequestFactory.java"


# static fields
.field private static final BASIC:[Ljava/lang/String;

.field private static final WITH_ENTITY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    const-string v1, "SUBSCRIBE"

    aput-object v1, v0, v2

    .line 36
    const-string v1, "UNSUBSCRIBE"

    aput-object v1, v0, v3

    .line 34
    sput-object v0, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->BASIC:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    .line 40
    const-string v1, "NOTIFY"

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->WITH_ENTITY:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    .line 45
    return-void
.end method

.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 53
    :goto_1
    return v1

    .line 49
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const/4 v1, 0x1

    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->BASIC:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->WITH_ENTITY:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;
    .locals 2

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/transport/impl/apache/UpnpHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method
