.class public Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;
.super Ljava/lang/Object;
.source "AnnotationStateVariableBinder.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected accessor:Lorg/fourthline/cling/model/state/StateVariableAccessor;

.field protected annotation:Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

.field protected name:Ljava/lang/String;

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
    .line 37
    const-class v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 47
    iput-object p2, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->name:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->accessor:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 49
    iput-object p4, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->stringConvertibleTypes:Ljava/util/Set;

    .line 50
    return-void
.end method


# virtual methods
.method protected createDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 5

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->datatype()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 186
    sget-object v2, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using accessor return type as state variable type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/fourthline/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    const-string v1, "Return type is string-convertible, using string datatype"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-static {v1}, Lorg/fourthline/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_1

    .line 195
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Return type has default UPnP datatype: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 203
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    .line 204
    :cond_3
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    const-string v1, "State variable has restricted allowed values, hence using \'string\' datatype"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 205
    const-string v0, "string"

    .line 209
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 210
    :cond_5
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not detect datatype of state variable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_6
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to find built-in UPnP datatype for detected name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 216
    invoke-static {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found built-in UPnP datatype: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :cond_7
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string v1, "No built-in UPnP datatype found, using CustomDataType (TODO: NOT IMPLEMENTED)"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createDefaultValue(Lorg/fourthline/cling/model/types/Datatype;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found state variable default value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default value doesn\'t match datatype of state variable \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {v1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 70
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating state variable \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with accessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v9

    .line 76
    invoke-virtual {p0, v9}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createDefaultValue(Lorg/fourthline/cling/model/types/Datatype;)Ljava/lang/String;

    move-result-object v10

    .line 80
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-interface {v9}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueProvider()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValuesFromProvider()[Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_7

    if-eqz v10, :cond_7

    .line 98
    array-length v3, v0

    move v2, v8

    :goto_1
    if-lt v2, v3, :cond_4

    move v2, v8

    .line 104
    :goto_2
    if-nez v2, :cond_7

    .line 105
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in allowed values of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    .line 87
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not restricting allowed values (of string typed state var): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 98
    :cond_4
    aget-object v4, v0, v2

    .line 99
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    const/4 v2, 0x1

    .line 101
    goto/16 :goto_2

    .line 98
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    .line 114
    :cond_7
    invoke-interface {v9}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v2

    invoke-static {v2}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 116
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueRangeProvider()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_8

    .line 117
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedRangeFromProvider()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    .line 129
    :goto_3
    if-eqz v10, :cond_b

    if-eqz v1, :cond_b

    .line 133
    :try_start_0
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 140
    invoke-virtual {v1, v2, v3}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->isInRange(J)Z

    move-result v2

    if-nez v2, :cond_b

    .line 141
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in allowed range of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_8
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_9

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_a

    .line 120
    :cond_9
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    move-result-wide v2

    .line 121
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    move-result-wide v4

    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueStep()J

    move-result-wide v6

    move-object v1, p0

    .line 119
    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValueRange(JJJ)Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    goto :goto_3

    .line 125
    :cond_a
    sget-object v2, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not restricting allowed value range (of numeric typed state var): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 135
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not numeric (for range checking) of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_b
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->sendEvents()Z

    move-result v3

    .line 150
    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v2

    if-nez v2, :cond_c

    .line 151
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State variable sends events but has no accessor for field or getter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_c
    if-eqz v3, :cond_f

    .line 159
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    move-result v2

    if-lez v2, :cond_e

    .line 160
    sget-object v2, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Moderating state variable events using maximum rate (milliseconds): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v5

    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    move-result v2

    .line 164
    :goto_4
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    move-result v4

    if-lez v4, :cond_d

    invoke-interface {v9}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v4

    invoke-static {v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 166
    sget-object v4, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Moderating state variable events using minimum delta: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v6

    invoke-interface {v6}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    move-result v8

    .line 172
    :cond_d
    :goto_5
    new-instance v4, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    invoke-direct {v4, v9, v10, v0, v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;)V

    .line 175
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v0, v3, v2, v8}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    .line 177
    new-instance v1, Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v0}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;Lorg/fourthline/cling/model/meta/StateVariableEventDetails;)V

    return-object v1

    :cond_e
    move v2, v8

    goto :goto_4

    :cond_f
    move v2, v8

    goto :goto_5
.end method

.method public getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->accessor:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    return-object v0
.end method

.method protected getAllowedRangeFromProvider()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;
    .locals 8

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueRangeProvider()Ljava/lang/Class;

    move-result-object v0

    .line 296
    const-class v1, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allowed value range provider is not of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;

    .line 304
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;->getMinimum()J

    move-result-wide v2

    .line 305
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;->getMaximum()J

    move-result-wide v4

    .line 306
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;->getStep()J

    move-result-wide v6

    move-object v1, p0

    .line 303
    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValueRange(JJJ)Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allowed value range provider can\'t be instantiated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getAllowedValueRange(JJJ)Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;
    .locals 9

    .prologue
    .line 270
    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    .line 271
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allowed value range maximum is smaller than minimum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    return-object v1
.end method

.method protected getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 247
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allowed values type is not an Enum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Restricting allowed values of state variable to Enum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 264
    return-object v1

    .line 254
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 256
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Allowed value string (that is, Enum constant name) is longer than 32 characters: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    sget-object v3, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding allowed value (converted to string): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getAllowedValuesFromProvider()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueProvider()Ljava/lang/Class;

    move-result-object v0

    .line 281
    const-class v1, Lorg/fourthline/cling/binding/AllowedValueProvider;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allowed value provider is not of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/fourthline/cling/binding/AllowedValueProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/AllowedValueProvider;

    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueProvider;->getValues()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allowed value provider can\'t be instantiated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->name:Ljava/lang/String;

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
    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method
