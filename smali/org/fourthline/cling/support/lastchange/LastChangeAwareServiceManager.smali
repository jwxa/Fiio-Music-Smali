.class public Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;
.super Lorg/fourthline/cling/model/DefaultServiceManager;
.source "LastChangeAwareServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;",
        ">",
        "Lorg/fourthline/cling/model/DefaultServiceManager",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final lastChangeParser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalService",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/fourthline/cling/support/lastchange/LastChangeParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/DefaultServiceManager;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;)V

    .line 56
    iput-object p3, p0, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->lastChangeParser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalService",
            "<TT;>;",
            "Lorg/fourthline/cling/support/lastchange/LastChangeParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    .line 50
    return-void
.end method


# virtual methods
.method public fireLastChange()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->lock()V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    invoke-interface {v0}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChange;->fire(Ljava/beans/PropertyChangeSupport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->unlock()V

    .line 78
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->unlock()V

    .line 77
    throw v0
.end method

.method protected getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->lastChangeParser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    return-object v0
.end method

.method protected readInitialEventedStateVariableValues()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v2, Lorg/fourthline/cling/support/lastchange/LastChange;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    invoke-interface {v0}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->getCurrentInstanceIds()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    .line 90
    array-length v0, v3

    if-lez v0, :cond_1

    .line 91
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 101
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v0

    const-string v1, "LastChange"

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v3, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lorg/fourthline/cling/model/state/StateVariableValue;-><init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v1

    .line 91
    :cond_0
    aget-object v5, v3, v1

    .line 93
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    invoke-interface {v0, v2, v5}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->appendCurrentState(Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-interface {v0, v2, v1}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->appendCurrentState(Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    goto :goto_1
.end method
