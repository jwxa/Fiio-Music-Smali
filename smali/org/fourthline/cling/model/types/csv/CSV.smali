.class public abstract Lorg/fourthline/cling/model/types/csv/CSV;
.super Ljava/util/ArrayList;
.source "CSV.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final datatype:Lorg/fourthline/cling/model/types/Datatype$Builtin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/csv/CSV;->getBuiltinDatatype()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/types/csv/CSV;->datatype:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/csv/CSV;->getBuiltinDatatype()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/types/csv/CSV;->datatype:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 52
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/types/csv/CSV;->parseString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/csv/CSV;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-void
.end method


# virtual methods
.method protected getBuiltinDatatype()Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 4

    .prologue
    .line 65
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/seamless/util/Reflections;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 66
    invoke-static {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;

    move-result-object v1

    .line 67
    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No built-in UPnP datatype for Java type of CSV: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    return-object v0
.end method

.method protected parseString(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .prologue
    .line 56
    invoke-static {p1}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 61
    return-object v2

    .line 58
    :cond_0
    aget-object v4, v1, v0

    .line 59
    iget-object v5, p0, Lorg/fourthline/cling/model/types/csv/CSV;->datatype:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v5}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/csv/CSV;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 77
    iget-object v3, p0, Lorg/fourthline/cling/model/types/csv/CSV;->datatype:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/fourthline/cling/model/types/Datatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
