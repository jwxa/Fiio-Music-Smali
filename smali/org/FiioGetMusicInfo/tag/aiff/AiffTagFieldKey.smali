.class public final enum Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;
.super Ljava/lang/Enum;
.source "AiffTagFieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

.field public static final enum TIMESTAMP:Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;


# instance fields
.field private fieldName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7
    new-instance v0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    const-string v1, "TIMESTAMP"

    const-string v2, "TIMESTAMP"

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;->TIMESTAMP:Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;->TIMESTAMP:Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    aput-object v1, v0, v3

    sput-object v0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;->fieldName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTagFieldKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method
