.class public Le/ag;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/aj;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final c:Le/u;

.field final d:Ljava/net/Proxy;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/aj;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/p;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/ad;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/ad;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/net/ProxySelector;

.field final j:Le/s;

.field final k:Le/d;

.field final l:Le/a/a/i;

.field final m:Ljavax/net/SocketFactory;

.field final n:Ljavax/net/ssl/SSLSocketFactory;

.field final o:Le/a/h/b;

.field final p:Ljavax/net/ssl/HostnameVerifier;

.field final q:Le/i;

.field final r:Le/b;

.field final s:Le/b;

.field final t:Le/n;

.field final u:Le/v;

.field final v:Z

.field final w:Z

.field final x:Z

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-array v0, v4, [Le/aj;

    sget-object v1, Le/aj;->d:Le/aj;

    aput-object v1, v0, v2

    sget-object v1, Le/aj;->b:Le/aj;

    aput-object v1, v0, v3

    invoke-static {v0}, Le/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/ag;->a:Ljava/util/List;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Le/p;

    sget-object v1, Le/p;->a:Le/p;

    aput-object v1, v0, v2

    sget-object v1, Le/p;->b:Le/p;

    aput-object v1, v0, v3

    sget-object v1, Le/p;->c:Le/p;

    aput-object v1, v0, v4

    invoke-static {v0}, Le/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/ag;->b:Ljava/util/List;

    .line 128
    new-instance v0, Le/ah;

    invoke-direct {v0}, Le/ah;-><init>()V

    sput-object v0, Le/a/a;->a:Le/a/a;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Le/ai;

    invoke-direct {v0}, Le/ai;-><init>()V

    invoke-direct {p0, v0}, Le/ag;-><init>(Le/ai;)V

    .line 208
    return-void
.end method

.method constructor <init>(Le/ai;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iget-object v0, p1, Le/ai;->a:Le/u;

    iput-object v0, p0, Le/ag;->c:Le/u;

    .line 212
    iget-object v0, p1, Le/ai;->b:Ljava/net/Proxy;

    iput-object v0, p0, Le/ag;->d:Ljava/net/Proxy;

    .line 213
    iget-object v0, p1, Le/ai;->c:Ljava/util/List;

    iput-object v0, p0, Le/ag;->e:Ljava/util/List;

    .line 214
    iget-object v0, p1, Le/ai;->d:Ljava/util/List;

    iput-object v0, p0, Le/ag;->f:Ljava/util/List;

    .line 215
    iget-object v0, p1, Le/ai;->e:Ljava/util/List;

    invoke-static {v0}, Le/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/ag;->g:Ljava/util/List;

    .line 216
    iget-object v0, p1, Le/ai;->f:Ljava/util/List;

    invoke-static {v0}, Le/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/ag;->h:Ljava/util/List;

    .line 217
    iget-object v0, p1, Le/ai;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Le/ag;->i:Ljava/net/ProxySelector;

    .line 218
    iget-object v0, p1, Le/ai;->h:Le/s;

    iput-object v0, p0, Le/ag;->j:Le/s;

    .line 219
    iget-object v0, p1, Le/ai;->i:Le/d;

    iput-object v0, p0, Le/ag;->k:Le/d;

    .line 220
    iget-object v0, p1, Le/ai;->j:Le/a/a/i;

    iput-object v0, p0, Le/ag;->l:Le/a/a/i;

    .line 221
    iget-object v0, p1, Le/ai;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Le/ag;->m:Ljavax/net/SocketFactory;

    .line 224
    iget-object v0, p0, Le/ag;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/p;

    .line 225
    if-nez v1, :cond_0

    invoke-virtual {v0}, Le/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 226
    goto :goto_0

    :cond_1
    move v0, v2

    .line 225
    goto :goto_1

    .line 228
    :cond_2
    iget-object v0, p1, Le/ai;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    .line 229
    :cond_3
    iget-object v0, p1, Le/ai;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Le/ag;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    iget-object v0, p1, Le/ai;->m:Le/a/h/b;

    iput-object v0, p0, Le/ag;->o:Le/a/h/b;

    .line 237
    :goto_2
    iget-object v0, p1, Le/ai;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Le/ag;->p:Ljavax/net/ssl/HostnameVerifier;

    .line 238
    iget-object v0, p1, Le/ai;->o:Le/i;

    iget-object v1, p0, Le/ag;->o:Le/a/h/b;

    invoke-virtual {v0, v1}, Le/i;->a(Le/a/h/b;)Le/i;

    move-result-object v0

    iput-object v0, p0, Le/ag;->q:Le/i;

    .line 240
    iget-object v0, p1, Le/ai;->p:Le/b;

    iput-object v0, p0, Le/ag;->r:Le/b;

    .line 241
    iget-object v0, p1, Le/ai;->q:Le/b;

    iput-object v0, p0, Le/ag;->s:Le/b;

    .line 242
    iget-object v0, p1, Le/ai;->r:Le/n;

    iput-object v0, p0, Le/ag;->t:Le/n;

    .line 243
    iget-object v0, p1, Le/ai;->s:Le/v;

    iput-object v0, p0, Le/ag;->u:Le/v;

    .line 244
    iget-boolean v0, p1, Le/ai;->t:Z

    iput-boolean v0, p0, Le/ag;->v:Z

    .line 245
    iget-boolean v0, p1, Le/ai;->u:Z

    iput-boolean v0, p0, Le/ag;->w:Z

    .line 246
    iget-boolean v0, p1, Le/ai;->v:Z

    iput-boolean v0, p0, Le/ag;->x:Z

    .line 247
    iget v0, p1, Le/ai;->w:I

    iput v0, p0, Le/ag;->y:I

    .line 248
    iget v0, p1, Le/ai;->x:I

    iput v0, p0, Le/ag;->z:I

    .line 249
    iget v0, p1, Le/ai;->y:I

    iput v0, p0, Le/ag;->A:I

    .line 250
    iget v0, p1, Le/ai;->z:I

    iput v0, p0, Le/ag;->B:I

    .line 251
    return-void

    .line 232
    :cond_4
    invoke-static {}, Le/ag;->x()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 233
    invoke-static {v0}, Le/ag;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Le/ag;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 234
    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/a/g/h;->a(Ljavax/net/ssl/X509TrustManager;)Le/a/h/b;

    move-result-object v0

    iput-object v0, p0, Le/ag;->o:Le/a/h/b;

    goto :goto_2
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 271
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 273
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static x()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 256
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 258
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 259
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Le/ag;->y:I

    return v0
.end method

.method public final a(Le/am;)Le/g;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Le/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/ak;-><init>(Le/ag;Le/am;Z)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Le/ag;->z:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Le/ag;->A:I

    return v0
.end method

.method public final d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Le/ag;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public final e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Le/ag;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final f()Le/s;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Le/ag;->j:Le/s;

    return-object v0
.end method

.method final g()Le/a/a/i;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Le/ag;->k:Le/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/ag;->k:Le/d;

    iget-object v0, v0, Le/d;->a:Le/a/a/i;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/ag;->l:Le/a/a/i;

    goto :goto_0
.end method

.method public final h()Le/v;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Le/ag;->u:Le/v;

    return-object v0
.end method

.method public final i()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Le/ag;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Le/ag;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Le/ag;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final l()Le/i;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Le/ag;->q:Le/i;

    return-object v0
.end method

.method public final m()Le/b;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Le/ag;->s:Le/b;

    return-object v0
.end method

.method public final n()Le/b;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Le/ag;->r:Le/b;

    return-object v0
.end method

.method public final o()Le/n;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Le/ag;->t:Le/n;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Le/ag;->v:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Le/ag;->w:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Le/ag;->x:Z

    return v0
.end method

.method public final s()Le/u;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Le/ag;->c:Le/u;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/aj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Le/ag;->e:Ljava/util/List;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Le/ag;->f:Ljava/util/List;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Le/ag;->g:Ljava/util/List;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Le/ag;->h:Ljava/util/List;

    return-object v0
.end method
