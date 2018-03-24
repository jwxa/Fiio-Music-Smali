.class public final enum Lorg/fourthline/cling/support/model/Connection$Status;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/Connection$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Connected:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Connecting:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Disconnected:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Disconnecting:Lorg/fourthline/cling/support/model/Connection$Status;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum PendingDisconnect:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Unconfigured:Lorg/fourthline/cling/support/model/Connection$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "Unconfigured"

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->Unconfigured:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 109
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 113
    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->Connecting:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 115
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 119
    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->Connected:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 121
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "PendingDisconnect"

    invoke-direct {v0, v1, v6}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 125
    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->PendingDisconnect:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 127
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "Disconnecting"

    invoke-direct {v0, v1, v7}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 131
    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->Disconnecting:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 133
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "Disconnected"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->Disconnected:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/fourthline/cling/support/model/Connection$Status;

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Status;->Unconfigured:Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Status;->Connecting:Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Status;->Connected:Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Status;->PendingDisconnect:Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Status;->Disconnecting:Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/support/model/Connection$Status;->Disconnected:Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/Connection$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/Connection$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Connection$Status;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/Connection$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/Connection$Status;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/Connection$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
