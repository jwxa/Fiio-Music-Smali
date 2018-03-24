.class public final enum Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;
.super Ljava/lang/Enum;
.source "PadNumberOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

.field public static final enum PAD_ONE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

.field public static final enum PAD_THREE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

.field public static final enum PAD_TWO_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    const-string v1, "PAD_ONE_ZERO"

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    .line 15
    new-instance v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    const-string v1, "PAD_TWO_ZERO"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    const-string v1, "PAD_THREE_ZERO"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    aput-object v1, v0, v4

    sput-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
