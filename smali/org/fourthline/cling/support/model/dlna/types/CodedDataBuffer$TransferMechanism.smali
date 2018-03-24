.class public final enum Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
.super Ljava/lang/Enum;
.source "CodedDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

.field public static final enum IMMEDIATELY:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

.field public static final enum OTHER:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

.field public static final enum TIMESTAMP:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->IMMEDIATELY:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const-string v1, "TIMESTAMP"

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->TIMESTAMP:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->OTHER:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->IMMEDIATELY:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->TIMESTAMP:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->OTHER:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
