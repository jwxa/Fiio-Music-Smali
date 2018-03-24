.class public Lorg/fourthline/cling/model/types/SoapActionType;
.super Ljava/lang/Object;
.source "SoapActionType.java"


# static fields
.field public static final MAGIC_CONTROL_NS:Ljava/lang/String; = "schemas-upnp-org"

.field public static final MAGIC_CONTROL_TYPE:Ljava/lang/String; = "control-1-0"

.field public static final PATTERN:Ljava/util/regex/Pattern;

.field public static final PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;


# instance fields
.field private actionName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "urn:schemas-upnp-org:control-1-0#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 34
    sput-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+)#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 37
    sput-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    .line 53
    iput-object p4, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    .line 55
    if-eqz p4, :cond_0

    invoke-static {p4}, Lorg/fourthline/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action name contains illegal characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/SoapActionType;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 77
    sget-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/fourthline/cling/model/types/SoapActionType;

    const-string v2, "schemas-upnp-org"

    const-string v3, "control-1-0"

    const/4 v4, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lorg/fourthline/cling/model/types/SoapActionType;

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse action type string (namespace/type/version#actionName): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lorg/fourthline/cling/model/types/SoapActionType;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 112
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 114
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 115
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 116
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 117
    :cond_6
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lorg/fourthline/cling/model/types/ServiceType;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/ServiceType;

    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    iget-object v3, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 128
    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
