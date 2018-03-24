.class public abstract Lorg/fourthline/cling/model/meta/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/fourthline/cling/model/meta/Device;",
        "S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/meta/Action;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final serviceId:Lorg/fourthline/cling/model/types/ServiceId;

.field private final serviceType:Lorg/fourthline/cling/model/types/ServiceType;

.field private final stateVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/fourthline/cling/model/meta/Service;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action",
            "<TS;>;[",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Service;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    .line 55
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Service;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    .line 57
    if-eqz p3, :cond_0

    .line 58
    array-length v2, p3

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 64
    :cond_0
    if-eqz p4, :cond_1

    .line 65
    array-length v1, p4

    :goto_1
    if-lt v0, v1, :cond_3

    .line 71
    :cond_1
    return-void

    .line 58
    :cond_2
    aget-object v3, p3, v1

    .line 59
    iget-object v4, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v3, p0}, Lorg/fourthline/cling/model/meta/Action;->setService(Lorg/fourthline/cling/model/meta/Service;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_3
    aget-object v2, p4, v0

    .line 66
    iget-object v3, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, p0}, Lorg/fourthline/cling/model/meta/StateVariable;->setService(Lorg/fourthline/cling/model/meta/Service;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Action;

    goto :goto_0
.end method

.method public getActions()[Lorg/fourthline/cling/model/meta/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/Action;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/Action;

    goto :goto_0
.end method

.method public getDatatype(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/types/Datatype;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/fourthline/cling/model/types/Datatype",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/Service;->getRelatedStateVariable(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->device:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public abstract getQueryStateVariableAction()Lorg/fourthline/cling/model/meta/Action;
.end method

.method public getReference()Lorg/fourthline/cling/model/ServiceReference;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lorg/fourthline/cling/model/ServiceReference;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/ServiceReference;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/ServiceId;)V

    return-object v0
.end method

.method public getRelatedStateVariable(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()Lorg/fourthline/cling/model/types/ServiceId;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    return-object v0
.end method

.method public getServiceType()Lorg/fourthline/cling/model/types/ServiceType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "VirtualQueryActionInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariable;

    .line 116
    const-string v1, "VirtualQueryActionInput"

    .line 117
    new-instance v2, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;)V

    .line 115
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;)V

    .line 126
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v0, "VirtualQueryActionOutput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariable;

    .line 122
    const-string v1, "VirtualQueryActionOutput"

    .line 123
    new-instance v2, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;)V

    .line 121
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/StateVariable;

    goto :goto_0
.end method

.method public getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/StateVariable;

    goto :goto_0
.end method

.method public hasActions()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateVariables()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->device:Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Service;->device:Lorg/fourthline/cling/model/meta/Device;

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ServiceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 147
    const-string v4, "serviceType"

    .line 148
    const-string v5, "Service type/info is required"

    invoke-direct {v1, v3, v4, v5}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    if-nez v1, :cond_1

    .line 153
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 155
    const-string v4, "serviceId"

    .line 156
    const-string v5, "Service ID is required"

    invoke-direct {v1, v3, v4, v5}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->hasActions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_4

    .line 180
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->hasStateVariables()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-lt v0, v3, :cond_5

    .line 186
    :cond_3
    return-object v2

    .line 175
    :cond_4
    aget-object v5, v3, v1

    .line 176
    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Action;->validate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_5
    aget-object v4, v1, v0

    .line 182
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/StateVariable;->validate()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
