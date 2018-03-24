.class public Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;
.super Ljava/lang/Object;
.source "AnnotationActionBinder.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected annotation:Lorg/fourthline/cling/binding/annotations/UpnpAction;

.field protected method:Ljava/lang/reflect/Method;

.field protected stateVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation
.end field

.field protected stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    iput-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpAction;

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stateVariables:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    .line 58
    iput-object p3, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stringConvertibleTypes:Ljava/util/Set;

    .line 59
    return-void
.end method


# virtual methods
.method public appendAction(Ljava/util/Map;)Lorg/fourthline/cling/model/meta/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/Action;",
            "Lorg/fourthline/cling/model/action/ActionExecutor;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/Action;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpAction;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpAction;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->name()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 86
    :goto_0
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating action and executor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->createInputArguments()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->createOutputArguments()Ljava/util/Map;

    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/fourthline/cling/model/meta/ActionArgument;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 95
    new-instance v3, Lorg/fourthline/cling/model/meta/Action;

    invoke-direct {v3, v1, v0}, Lorg/fourthline/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V

    .line 96
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->createExecutor(Ljava/util/Map;)Lorg/fourthline/cling/model/action/ActionExecutor;

    move-result-object v0

    .line 98
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object v3

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method protected createExecutor(Ljava/util/Map;)Lorg/fourthline/cling/model/action/ActionExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/ActionArgument",
            "<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;)",
            "Lorg/fourthline/cling/model/action/ActionExecutor;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/fourthline/cling/model/action/MethodActionExecutor;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/fourthline/cling/model/action/MethodActionExecutor;-><init>(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method protected createInputArguments()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    move v1, v2

    move v0, v2

    .line 114
    :goto_0
    array-length v3, v6

    if-lt v1, v3, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 153
    const-class v0, Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    iget-object v1, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method has parameters that are not input arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    aget-object v7, v6, v1

    .line 116
    array-length v8, v7

    move v4, v2

    move v3, v0

    :goto_1
    if-lt v4, v8, :cond_1

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 116
    :cond_1
    aget-object v0, v7, v4

    .line 117
    instance-of v9, v0, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;

    if-eqz v9, :cond_3

    .line 118
    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;->name()Ljava/lang/String;

    move-result-object v9

    .line 126
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;->stateVariable()Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual {p0, v10, v9, v11}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v10

    .line 131
    if-nez v10, :cond_2

    .line 132
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not detected related state variable of argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v1

    invoke-virtual {p0, v10, v11}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 139
    new-instance v11, Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 141
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;->aliases()[Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v10}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v10

    .line 143
    sget-object v12, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    .line 139
    invoke-direct {v11, v9, v0, v10, v12}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;)V

    .line 146
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 157
    :cond_4
    return-object v5
.end method

.method protected createOutputArguments()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/ActionArgument",
            "<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 164
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    .line 165
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->out()[Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    move-object v0, v4

    .line 208
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->out()[Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_1

    move v1, v2

    .line 169
    :goto_1
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->out()[Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    :goto_2
    if-lt v5, v7, :cond_2

    move-object v0, v4

    .line 208
    goto :goto_0

    :cond_1
    move v1, v3

    .line 167
    goto :goto_1

    .line 169
    :cond_2
    aget-object v8, v6, v5

    .line 171
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->name()Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->stateVariable()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 173
    invoke-virtual {p0, v0, v9, v10}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 180
    if-nez v0, :cond_3

    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 181
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v13, v13, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 184
    :cond_3
    if-nez v0, :cond_4

    .line 185
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Related state variable not found for output argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_4
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-virtual {p0, v0, v8, v1}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findOutputArgumentAccessor(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/String;Z)Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v8

    .line 196
    sget-object v10, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Found related state variable for output argument \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 198
    new-instance v10, Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 200
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v11

    .line 201
    sget-object v12, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    .line 202
    if-eqz v1, :cond_5

    move v0, v3

    .line 198
    :goto_3
    invoke-direct {v10, v9, v11, v12, v0}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V

    .line 205
    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 202
    goto :goto_3
.end method

.method protected findOutputArgumentAccessor(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/String;Z)Lorg/fourthline/cling/model/state/StateVariableAccessor;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 216
    if-eqz v0, :cond_2

    .line 218
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 219
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action method is void, will use getter method named: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/seamless/util/Reflections;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 223
    if-nez v1, :cond_0

    .line 224
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Declared getter method \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 230
    new-instance v0, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 257
    :goto_0
    return-object v0

    .line 233
    :cond_1
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action method is void, trying to find existing accessor of related: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariables()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/state/StateVariableAccessor;

    goto :goto_0

    .line 238
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 239
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action method is not void, will use getter method on returned instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/seamless/util/Reflections;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 243
    if-nez v1, :cond_3

    .line 244
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Declared getter method \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found on return type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 250
    new-instance v0, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 252
    :cond_4
    if-nez p3, :cond_5

    .line 253
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action method is not void, will use the returned instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 257
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 4

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 266
    invoke-static {p1}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finding related state variable with declared name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 271
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 272
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finding related state variable with argument name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 276
    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A_ARG_TYPE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finding related state variable with prefixed argument name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 283
    :cond_2
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 285
    invoke-static {p3}, Lorg/seamless/util/Reflections;->getMethodPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_3

    .line 287
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finding related state varible with method property name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 290
    invoke-static {v1}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 295
    :cond_3
    return-object v0
.end method

.method public getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpAction;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariables()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 330
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/StateVariable;

    .line 331
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getStateVariables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stateVariables:Ljava/util/Map;

    return-object v0
.end method

.method public getStringConvertibleTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method

.method protected validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/fourthline/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 308
    :goto_0
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to match default mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 310
    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/fourthline/cling/model/types/Datatype;->isHandlingJavaType(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State variable \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' datatype can\'t handle action argument\'s Java type (change one): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-direct {v1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    invoke-static {p2}, Lorg/fourthline/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State variable \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' should be custom datatype (action argument type is unknown Java type): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    const-string v1, "State variable matches required argument datatype (or can\'t be validated because it is custom)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 327
    return-void
.end method
