.class public final enum Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
.super Ljava/lang/Enum;
.source "LyricAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field public static final enum EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field public static final enum EXTRA_SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field public static final enum LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field public static final enum MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

.field public static final enum SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    const-string v1, "EXTRA_SMALL"

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 31
    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 32
    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 33
    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v5}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 34
    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    const-string v1, "EXTRA_LARGE"

    invoke-direct {v0, v1, v6}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->SMALL:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->MEDIUM:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ENUM$VALUES:[Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toLyricFontSize(Ljava/lang/String;)Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
    .locals 1

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->valueOf(Ljava/lang/String;)Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter;->DEFAULT_LYRIC_FONT_SIZE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    return-object v0
.end method

.method public static values()[Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->ENUM$VALUES:[Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
