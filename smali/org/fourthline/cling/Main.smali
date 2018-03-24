.class public Lorg/fourthline/cling/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lorg/fourthline/cling/b;

    invoke-direct {v0}, Lorg/fourthline/cling/b;-><init>()V

    .line 90
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Starting Cling..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    new-instance v1, Lorg/fourthline/cling/UpnpServiceImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/fourthline/cling/registry/RegistryListener;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lorg/fourthline/cling/UpnpServiceImpl;-><init>([Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending SEARCH message to all devices..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    invoke-interface {v0, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search(Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Waiting 10 seconds before shutting down..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Stopping Cling..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->shutdown()V

    .line 104
    return-void
.end method
