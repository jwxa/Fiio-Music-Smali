.class final Lorg/fourthline/cling/registry/e;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/registry/a;

.field private final synthetic b:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/registry/e;->a:Lorg/fourthline/cling/registry/a;

    iput-object p2, p0, Lorg/fourthline/cling/registry/e;->b:Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Lorg/fourthline/cling/registry/a;->f()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sleeping some milliseconds to avoid flooding the network with ALIVE msgs"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lorg/fourthline/cling/registry/e;->a:Lorg/fourthline/cling/registry/a;

    iget-object v0, v0, Lorg/fourthline/cling/registry/a;->c:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/e;->a:Lorg/fourthline/cling/registry/a;

    iget-object v0, v0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/e;->b:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->run()V

    .line 299
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-static {}, Lorg/fourthline/cling/registry/a;->f()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Background execution interrupted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method
