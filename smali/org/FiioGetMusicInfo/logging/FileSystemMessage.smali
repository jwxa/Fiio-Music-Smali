.class public final enum Lorg/FiioGetMusicInfo/logging/FileSystemMessage;
.super Ljava/lang/Enum;
.source "FileSystemMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/logging/FileSystemMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCESS_IS_DENIED:Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/logging/FileSystemMessage;


# instance fields
.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8
    new-instance v0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    const-string v1, "ACCESS_IS_DENIED"

    const-string v2, "Access is denied"

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    aput-object v1, v0, v3

    sput-object v0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->msg:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/logging/FileSystemMessage;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/logging/FileSystemMessage;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->msg:Ljava/lang/String;

    return-object v0
.end method
