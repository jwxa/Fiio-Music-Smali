.class public Lorg/eclipse/jetty/server/ssl/SslCertificates;
.super Ljava/lang/Object;
.source "SslCertificates.java"


# static fields
.field static final CACHED_INFO_ATTR:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 44
    const-class v0, Lorg/eclipse/jetty/server/ssl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 6

    .prologue
    .line 107
    const-string v0, "https"

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 116
    sget-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ssl/a;

    .line 117
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/a;->b()Ljava/lang/Integer;

    move-result-object v2

    .line 120
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/a;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    if-eqz v1, :cond_0

    .line 134
    const-string v4, "javax.servlet.request.X509Certificate"

    invoke-virtual {p2, v4, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_0
    const-string v1, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, v1, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v1, "javax.servlet.request.key_size"

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v1, "javax.servlet.request.ssl_session_id"

    invoke-virtual {p2, v1, v0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :goto_1
    return-void

    .line 125
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v3}, Lorg/eclipse/jetty/server/ssl/ServletSSL;->deduceKeyLength(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 126
    invoke-static {p0}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 127
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 128
    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v4, Lorg/eclipse/jetty/server/ssl/a;

    invoke-direct {v4, v2, v1, v0}, Lorg/eclipse/jetty/server/ssl/a;-><init>(Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 130
    sget-object v5, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {p0, v5, v4}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 50
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 74
    :goto_0
    return-object v0

    .line 54
    :cond_1
    array-length v5, v4

    .line 55
    new-array v1, v5, [Ljava/security/cert/X509Certificate;

    .line 57
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 58
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_2

    .line 60
    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 61
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 65
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 73
    sget-object v1, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 74
    goto :goto_0
.end method
