.class public Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "ClientCertAuthenticator.java"


# static fields
.field private static final PASSWORD_PROPERTY:Ljava/lang/String; = "org.eclipse.jetty.ssl.password"


# instance fields
.field private _crlPath:Ljava/lang/String;

.field private _enableCRLDP:Z

.field private _enableOCSP:Z

.field private _maxCertPathLength:I

.field private _ocspResponderURL:Ljava/lang/String;

.field private transient _trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

.field private _trustStorePath:Ljava/lang/String;

.field private _trustStoreProvider:Ljava/lang/String;

.field private _trustStoreType:Ljava/lang/String;

.field private _validateCerts:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 57
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    .line 70
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    .line 77
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "CLIENT_CERT"

    return-object v0
.end method

.method public getCrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 166
    invoke-static {p1, p2, p3, p4, p5}, Lorg/eclipse/jetty/util/security/CertificateUtils;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_ocspResponderURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    return v0
.end method

.method public isValidateCerts()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    return v0
.end method

.method protected loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, Lorg/eclipse/jetty/util/security/CertificateUtils;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public setCrlPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setEnableCRLDP(Z)V
    .locals 0

    .prologue
    .line 330
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    .line 331
    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0

    .prologue
    .line 348
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    .line 349
    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0

    .prologue
    .line 312
    iput p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    .line 313
    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_ocspResponderURL:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setTrustStore(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    const-string v0, "org.eclipse.jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    .line 275
    return-void
.end method

.method public setTrustStoreProvider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setValidateCerts(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    .line 208
    return-void
.end method

.method public validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 92
    if-nez p3, :cond_0

    .line 93
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 140
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 95
    check-cast v0, Lc/c/c/c;

    .line 96
    check-cast p2, Lc/c/c/e;

    .line 97
    const-string v1, "javax.servlet.request.X509Certificate"

    invoke-interface {v0, v1}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 102
    if-eqz v6, :cond_6

    :try_start_0
    array-length v0, v6

    if-lez v0, :cond_6

    .line 105
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    if-eqz v0, :cond_1

    .line 107
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    if-nez v0, :cond_3

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 111
    new-instance v2, Lorg/eclipse/jetty/util/security/CertificateValidator;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jetty/util/security/CertificateValidator;-><init>(Ljava/security/KeyStore;Ljava/util/Collection;)V

    .line 112
    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate([Ljava/security/cert/Certificate;)V

    .line 115
    :cond_1
    array-length v2, v6

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_6

    aget-object v3, v6, v0

    .line 117
    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    .line 121
    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    .line 122
    :cond_2
    if-nez v1, :cond_4

    const-string v1, "clientcert"

    .line 124
    :goto_3
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v3

    .line 126
    invoke-virtual {p0, v1, v3, p1}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_5

    .line 129
    new-instance v0, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 122
    :cond_4
    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 115
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 134
    :cond_6
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Lc/c/c/e;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    const/16 v0, 0x193

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V

    .line 137
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 140
    :cond_7
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
