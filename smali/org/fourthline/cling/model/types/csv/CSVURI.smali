.class public Lorg/fourthline/cling/model/types/csv/CSVURI;
.super Lorg/fourthline/cling/model/types/csv/CSV;
.source "CSVURI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/types/csv/CSV",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/fourthline/cling/model/types/csv/CSV;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/types/csv/CSV;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
