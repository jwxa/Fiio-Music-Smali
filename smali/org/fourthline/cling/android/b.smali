.class final Lorg/fourthline/cling/android/b;
.super Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;
.source "AndroidUpnpServiceConfiguration.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/android/b;->a:Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;

    .line 90
    invoke-direct {p0, p2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public final getUserAgentValue(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>(II)V

    .line 99
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 100
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServerClientTokens;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
