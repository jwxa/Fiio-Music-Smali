.class public Lorg/fourthline/cling/model/meta/StateVariable;
.super Ljava/lang/Object;
.source "StateVariable.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

.field private final name:Ljava/lang/String;

.field private service:Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final type:Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/StateVariable;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v0}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;Lorg/fourthline/cling/model/meta/StateVariableEventDetails;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;Lorg/fourthline/cling/model/meta/StateVariableEventDetails;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/StateVariable;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/StateVariable;->type:Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    .line 51
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/StateVariable;->eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    .line 52
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariable;

    .line 103
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    move-result-object v3

    .line 102
    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;Lorg/fourthline/cling/model/meta/StateVariableEventDetails;)V

    return-object v0
.end method

.method public getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariable;->eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariable;->service:Lorg/fourthline/cling/model/meta/Service;

    return-object v0
.end method

.method public getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariable;->type:Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    return-object v0
.end method

.method public isModeratedNumericType()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->getEventMinimumDelta()I

    move-result v0

    .line 96
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setService(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariable;->service:Lorg/fourthline/cling/model/meta/Service;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/StateVariable;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, ", Name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, ", Type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/model/types/Datatype;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, " (No Events)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, " Default Value: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, " Allowed Values: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_3

    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_3
    aget-object v4, v2, v0

    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 80
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 82
    const-string v3, "name"

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StateVariable without name of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-object v0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    sget-object v1, Lorg/fourthline/cling/model/meta/StateVariable;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPnP specification violation of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariable;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lorg/fourthline/cling/model/meta/StateVariable;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state variable name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
