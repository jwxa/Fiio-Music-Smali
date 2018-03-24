.class public Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;
.super Ljava/lang/Object;
.source "AnnotationLocalServiceBinder.java"

# interfaces
.implements Lorg/fourthline/cling/binding/LocalServiceBinder;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toJavaActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toJavaStateVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toUpnpActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected isActionExcluded(Lorg/fourthline/cling/model/meta/Action;)Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading and binding annotations of service implementation class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 64
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpService;

    .line 67
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->serviceId()Lorg/fourthline/cling/binding/annotations/UpnpServiceId;

    move-result-object v1

    .line 68
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->serviceType()Lorg/fourthline/cling/binding/annotations/UpnpServiceType;

    move-result-object v4

    .line 70
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->namespace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upnp-org"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Lorg/fourthline/cling/model/types/UDAServiceId;

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/fourthline/cling/model/types/UDAServiceId;-><init>(Ljava/lang/String;)V

    .line 74
    :goto_0
    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->namespace()Ljava/lang/String;

    move-result-object v1

    const-string v3, "schemas-upnp-org"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v3, Lorg/fourthline/cling/model/types/UDAServiceType;

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->version()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    .line 78
    :goto_1
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->supportsQueryStateVariables()Z

    move-result v4

    .line 80
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->stringConvertibleTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->readStringConvertibleTypes([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 82
    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v2, Lorg/fourthline/cling/model/types/ServiceId;

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->namespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/fourthline/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v3, Lorg/fourthline/cling/model/types/ServiceType;

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->namespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->version()I

    move-result v4

    invoke-direct {v3, v1, v5, v4}, Lorg/fourthline/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 84
    :cond_2
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string v1, "Given class is not an @UpnpService"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1, p5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->readStateVariables(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 98
    invoke-virtual {p0, p1, v4, p5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->readActions(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 101
    if-eqz p4, :cond_0

    .line 102
    new-instance v0, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    invoke-direct {v0}, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;-><init>()V

    new-instance v1, Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;

    invoke-direct {v1}, Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;-><init>()V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/meta/LocalService;

    move-object v1, p3

    move-object v2, p2

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/LocalService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Z)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not validate device model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string v1, "Validation of model failed, check the log"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/ValidationError;

    .line 111
    sget-object v2, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;Z[Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Z[",
            "Ljava/lang/Class;",
            ")",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v5, Ljava/util/HashSet;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0
.end method

.method protected readActions(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/Action;",
            "Lorg/fourthline/cling/model/action/ActionExecutor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    invoke-static {p1, v0}, Lorg/seamless/util/Reflections;->getMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    return-object v1

    .line 243
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 245
    new-instance v3, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;

    invoke-direct {v3, v0, p2, p3}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;-><init>(Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/Set;)V

    .line 244
    invoke-virtual {v3, v1}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->appendAction(Ljava/util/Map;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->isActionExcluded(Lorg/fourthline/cling/model/meta/Action;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected readStateVariables(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;

    .line 151
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;->value()[Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_1

    .line 183
    :cond_0
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-static {p1, v0}, Lorg/seamless/util/Reflections;->getFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 202
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-static {p1, v0}, Lorg/seamless/util/Reflections;->getMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 233
    return-object v3

    .line 151
    :cond_1
    aget-object v6, v4, v2

    .line 153
    invoke-interface {v6}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 154
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string v1, "Class-level @UpnpStateVariable name attribute value required"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    invoke-interface {v6}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toJavaStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {p1, v1}, Lorg/seamless/util/Reflections;->getGetterMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 159
    invoke-static {p1, v1}, Lorg/seamless/util/Reflections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 161
    const/4 v1, 0x0

    .line 162
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 163
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;->preferFields()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    new-instance v1, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v1, v8}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 175
    :goto_3
    new-instance v7, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;

    invoke-interface {v6}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8, v1, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 176
    invoke-virtual {v7}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v6

    .line 178
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 165
    :cond_3
    new-instance v1, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v1, v7}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_3

    .line 166
    :cond_4
    if-eqz v8, :cond_5

    .line 167
    new-instance v1, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v1, v8}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 168
    :cond_5
    if-eqz v7, :cond_6

    .line 169
    new-instance v1, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v1, v7}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_3

    .line 171
    :cond_6
    sget-object v7, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No field or getter found for state variable, skipping accessor: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_3

    .line 183
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 185
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 187
    new-instance v4, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v4, v0}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 189
    new-instance v5, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 191
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_4
    invoke-direct {v5, v1, v0, v4, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 196
    invoke-virtual {v5}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 198
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 193
    :cond_8
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 202
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 204
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/seamless/util/Reflections;->getMethodPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    if-nez v4, :cond_a

    .line 206
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Annotated method is not a getter method (: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-direct {v1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_a
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_b

    .line 212
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getter method defined as @UpnpStateVariable can not have parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-direct {v1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_b
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 218
    new-instance v5, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v5, v0}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 220
    new-instance v6, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 222
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 224
    invoke-static {v4}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_5
    invoke-direct {v6, v1, v0, v5, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 228
    invoke-virtual {v6}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 230
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 225
    :cond_c
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected readStringConvertibleTypes([Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    const-class v1, Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const-class v1, Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-class v1, Lorg/fourthline/cling/model/types/csv/CSV;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v0

    .line 119
    :cond_0
    aget-object v2, p1, v0

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Declared string-convertible type must be public: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Declared string-convertible type needs a public single-argument String constructor: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
