.class public Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "DigestAuthenticator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _maxNonceAgeMs:J

.field private _nonceCount:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/authentication/d;",
            ">;"
        }
    .end annotation
.end field

.field private _nonceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/security/authentication/d;",
            ">;"
        }
    .end annotation
.end field

.field _random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 61
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    .line 62
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    .line 81
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private checkNonce(Lorg/eclipse/jetty/security/authentication/c;Lorg/eclipse/jetty/server/Request;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 256
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    sub-long/2addr v4, v6

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/authentication/d;

    .line 262
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lorg/eclipse/jetty/security/authentication/d;->b:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    .line 264
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/d;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p1, Lorg/eclipse/jetty/security/authentication/c;->d:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/authentication/d;

    .line 273
    if-nez v0, :cond_1

    move v0, v1

    .line 291
    :goto_1
    return v0

    .line 276
    :cond_1
    iget-object v3, p1, Lorg/eclipse/jetty/security/authentication/c;->e:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 277
    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    move v0, v1

    .line 278
    goto :goto_1

    .line 279
    :cond_2
    iget-object v1, v0, Lorg/eclipse/jetty/security/authentication/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 280
    :goto_2
    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    long-to-int v6, v4

    invoke-virtual {v3, v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 281
    iget-object v1, v0, Lorg/eclipse/jetty/security/authentication/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 282
    :cond_3
    int-to-long v0, v1

    cmp-long v0, v4, v0

    if-gtz v0, :cond_4

    move v0, v2

    .line 283
    goto :goto_1

    .line 285
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 287
    :catch_0
    move-exception v0

    .line 289
    sget-object v1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v0, v2

    .line 291
    goto :goto_1
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "DIGEST"

    return-object v0
.end method

.method public newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 235
    :cond_0
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 236
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 238
    new-instance v1, Lorg/eclipse/jetty/security/authentication/d;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lorg/eclipse/jetty/security/authentication/d;-><init>(Ljava/lang/String;J)V

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, v1, Lorg/eclipse/jetty/security/authentication/d;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, v1, Lorg/eclipse/jetty/security/authentication/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 92
    const-string v0, "maxNonceAge"

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 95
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxNonceAge(J)V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 125
    if-nez p3, :cond_0

    .line 126
    new-instance v1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 219
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    .line 128
    check-cast v1, Lc/c/c/c;

    .line 129
    check-cast p2, Lc/c/c/e;

    .line 130
    const-string v2, "Authorization"

    invoke-interface {v1, v2}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_11

    .line 137
    :try_start_0
    sget-object v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    sget-object v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Credentials: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_1
    new-instance v9, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v6, "=, "

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v9, v2, v6, v7, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 140
    new-instance v10, Lorg/eclipse/jetty/security/authentication/c;

    invoke-interface {v1}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/eclipse/jetty/security/authentication/c;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    move-object v7, v3

    .line 144
    :goto_1
    :sswitch_0
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 146
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 149
    :goto_2
    sparse-switch v6, :sswitch_data_0

    .line 163
    if-eqz v2, :cond_3

    .line 165
    const-string v6, "username"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->b:Ljava/lang/String;

    :cond_2
    :goto_3
    move-object v2, v3

    :cond_3
    move-object v7, v8

    .line 184
    goto :goto_1

    :cond_4
    move v6, v4

    .line 147
    goto :goto_2

    :sswitch_1
    move-object v2, v7

    move-object v7, v8

    .line 154
    goto :goto_1

    :sswitch_2
    move-object v2, v3

    .line 157
    goto :goto_1

    .line 167
    :cond_5
    const-string v6, "realm"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 168
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 221
    :catch_0
    move-exception v1

    .line 223
    new-instance v2, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 169
    :cond_6
    :try_start_1
    const-string v6, "nonce"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 170
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->d:Ljava/lang/String;

    goto :goto_3

    .line 171
    :cond_7
    const-string v6, "nc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 172
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->e:Ljava/lang/String;

    goto :goto_3

    .line 173
    :cond_8
    const-string v6, "cnonce"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 174
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->f:Ljava/lang/String;

    goto :goto_3

    .line 175
    :cond_9
    const-string v6, "qop"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 176
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->g:Ljava/lang/String;

    goto :goto_3

    .line 177
    :cond_a
    const-string v6, "uri"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 178
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->h:Ljava/lang/String;

    goto :goto_3

    .line 179
    :cond_b
    const-string v6, "response"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    iput-object v8, v10, Lorg/eclipse/jetty/security/authentication/c;->i:Ljava/lang/String;

    goto :goto_3

    .line 186
    :cond_c
    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    move-object v2, v0

    invoke-direct {p0, v10, v2}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->checkNonce(Lorg/eclipse/jetty/security/authentication/c;Lorg/eclipse/jetty/server/Request;)I

    move-result v2

    .line 188
    if-lez v2, :cond_f

    .line 191
    iget-object v2, v10, Lorg/eclipse/jetty/security/authentication/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v10, p1}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_d

    .line 194
    new-instance v1, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    goto/16 :goto_0

    :cond_d
    move v3, v4

    .line 202
    :goto_4
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Lc/c/c/e;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 204
    invoke-interface {v1}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v2

    .line 205
    if-nez v2, :cond_e

    .line 206
    const-string v2, "/"

    .line 207
    :cond_e
    const-string v4, "WWW-Authenticate"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Digest realm=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v6}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", domain=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\", nonce=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v1, Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", algorithm=MD5, qop=\"auth\", stale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/16 v1, 0x191

    invoke-interface {p2, v1}, Lc/c/c/e;->sendError(I)V

    .line 216
    sget-object v1, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 197
    :cond_f
    if-nez v2, :cond_11

    move v3, v5

    .line 198
    goto :goto_4

    .line 219
    :cond_10
    sget-object v1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_11
    move v3, v4

    goto :goto_4

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method
