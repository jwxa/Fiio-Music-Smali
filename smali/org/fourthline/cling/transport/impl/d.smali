.class final Lorg/fourthline/cling/transport/impl/d;
.super Lorg/seamless/util/Iterators$Synchronized;
.source "NetworkAddressFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/util/Iterators$Synchronized",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/d;->a:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    .line 156
    invoke-direct {p0, p2}, Lorg/seamless/util/Iterators$Synchronized;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected final synchronizedRemove(I)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/d;->a:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    iget-object v1, v0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->bindAddresses:Ljava/util/List;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/d;->a:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    iget-object v0, v0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->bindAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
