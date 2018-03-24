.class final Lorg/fourthline/cling/f;
.super Ljava/lang/Object;
.source "UpnpServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/UpnpServiceImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/UpnpServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/f;->a:Lorg/fourthline/cling/UpnpServiceImpl;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lorg/fourthline/cling/UpnpServiceImpl;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">>> Shutting down UPnP service..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/f;->a:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdownRegistry()V

    .line 143
    iget-object v0, p0, Lorg/fourthline/cling/f;->a:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdownRouter()V

    .line 144
    iget-object v0, p0, Lorg/fourthline/cling/f;->a:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdownConfiguration()V

    .line 145
    invoke-static {}, Lorg/fourthline/cling/UpnpServiceImpl;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "<<< UPnP service shutdown completed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 146
    return-void
.end method
