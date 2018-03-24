.class public final enum Lorg/fourthline/cling/support/model/RecordQualityMode;
.super Ljava/lang/Enum;
.source "RecordQualityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/RecordQualityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASIC:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum EP:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum HIGH:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum LP:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum MEDIUM:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum SP:Lorg/fourthline/cling/support/model/RecordQualityMode;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "EP"

    const-string v2, "0:EP"

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->EP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "LP"

    const-string v2, "1:LP"

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->LP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "SP"

    const-string v2, "2:SP"

    invoke-direct {v0, v1, v6, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->SP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "BASIC"

    const-string v2, "0:BASIC"

    invoke-direct {v0, v1, v7, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->BASIC:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "MEDIUM"

    const-string v2, "1:MEDIUM"

    invoke-direct {v0, v1, v8, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->MEDIUM:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "HIGH"

    const/4 v2, 0x5

    const-string v3, "2:HIGH"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->HIGH:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "NOT_IMPLEMENTED"

    const/4 v2, 0x6

    const-string v3, "NOT_IMPLEMENTED"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->EP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->LP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->SP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->BASIC:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->MEDIUM:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/support/model/RecordQualityMode;->HIGH:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object v0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-static {p0}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 58
    if-nez v3, :cond_0

    new-array v0, v1, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 67
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    array-length v5, v3

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_1

    .line 67
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    goto :goto_0

    .line 60
    :cond_1
    aget-object v6, v3, v0

    .line 61
    invoke-static {}, Lorg/fourthline/cling/support/model/RecordQualityMode;->values()[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v7

    array-length v8, v7

    move v2, v1

    :goto_2
    if-lt v2, v8, :cond_2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_2
    aget-object v9, v7, v2

    .line 62
    iget-object v10, v9, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 63
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lorg/fourthline/cling/support/model/RecordQualityMode;->values()[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid record quality mode string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    aget-object v3, v1, v0

    .line 49
    iget-object v4, v3, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    return-object v3

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    return-object v0
.end method
