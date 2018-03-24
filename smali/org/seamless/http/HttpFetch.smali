.class public Lorg/seamless/http/HttpFetch;
.super Ljava/lang/Object;
.source "HttpFetch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static fetch(Ljava/net/URL;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "II",
            "Lorg/seamless/http/HttpFetch$RepresentationFactory",
            "<TE;>;)",
            "Lorg/seamless/http/Representation",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "GET"

    invoke-static {p0, v0, p1, p2, p3}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;Ljava/lang/String;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static fetch(Ljava/net/URL;Ljava/lang/String;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "II",
            "Lorg/seamless/http/HttpFetch$RepresentationFactory",
            "<TE;>;)",
            "Lorg/seamless/http/Representation",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 70
    :try_start_2
    invoke-interface {p4, v0, v2}, Lorg/seamless/http/HttpFetch$RepresentationFactory;->createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/seamless/http/Representation;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 81
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 74
    :goto_0
    if-eqz v2, :cond_2

    .line 75
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 76
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching resource failed, returned status code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    .line 79
    :cond_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static fetchBinary(Ljava/net/URL;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/seamless/http/Representation",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x1f4

    .line 31
    invoke-static {p0, v0, v0}, Lorg/seamless/http/HttpFetch;->fetchBinary(Ljava/net/URL;II)Lorg/seamless/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static fetchBinary(Ljava/net/URL;II)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lorg/seamless/http/Representation",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/seamless/http/a;

    invoke-direct {v0}, Lorg/seamless/http/a;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static fetchString(Ljava/net/URL;II)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lorg/seamless/http/Representation",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/seamless/http/b;

    invoke-direct {v0}, Lorg/seamless/http/b;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static validate(Ljava/net/URL;)V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 90
    const-string v0, "HEAD"

    new-instance v1, Lorg/seamless/http/c;

    invoke-direct {v1}, Lorg/seamless/http/c;-><init>()V

    invoke-static {p0, v0, v2, v2, v1}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;Ljava/lang/String;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    .line 95
    return-void
.end method
