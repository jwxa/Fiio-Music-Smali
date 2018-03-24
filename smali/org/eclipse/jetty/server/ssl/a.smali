.class Lorg/eclipse/jetty/server/ssl/a;
.super Ljava/lang/Object;
.source "SslCertificates.java"


# instance fields
.field private final a:[Ljava/security/cert/X509Certificate;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/a;->b:Ljava/lang/Integer;

    .line 162
    iput-object p2, p0, Lorg/eclipse/jetty/server/ssl/a;->a:[Ljava/security/cert/X509Certificate;

    .line 163
    iput-object p3, p0, Lorg/eclipse/jetty/server/ssl/a;->c:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method final a()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/a;->a:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method final b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/a;->c:Ljava/lang/String;

    return-object v0
.end method
