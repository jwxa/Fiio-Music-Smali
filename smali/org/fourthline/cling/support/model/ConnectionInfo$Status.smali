.class public final enum Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
.super Ljava/lang/Enum;
.source "ConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/ConnectionInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ContentFormatMismatch:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum InsufficientBandwidth:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum UnreliableChannel:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v1, "ContentFormatMismatch"

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->ContentFormatMismatch:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v1, "InsufficientBandwidth"

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->InsufficientBandwidth:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v1, "UnreliableChannel"

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->UnreliableChannel:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    sget-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->ContentFormatMismatch:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->InsufficientBandwidth:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->UnreliableChannel:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    aput-object v1, v0, v6

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
