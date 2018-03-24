.class public Lorg/fourthline/cling/model/message/UpnpRequest;
.super Lorg/fourthline/cling/model/message/UpnpOperation;
.source "UpnpRequest.java"


# instance fields
.field private method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 74
    iput-object p2, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpOperation;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getHttpMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getHttpName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->method:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/fourthline/cling/model/message/UpnpRequest;->uri:Ljava/net/URI;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
