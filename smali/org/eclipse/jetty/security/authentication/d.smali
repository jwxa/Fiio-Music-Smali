.class final Lorg/eclipse/jetty/security/authentication/d;
.super Ljava/lang/Object;
.source "DigestAuthenticator.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/d;->a:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Lorg/eclipse/jetty/security/authentication/d;->b:J

    .line 74
    return-void
.end method
