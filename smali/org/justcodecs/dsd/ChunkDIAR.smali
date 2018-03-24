.class public Lorg/justcodecs/dsd/ChunkDIAR;
.super Lorg/justcodecs/dsd/TextChunk;
.source "ChunkDIAR.java"


# instance fields
.field public artist:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/justcodecs/dsd/TextChunk;-><init>()V

    return-void
.end method


# virtual methods
.method setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lorg/justcodecs/dsd/ChunkDIAR;->artist:Ljava/lang/String;

    .line 9
    return-void
.end method
