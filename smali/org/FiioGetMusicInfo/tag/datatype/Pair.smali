.class public Lorg/FiioGetMusicInfo/tag/datatype/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->setKey(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->setValue(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->key:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->value:Ljava/lang/String;

    .line 35
    return-void
.end method
