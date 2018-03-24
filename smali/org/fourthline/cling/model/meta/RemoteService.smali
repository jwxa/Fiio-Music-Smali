.class public Lorg/fourthline/cling/model/meta/RemoteService;
.super Lorg/fourthline/cling/model/meta/Service;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/meta/Service",
        "<",
        "Lorg/fourthline/cling/model/meta/RemoteDevice;",
        "Lorg/fourthline/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# instance fields
.field private final controlURI:Ljava/net/URI;

.field private final descriptorURI:Ljava/net/URI;

.field private final eventSubscriptionURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;[",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p6, p7}, Lorg/fourthline/cling/model/meta/Service;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    .line 52
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/RemoteService;->descriptorURI:Ljava/net/URI;

    .line 53
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/RemoteService;->controlURI:Ljava/net/URI;

    .line 54
    iput-object p5, p0, Lorg/fourthline/cling/model/meta/RemoteService;->eventSubscriptionURI:Ljava/net/URI;

    .line 56
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteService;->validateThis()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    new-instance v1, Lorg/fourthline/cling/model/ValidationException;

    const-string v2, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public getControlURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteService;->controlURI:Ljava/net/URI;

    return-object v0
.end method

.method public getDescriptorURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteService;->descriptorURI:Ljava/net/URI;

    return-object v0
.end method

.method public getEventSubscriptionURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteService;->eventSubscriptionURI:Ljava/net/URI;

    return-object v0
.end method

.method public getQueryStateVariableAction()Lorg/fourthline/cling/model/meta/Action;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateThis()Ljava/util/List;
    .locals 5
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
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 85
    const-string v3, "descriptorURI"

    .line 86
    const-string v4, "Descriptor location (SCPDURL) is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 93
    const-string v3, "controlURI"

    .line 94
    const-string v4, "Control URL is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_2

    .line 99
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 101
    const-string v3, "eventSubscriptionURI"

    .line 102
    const-string v4, "Event subscription URL is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    return-object v0
.end method
