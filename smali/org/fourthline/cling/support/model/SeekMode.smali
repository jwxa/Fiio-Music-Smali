.class public final enum Lorg/fourthline/cling/support/model/SeekMode;
.super Ljava/lang/Enum;
.source "SeekMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABS_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum ABS_TIME:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum CHANNEL_FREQ:Lorg/fourthline/cling/support/model/SeekMode;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum FRAME:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum REL_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum TAPE_INDEX:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum TRACK_NR:Lorg/fourthline/cling/support/model/SeekMode;


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

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "TRACK_NR"

    const-string v2, "TRACK_NR"

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->TRACK_NR:Lorg/fourthline/cling/support/model/SeekMode;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "ABS_TIME"

    const-string v2, "ABS_TIME"

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->ABS_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "REL_TIME"

    const-string v2, "REL_TIME"

    invoke-direct {v0, v1, v6, v2}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "ABS_COUNT"

    const-string v2, "ABS_COUNT"

    invoke-direct {v0, v1, v7, v2}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->ABS_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "REL_COUNT"

    const-string v2, "REL_COUNT"

    invoke-direct {v0, v1, v8, v2}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->REL_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "CHANNEL_FREQ"

    const/4 v2, 0x5

    const-string v3, "CHANNEL_FREQ"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->CHANNEL_FREQ:Lorg/fourthline/cling/support/model/SeekMode;

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "TAPE_INDEX"

    const/4 v2, 0x6

    const-string v3, "TAPE-INDEX"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->TAPE_INDEX:Lorg/fourthline/cling/support/model/SeekMode;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "FRAME"

    const/4 v2, 0x7

    const-string v3, "FRAME"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->FRAME:Lorg/fourthline/cling/support/model/SeekMode;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/fourthline/cling/support/model/SeekMode;

    sget-object v1, Lorg/fourthline/cling/support/model/SeekMode;->TRACK_NR:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/SeekMode;->ABS_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/SeekMode;->REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/SeekMode;->ABS_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/SeekMode;->REL_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/support/model/SeekMode;->CHANNEL_FREQ:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fourthline/cling/support/model/SeekMode;->TAPE_INDEX:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/fourthline/cling/support/model/SeekMode;->FRAME:Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/SeekMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lorg/fourthline/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/SeekMode;

    return-object v0
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;
    .locals 5

    .prologue
    .line 46
    invoke-static {}, Lorg/fourthline/cling/support/model/SeekMode;->values()[Lorg/fourthline/cling/support/model/SeekMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid seek mode string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    aget-object v3, v1, v0

    .line 47
    iget-object v4, v3, Lorg/fourthline/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    return-object v3

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/SeekMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/SeekMode;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/SeekMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/SeekMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    return-object v0
.end method
