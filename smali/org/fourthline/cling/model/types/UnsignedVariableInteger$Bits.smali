.class public final enum Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
.super Ljava/lang/Enum;
.source "UnsignedVariableInteger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EIGHT:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum SIXTEEN:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum THIRTYTWO:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum TWENTYFOUR:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;


# instance fields
.field private maxValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v1, "EIGHT"

    const-wide/16 v2, 0xff

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->EIGHT:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 31
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v1, "SIXTEEN"

    const-wide/32 v2, 0xffff

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->SIXTEEN:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 32
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v1, "TWENTYFOUR"

    const-wide/32 v2, 0xffffff

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->TWENTYFOUR:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v1, "THIRTYTWO"

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    sget-object v1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->EIGHT:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->SIXTEEN:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->TWENTYFOUR:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    aput-object v1, v0, v7

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->ENUM$VALUES:[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-wide p3, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->maxValue:J

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->ENUM$VALUES:[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getMaxValue()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->maxValue:J

    return-wide v0
.end method
