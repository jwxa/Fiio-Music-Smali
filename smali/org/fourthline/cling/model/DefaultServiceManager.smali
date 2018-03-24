.class public Lorg/fourthline/cling/model/DefaultServiceManager;
.super Ljava/lang/Object;
.source "DefaultServiceManager.java"

# interfaces
.implements Lorg/fourthline/cling/model/ServiceManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/ServiceManager",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final service:Lorg/fourthline/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/meta/LocalService",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected serviceImpl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/fourthline/cling/model/DefaultServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalService",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/model/DefaultServiceManager;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalService",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    iput-object p1, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->service:Lorg/fourthline/cling/model/meta/LocalService;

    .line 69
    iput-object p2, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    .line 70
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createPropertyChangeListener(Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/beans/PropertyChangeListener;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lorg/fourthline/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;-><init>(Lorg/fourthline/cling/model/DefaultServiceManager;)V

    return-object v0
.end method

.method protected createPropertyChangeSupport(Ljava/lang/Object;)Ljava/beans/PropertyChangeSupport;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/beans/PropertyChangeSupport;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "propertyChangeSupport"

    invoke-static {v0, v1}, Lorg/seamless/util/Reflections;->getGetterMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    const-class v1, Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service implementation instance offers PropertyChangeSupport, using that: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    .line 220
    :goto_0
    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new PropertyChangeSupport for service implementation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p1}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected createServiceInstance()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Subclass has to provide service class or override createServiceInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/fourthline/cling/model/meta/LocalService;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new service implementation instance with no-arg constructor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public execute(Lorg/fourthline/cling/model/Command;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/Command",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->lock()V

    .line 128
    :try_start_0
    invoke-interface {p1, p0}, Lorg/fourthline/cling/model/Command;->execute(Lorg/fourthline/cling/model/ServiceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 132
    return-void

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 131
    throw v0
.end method

.method public getCurrentState()Ljava/util/Collection;
    .locals 7
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
    .line 136
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->lock()V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->readInitialEventedStateVariableValues()Ljava/util/Collection;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    sget-object v1, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v2, "Obtained initial state variable values for event, skipping individual state variable accessors"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 152
    :goto_0
    return-object v0

    .line 143
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/LocalService;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 152
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    goto :goto_0

    .line 144
    :cond_1
    :try_start_2
    aget-object v4, v2, v1

    .line 145
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/StateVariable;->getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/fourthline/cling/model/meta/LocalService;->getAccessor(Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v5

    .line 147
    if-nez v5, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No accessor for evented state variable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 155
    throw v0

    .line 149
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->read(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/fourthline/cling/model/state/StateVariableValue;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getCurrentState([Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->lock()V

    .line 161
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 178
    return-object v1

    .line 162
    :cond_0
    :try_start_1
    aget-object v3, p1, v0

    .line 163
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/fourthline/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/StateVariable;->getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v5

    if-nez v5, :cond_2

    .line 167
    :cond_1
    sget-object v4, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring unknown or non-evented state variable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 162
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/fourthline/cling/model/meta/LocalService;->getAccessor(Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v5

    .line 172
    if-nez v5, :cond_3

    .line 173
    sget-object v4, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring evented state variable without accessor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 181
    throw v0

    .line 176
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->read(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/fourthline/cling/model/state/StateVariableValue;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getImplementation()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->lock()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->init()V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 107
    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 110
    throw v0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x1f4

    return v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->lock()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->init()V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 119
    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->unlock()V

    .line 122
    throw v0
.end method

.method public getService()Lorg/fourthline/cling/model/meta/LocalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/LocalService",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->service:Lorg/fourthline/cling/model/meta/LocalService;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 185
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v1, "No service implementation instance available, initializing..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->createServiceInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/DefaultServiceManager;->createPropertyChangeSupport(Ljava/lang/Object;)Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 192
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    iget-object v1, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/model/DefaultServiceManager;->createPropertyChangeListener(Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not initialize implementation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected lock()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getLockTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v1, "Acquired lock"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to acquire lock in milliseconds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getLockTimeoutMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to acquire lock:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readInitialEventedStateVariableValues()Ljava/util/Collection;
    .locals 1
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
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Implementation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unlock()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lorg/fourthline/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v1, "Releasing lock"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/DefaultServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    return-void
.end method
