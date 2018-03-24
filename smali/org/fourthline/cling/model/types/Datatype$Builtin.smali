.class public final enum Lorg/fourthline/cling/model/types/Datatype$Builtin;
.super Ljava/lang/Enum;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/model/types/Datatype$Builtin;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum BIN_HEX:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum DATE:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum DATETIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum FIXED144:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum NUMBER:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum R8:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum TIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum TIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UUID:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/types/Datatype$Builtin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private datatype:Lorg/fourthline/cling/model/types/Datatype;

.field private descriptorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 100
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "UI1"

    const-string v2, "ui1"

    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedIntegerOneByteDatatype;

    invoke-direct {v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerOneByteDatatype;-><init>()V

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 101
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "UI2"

    const-string v2, "ui2"

    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 102
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "UI4"

    const-string v2, "ui4"

    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytesDatatype;

    invoke-direct {v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytesDatatype;-><init>()V

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 103
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "I1"

    const-string v2, "i1"

    new-instance v3, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v3, v7}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 104
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "I2"

    const-string v2, "i2"

    new-instance v3, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v3, v9}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 105
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "I2_SHORT"

    const/4 v2, 0x5

    const-string v3, "i2"

    new-instance v4, Lorg/fourthline/cling/model/types/ShortDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/ShortDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 106
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "I4"

    const/4 v2, 0x6

    const-string v3, "i4"

    new-instance v4, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v4, v10}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 107
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "INT"

    const/4 v2, 0x7

    const-string v3, "int"

    new-instance v4, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v4, v10}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 108
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "R4"

    const/16 v2, 0x8

    const-string v3, "r4"

    new-instance v4, Lorg/fourthline/cling/model/types/FloatDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/FloatDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 109
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "R8"

    const/16 v2, 0x9

    const-string v3, "r8"

    new-instance v4, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R8:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 110
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "NUMBER"

    const/16 v2, 0xa

    const-string v3, "number"

    new-instance v4, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->NUMBER:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 111
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "FIXED144"

    const/16 v2, 0xb

    const-string v3, "fixed.14.4"

    new-instance v4, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FIXED144:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 112
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "FLOAT"

    const/16 v2, 0xc

    const-string v3, "float"

    new-instance v4, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 113
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "CHAR"

    const/16 v2, 0xd

    const-string v3, "char"

    new-instance v4, Lorg/fourthline/cling/model/types/CharacterDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/CharacterDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 114
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "STRING"

    const/16 v2, 0xe

    const-string v3, "string"

    new-instance v4, Lorg/fourthline/cling/model/types/StringDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/StringDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 115
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "DATE"

    const/16 v2, 0xf

    const-string v3, "date"

    new-instance v4, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    .line 116
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "yyyy-MM-dd"

    aput-object v6, v5, v8

    .line 117
    const-string v6, "yyyy-MM-dd"

    invoke-direct {v4, v5, v6}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    .line 115
    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATE:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 119
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "DATETIME"

    const/16 v2, 0x10

    const-string v3, "dateTime"

    new-instance v4, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    .line 120
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "yyyy-MM-dd"

    aput-object v6, v5, v8

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v6, v5, v7

    .line 121
    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v4, v5, v6}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    .line 119
    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 123
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "DATETIME_TZ"

    const/16 v2, 0x11

    const-string v3, "dateTime.tz"

    new-instance v4, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    .line 124
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "yyyy-MM-dd"

    aput-object v6, v5, v8

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v6, v5, v7

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v6, v5, v9

    .line 125
    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v4, v5, v6}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    .line 123
    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 127
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "TIME"

    const/16 v2, 0x12

    const-string v3, "time"

    new-instance v4, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    .line 128
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "HH:mm:ss"

    aput-object v6, v5, v8

    .line 129
    const-string v6, "HH:mm:ss"

    invoke-direct {v4, v5, v6}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    .line 127
    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 131
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "TIME_TZ"

    const/16 v2, 0x13

    const-string v3, "time.tz"

    new-instance v4, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    .line 132
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "HH:mm:ssZ"

    aput-object v6, v5, v8

    const-string v6, "HH:mm:ss"

    aput-object v6, v5, v7

    .line 133
    const-string v6, "HH:mm:ssZ"

    invoke-direct {v4, v5, v6}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    .line 131
    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 135
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "BOOLEAN"

    const/16 v2, 0x14

    const-string v3, "boolean"

    new-instance v4, Lorg/fourthline/cling/model/types/BooleanDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/BooleanDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 136
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "BIN_BASE64"

    const/16 v2, 0x15

    const-string v3, "bin.base64"

    new-instance v4, Lorg/fourthline/cling/model/types/Base64Datatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/Base64Datatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 137
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "BIN_HEX"

    const/16 v2, 0x16

    const-string v3, "bin.hex"

    new-instance v4, Lorg/fourthline/cling/model/types/BinHexDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/BinHexDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_HEX:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 138
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "URI"

    const/16 v2, 0x17

    const-string v3, "uri"

    new-instance v4, Lorg/fourthline/cling/model/types/URIDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/URIDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 139
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v1, "UUID"

    const/16 v2, 0x18

    const-string v3, "uuid"

    new-instance v4, Lorg/fourthline/cling/model/types/StringDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/StringDatatype;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UUID:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v0, 0x19

    new-array v0, v0, [Lorg/fourthline/cling/model/types/Datatype$Builtin;

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R8:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->NUMBER:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FIXED144:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATE:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_HEX:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UUID:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->ENUM$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 141
    new-instance v0, Lorg/fourthline/cling/model/types/a;

    invoke-direct {v0}, Lorg/fourthline/cling/model/types/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->byName:Ljava/util/Map;

    .line 148
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/types/AbstractDatatype",
            "<TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p4, p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->setBuiltin(Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    .line 155
    iput-object p3, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->descriptorName:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->datatype:Lorg/fourthline/cling/model/types/Datatype;

    .line 157
    return-void
.end method

.method public static getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 2

    .prologue
    .line 171
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    goto :goto_0
.end method

.method public static isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z
    .locals 1

    .prologue
    .line 176
    if-eqz p0, :cond_1

    .line 177
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->ENUM$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Builtin;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->datatype:Lorg/fourthline/cling/model/types/Datatype;

    return-object v0
.end method

.method public final getDescriptorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->descriptorName:Ljava/lang/String;

    return-object v0
.end method
