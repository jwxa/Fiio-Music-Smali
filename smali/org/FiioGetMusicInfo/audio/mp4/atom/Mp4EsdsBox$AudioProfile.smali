.class public final enum Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
.super Ljava/lang/Enum;
.source "Mp4EsdsBox.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CELP:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HILN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HVXC:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum LOW_COMPLEXITY:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN_SYNTHESIS:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum SCALEABLE:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TTSI:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TWIN_VQ:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_LC:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_MAIN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum WAVETABLE:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 268
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    const-string v3, "Main"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 269
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "LOW_COMPLEXITY"

    const-string v2, "Low Complexity"

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 270
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "SCALEABLE"

    const-string v2, "Scaleable Sample rate"

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 271
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "T_F"

    const-string v2, "T/F"

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 272
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "T_F_MAIN"

    const-string v2, "T/F Main"

    invoke-direct {v0, v1, v8, v9, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 273
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "T_F_LC"

    const/4 v2, 0x6

    const-string v3, "T/F LC"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 274
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "TWIN_VQ"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "TWIN"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 275
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "CELP"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "CELP"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 276
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "HVXC"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "HVXC"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 277
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "HILN"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "HILN"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 278
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "TTSI"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "TTSI"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 279
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "MAIN_SYNTHESIS"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "MAIN_SYNTHESIS"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 280
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "WAVETABLE"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "WAVETABLE"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 266
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v7

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v8

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 291
    iput p3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    .line 292
    iput-object p4, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    return v0
.end method
