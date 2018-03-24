.class final Lorg/eclipse/jetty/security/authentication/c;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "DigestAuthenticator.java"


# static fields
.field private static final serialVersionUID:J = -0x227b36062b530eacL


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->b:Ljava/lang/String;

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->c:Ljava/lang/String;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->d:Ljava/lang/String;

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->e:Ljava/lang/String;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->f:Ljava/lang/String;

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->g:Ljava/lang/String;

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->h:Ljava/lang/String;

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->i:Ljava/lang/String;

    .line 313
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/c;->a:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public final check(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 320
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 321
    new-instance v1, Ljava/lang/String;

    check-cast p1, [C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 322
    :goto_0
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 326
    :goto_1
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 328
    instance-of v3, v1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    if-eqz v3, :cond_1

    .line 333
    check-cast v1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/security/Credential$MD5;->getDigest()[B

    move-result-object v0

    .line 346
    :goto_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 347
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->a:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 348
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 349
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->h:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 350
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 359
    const/16 v3, 0x10

    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 360
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->d:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 362
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->e:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 364
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 365
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->f:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 366
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/c;->g:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 368
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 369
    const/16 v0, 0x10

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 370
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 373
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 380
    :goto_3
    return v0

    .line 322
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 338
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->b:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 339
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 340
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->c:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 341
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 342
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 343
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    .line 375
    :catch_0
    move-exception v0

    .line 377
    invoke-static {}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 380
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
