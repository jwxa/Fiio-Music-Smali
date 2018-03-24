.class public Lorg/fourthline/cling/registry/RegistryMaintainer;
.super Ljava/lang/Object;
.source "RegistryMaintainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final registry:Lorg/fourthline/cling/registry/RegistryImpl;

.field private final sleepIntervalMillis:I

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;I)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 37
    iput p2, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 48
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Running registry maintenance loop every milliseconds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    const-string v1, "Stopped status on thread received, ending maintenance loop"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->maintain()V

    .line 54
    iget v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lorg/fourthline/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    const-string v1, "Setting stopped status on thread"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 43
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/registry/RegistryMaintainer;->stopped:Z

    .line 44
    return-void
.end method
