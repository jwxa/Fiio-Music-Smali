.class public final Le/j;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Le/i;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Le/i;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Le/j;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/i;-><init>(Ljava/util/Set;Le/a/h/b;)V

    return-object v0
.end method
