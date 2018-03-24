.class public final Le/a/b/c;
.super Le/a/e/s;
.source "RealConnection.java"

# interfaces
.implements Le/m;


# instance fields
.field public a:Ljava/net/Socket;

.field public volatile b:Le/a/e/j;

.field public c:I

.field public d:Lf/i;

.field public e:Lf/h;

.field public f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Le/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:J

.field private final k:Le/au;

.field private l:Ljava/net/Socket;

.field private m:Le/x;

.field private n:Le/aj;


# direct methods
.method public constructor <init>(Le/au;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Le/a/e/s;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/b/c;->g:Ljava/util/List;

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Le/a/b/c;->i:J

    .line 86
    iput-object p1, p0, Le/a/b/c;->k:Le/au;

    .line 87
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v0}, Le/au;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 179
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v0}, Le/au;->a()Le/a;

    move-result-object v0

    .line 181
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    .line 182
    :cond_0
    invoke-virtual {v0}, Le/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/a/b/c;->l:Ljava/net/Socket;

    .line 185
    iget-object v0, p0, Le/a/b/c;->l:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_0
    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v0

    iget-object v1, p0, Le/a/b/c;->l:Ljava/net/Socket;

    iget-object v2, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v2}, Le/au;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Le/a/g/h;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    iget-object v0, p0, Le/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v0}, Lf/o;->b(Ljava/net/Socket;)Lf/z;

    move-result-object v0

    invoke-static {v0}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v0

    iput-object v0, p0, Le/a/b/c;->d:Lf/i;

    .line 194
    iget-object v0, p0, Le/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v0}, Lf/o;->a(Ljava/net/Socket;)Lf/y;

    move-result-object v0

    invoke-static {v0}, Lf/o;->a(Lf/y;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Le/a/b/c;->e:Lf/h;

    .line 195
    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v3}, Le/au;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 191
    throw v1
.end method

.method private a(Le/a/b/b;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v0}, Le/au;->a()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v0}, Le/au;->a()Le/a;

    move-result-object v2

    invoke-virtual {v2}, Le/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Le/a/b/c;->l:Ljava/net/Socket;

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v4

    invoke-virtual {v4}, Le/aa;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v5

    invoke-virtual {v5}, Le/aa;->g()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v0}, Le/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Le/p;

    move-result-object v3

    invoke-virtual {v3}, Le/p;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v4

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v5

    invoke-virtual {v5}, Le/aa;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Le/a;->e()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Le/a/g/h;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Le/x;->a(Ljavax/net/ssl/SSLSession;)Le/x;

    move-result-object v4

    invoke-virtual {v2}, Le/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v6

    invoke-virtual {v6}, Le/aa;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Le/x;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hostname "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v2

    invoke-virtual {v2}, Le/aa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Le/i;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Le/a/h/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_0
    :try_start_2
    invoke-static {v0}, Le/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Le/a/g/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_1
    invoke-static {v1}, Le/a/c;->a(Ljava/net/Socket;)V

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Le/a;->k()Le/i;

    move-result-object v5

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v2

    invoke-virtual {v2}, Le/aa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Le/x;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Le/i;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Le/p;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/a/g/h;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v0, p0, Le/a/b/c;->a:Ljava/net/Socket;

    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-static {v2}, Lf/o;->b(Ljava/net/Socket;)Lf/z;

    move-result-object v2

    invoke-static {v2}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v2

    iput-object v2, p0, Le/a/b/c;->d:Lf/i;

    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-static {v2}, Lf/o;->a(Ljava/net/Socket;)Lf/y;

    move-result-object v2

    invoke-static {v2}, Lf/o;->a(Lf/y;)Lf/h;

    move-result-object v2

    iput-object v2, p0, Le/a/b/c;->e:Lf/h;

    iput-object v4, p0, Le/a/b/c;->m:Le/x;

    if-eqz v1, :cond_5

    invoke-static {v1}, Le/aj;->a(Ljava/lang/String;)Le/aj;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Le/a/b/c;->n:Le/aj;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/a/g/h;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 206
    :cond_4
    :goto_3
    iget-object v0, p0, Le/a/b/c;->n:Le/aj;

    sget-object v1, Le/aj;->d:Le/aj;

    if-ne v0, v1, :cond_8

    .line 207
    iget-object v0, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 209
    new-instance v0, Le/a/e/r;

    invoke-direct {v0}, Le/a/e/r;-><init>()V

    iget-object v1, p0, Le/a/b/c;->a:Ljava/net/Socket;

    iget-object v2, p0, Le/a/b/c;->k:Le/au;

    .line 210
    invoke-virtual {v2}, Le/au;->a()Le/a;

    move-result-object v2

    invoke-virtual {v2}, Le/a;->a()Le/aa;

    move-result-object v2

    invoke-virtual {v2}, Le/aa;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/b/c;->d:Lf/i;

    iget-object v4, p0, Le/a/b/c;->e:Lf/h;

    invoke-virtual {v0, v1, v2, v3, v4}, Le/a/e/r;->a(Ljava/net/Socket;Ljava/lang/String;Lf/i;Lf/h;)Le/a/e/r;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p0}, Le/a/e/r;->a(Le/a/e/s;)Le/a/e/r;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Le/a/e/r;->a()Le/a/e/j;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Le/a/e/j;->c()V

    .line 216
    invoke-virtual {v0}, Le/a/e/j;->a()I

    move-result v1

    iput v1, p0, Le/a/b/c;->f:I

    .line 217
    iput-object v0, p0, Le/a/b/c;->b:Le/a/e/j;

    .line 221
    :goto_4
    return-void

    .line 200
    :cond_5
    :try_start_4
    sget-object v1, Le/aj;->b:Le/aj;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_6
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    :cond_7
    sget-object v0, Le/aj;->b:Le/aj;

    iput-object v0, p0, Le/a/b/c;->n:Le/aj;

    .line 203
    iget-object v0, p0, Le/a/b/c;->l:Ljava/net/Socket;

    iput-object v0, p0, Le/a/b/c;->a:Ljava/net/Socket;

    goto :goto_3

    .line 219
    :cond_8
    iput v9, p0, Le/a/b/c;->f:I

    goto :goto_4

    .line 200
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Le/au;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    return-object v0
.end method

.method public final a(IIILjava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Le/p;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Le/a/b/c;->n:Le/aj;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v4, Le/a/b/b;

    invoke-direct {v4, p4}, Le/a/b/b;-><init>(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v0}, Le/au;->a()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_a

    .line 97
    sget-object v0, Le/p;->c:Le/p;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Le/a/b/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v0}, Le/au;->a()Le/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a;->a()Le/aa;

    move-result-object v0

    invoke-virtual {v0}, Le/aa;->f()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Le/a/g/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 103
    new-instance v1, Le/a/b/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEARTEXT communication to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 111
    :cond_2
    :try_start_0
    invoke-direct {p0, v4}, Le/a/b/c;->a(Le/a/b/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_3
    :goto_0
    iget-object v2, p0, Le/a/b/c;->n:Le/aj;

    if-nez v2, :cond_9

    .line 110
    :try_start_1
    iget-object v2, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v2}, Le/au;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    new-instance v2, Le/an;

    invoke-direct {v2}, Le/an;-><init>()V

    iget-object v3, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v3}, Le/au;->a()Le/a;

    move-result-object v3

    invoke-virtual {v3}, Le/a;->a()Le/aa;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/an;->a(Le/aa;)Le/an;

    move-result-object v2

    const-string v3, "Host"

    iget-object v5, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v5}, Le/au;->a()Le/a;

    move-result-object v5

    invoke-virtual {v5}, Le/a;->a()Le/aa;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Le/a/c;->a(Le/aa;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    move-result-object v2

    const-string v3, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v2, v3, v5}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    move-result-object v2

    const-string v3, "User-Agent"

    const-string v5, "okhttp/3.5.0"

    invoke-virtual {v2, v3, v5}, Le/an;->a(Ljava/lang/String;Ljava/lang/String;)Le/an;

    move-result-object v2

    invoke-virtual {v2}, Le/an;->a()Le/am;

    move-result-object v2

    invoke-virtual {v2}, Le/am;->a()Le/aa;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Le/a/b/c;->a(II)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CONNECT "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v3, v6}, Le/a/c;->a(Le/aa;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " HTTP/1.1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Le/a/d/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Le/a/b/c;->d:Lf/i;

    iget-object v9, p0, Le/a/b/c;->e:Lf/h;

    invoke-direct {v5, v6, v7, v8, v9}, Le/a/d/a;-><init>(Le/ag;Le/a/b/g;Lf/i;Lf/h;)V

    iget-object v6, p0, Le/a/b/c;->d:Lf/i;

    invoke-interface {v6}, Lf/i;->a()Lf/aa;

    move-result-object v6

    int-to-long v8, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    iget-object v6, p0, Le/a/b/c;->e:Lf/h;

    invoke-interface {v6}, Lf/h;->a()Lf/aa;

    move-result-object v6

    int-to-long v8, p3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    invoke-virtual {v2}, Le/am;->c()Le/y;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Le/a/d/a;->a(Le/y;Ljava/lang/String;)V

    invoke-virtual {v5}, Le/a/d/a;->a()V

    invoke-virtual {v5}, Le/a/d/a;->d()Le/ar;

    move-result-object v3

    invoke-virtual {v3, v2}, Le/ar;->a(Le/am;)Le/ar;

    move-result-object v2

    invoke-virtual {v2}, Le/ar;->a()Le/aq;

    move-result-object v6

    invoke-static {v6}, Le/a/c/f;->a(Le/aq;)J

    move-result-wide v2

    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_4

    const-wide/16 v2, 0x0

    :cond_4
    invoke-virtual {v5, v2, v3}, Le/a/d/a;->a(J)Lf/z;

    move-result-object v2

    const v3, 0x7fffffff

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v5}, Le/a/c;->a(Lf/z;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v2}, Lf/z;->close()V

    invoke-virtual {v6}, Le/aq;->b()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response code for CONNECT: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Le/aq;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    iget-object v3, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-static {v3}, Le/a/c;->a(Ljava/net/Socket;)V

    .line 118
    iget-object v3, p0, Le/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v3}, Le/a/c;->a(Ljava/net/Socket;)V

    .line 119
    iput-object v1, p0, Le/a/b/c;->a:Ljava/net/Socket;

    .line 120
    iput-object v1, p0, Le/a/b/c;->l:Ljava/net/Socket;

    .line 121
    iput-object v1, p0, Le/a/b/c;->d:Lf/i;

    .line 122
    iput-object v1, p0, Le/a/b/c;->e:Lf/h;

    .line 123
    iput-object v1, p0, Le/a/b/c;->m:Le/x;

    .line 124
    iput-object v1, p0, Le/a/b/c;->n:Le/aj;

    .line 126
    if-nez v0, :cond_8

    .line 127
    new-instance v0, Le/a/b/e;

    invoke-direct {v0, v2}, Le/a/b/e;-><init>(Ljava/io/IOException;)V

    .line 132
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual {v4, v2}, Le/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    :cond_5
    throw v0

    .line 111
    :sswitch_0
    :try_start_2
    iget-object v2, p0, Le/a/b/c;->d:Lf/i;

    invoke-interface {v2}, Lf/i;->c()Lf/f;

    move-result-object v2

    invoke-virtual {v2}, Lf/f;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Le/a/b/c;->e:Lf/h;

    invoke-interface {v2}, Lf/h;->c()Lf/f;

    move-result-object v2

    invoke-virtual {v2}, Lf/f;->d()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "TLS tunnel buffered too many bytes!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    iget-object v2, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v2}, Le/au;->a()Le/a;

    move-result-object v2

    invoke-virtual {v2}, Le/a;->d()Le/b;

    move-result-object v2

    iget-object v3, p0, Le/a/b/c;->k:Le/au;

    invoke-interface {v2}, Le/b;->a()Le/am;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to authenticate with proxy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_7
    invoke-direct {p0, p1, p2}, Le/a/b/c;->a(II)V

    invoke-direct {p0, v4}, Le/a/b/c;->a(Le/a/b/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 129
    :cond_8
    invoke-virtual {v0, v2}, Le/a/b/e;->a(Ljava/io/IOException;)V

    goto :goto_1

    .line 137
    :cond_9
    return-void

    :cond_a
    move-object v0, v1

    goto/16 :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Le/a/e/ab;)V
    .locals 1

    .prologue
    .line 396
    sget-object v0, Le/a/e/b;->e:Le/a/e/b;

    invoke-virtual {p1, v0}, Le/a/e/ab;->a(Le/a/e/b;)V

    .line 397
    return-void
.end method

.method public final a(Le/a/e/j;)V
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p1}, Le/a/e/j;->a()I

    move-result v0

    iput v0, p0, Le/a/b/c;->f:I

    .line 402
    return-void
.end method

.method public final a(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 391
    :cond_1
    :goto_0
    return v0

    .line 368
    :cond_2
    iget-object v2, p0, Le/a/b/c;->b:Le/a/e/j;

    if-eqz v2, :cond_3

    .line 369
    iget-object v2, p0, Le/a/b/c;->b:Le/a/e/j;

    invoke-virtual {v2}, Le/a/e/j;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 372
    :cond_3
    if-eqz p1, :cond_1

    .line 374
    :try_start_0
    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 376
    :try_start_1
    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 377
    iget-object v2, p0, Le/a/b/c;->d:Lf/i;

    invoke-interface {v2}, Lf/i;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    :try_start_2
    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    .line 380
    :cond_4
    iget-object v2, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v2

    iget-object v4, p0, Le/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 387
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Le/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v0}, Le/a/c;->a(Ljava/net/Socket;)V

    .line 356
    return-void
.end method

.method public final c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Le/a/b/c;->a:Ljava/net/Socket;

    return-object v0
.end method

.method public final d()Le/x;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Le/a/b/c;->m:Le/x;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Le/a/b/c;->b:Le/a/e/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/a/b/c;->k:Le/au;

    .line 426
    invoke-virtual {v1}, Le/au;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->a()Le/aa;

    move-result-object v1

    invoke-virtual {v1}, Le/aa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b/c;->k:Le/au;

    invoke-virtual {v1}, Le/au;->a()Le/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a;->a()Le/aa;

    move-result-object v1

    invoke-virtual {v1}, Le/aa;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b/c;->k:Le/au;

    .line 428
    invoke-virtual {v1}, Le/au;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b/c;->k:Le/au;

    .line 430
    invoke-virtual {v1}, Le/au;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Le/a/b/c;->m:Le/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/c;->m:Le/x;

    .line 432
    invoke-virtual {v0}, Le/x;->a()Le/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b/c;->n:Le/aj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    return-object v0

    .line 432
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
